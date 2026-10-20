using Test
using WasmTarget

# A slot stub is an external leaf bound to a root of the same module: its callers are inferred
# against the stub's body, never the root's, so replacing the root's Code entry after emission
# changes what every call computes.

const _SS_BOUND = Ref{Any}(nothing)
@noinline _ss_stub(x::Float64)::Float64 = Float64(_SS_BOUND[](x))
@noinline _ss_count()::Int32 = Int32(_SS_BOUND[]())
_ss_caller(x::Float64)::Float64 = 2.0 * _ss_stub(x) + Float64(_ss_count())

_ss_wrong_args(x::Int64)::Float64 = Float64(x)
_ss_wrong_ret(x::Float64)::Int64 = Int64(1)

_ss_build() = WasmTarget.compile_multi(
    Any[(_ss_slot, (Float64,), "slot"), (_ss_count_slot, (), "count"), (_ss_caller, (Float64,), "caller")];
    slot_stubs = Any[(_ss_stub, (Float64,), Float64, "slot"), (_ss_count, (), Int32, "count")],
    validate = true)

# the same root functions with two sets of bodies: the builds share every function's type and name
_ss_slot(x::Float64)::Float64 = x + 1.0
_ss_count_slot()::Int32 = Int32(0)
const _SS_A = _ss_build()
_ss_slot(x::Float64)::Float64 = 10.0 * x
_ss_count_slot()::Int32 = Int32(5)
const _SS_B = Base.invokelatest(_ss_build)

function _ss_leb(b::Vector{UInt8}, i::Int)
    r = 0; s = 0
    while true
        x = b[i]; i += 1
        r |= Int(x & 0x7f) << s
        x & 0x80 == 0 && return r, i
        s += 7
    end
end

# the Code section's entries as byte ranges (the bytes after the module header)
function _ss_code_entries(b::Vector{UInt8})
    i = 9
    while i <= length(b)
        id = b[i]
        size, p = _ss_leb(b, i + 1)
        if id == 0x0a
            n, q = _ss_leb(b, p)
            entries = UnitRange{Int}[]
            for _ in 1:n
                sz, body = _ss_leb(b, q)
                push!(entries, q:body + sz - 1)
                q = body + sz
            end
            return (; section = i:p + size - 1, payload = p, entries)
        end
        i = p + size
    end
    error("no Code section")
end

function _ss_uleb(n::Int)
    out = UInt8[]
    while true
        x = UInt8(n & 0x7f); n >>= 7
        n == 0 && (push!(out, x); return out)
        push!(out, x | 0x80)
    end
end

# `into` with its Code entries at `ordinals` replaced by `from`'s
function _ss_patch(into::Vector{UInt8}, from::Vector{UInt8}, ordinals)
    ci, cf = _ss_code_entries(into), _ss_code_entries(from)
    payload = vcat(_ss_uleb(length(ci.entries)),
                   (k - 1 in ordinals ? from[cf.entries[k]] : into[ci.entries[k]] for k in eachindex(ci.entries))...)
    return vcat(into[1:first(ci.section) - 1], UInt8[0x0a], _ss_uleb(length(payload)), payload,
                into[last(ci.section) + 1:end])
end

@testset "slot stubs" begin
    a, b = _SS_A, _SS_B
    @test run_wasm(a, "caller", 3.0) == 8.0      # 2(3 + 1) + 0
    @test run_wasm(b, "caller", 3.0) == 65.0     # 2(10·3) + 5

    # the two builds differ only inside Code entries, and replacing those entries of `a` by
    # `b`'s gives `b`'s behaviour: nothing about a slot body reached its caller
    ca, cb = _ss_code_entries(a), _ss_code_entries(b)
    @test a[1:first(ca.section) - 1] == b[1:first(cb.section) - 1]
    @test length(ca.entries) == length(cb.entries)
    differ = [k - 1 for k in eachindex(ca.entries) if a[ca.entries[k]] != b[cb.entries[k]]]
    @test length(differ) == 2
    patched = _ss_patch(a, b, differ)
    @test run_wasm(patched, "caller", 3.0) == 65.0
    only_count = _ss_patch(a, b, differ[[findfirst(k -> run_wasm(_ss_patch(a, b, [k]), "caller", 3.0) == 13.0, differ)]])
    @test run_wasm(only_count, "caller", 3.0) == 13.0   # 2(3 + 1) + 5

    # refusals: the root must take the stub's arguments and return its declared type, exist,
    # and the stub binds once
    entries(slot, at) = Any[(_ss_caller, (Float64,), "caller"), (slot, at, "slot"), (_ss_count_slot, (), "count")]
    count_stub = (_ss_count, (), Int32, "count")
    @test_throws ArgumentError WasmTarget.compile_multi(entries(_ss_wrong_args, (Int64,));
        slot_stubs = Any[(_ss_stub, (Float64,), Float64, "slot"), count_stub])
    @test_throws ArgumentError WasmTarget.compile_multi(entries(_ss_wrong_ret, (Float64,));
        slot_stubs = Any[(_ss_stub, (Float64,), Float64, "slot"), count_stub])
    @test_throws ArgumentError WasmTarget.compile_multi(entries(_ss_slot, (Float64,));
        slot_stubs = Any[(_ss_stub, (Float64,), Float64, "missing"), count_stub])
    @test_throws ArgumentError WasmTarget.compile_multi(entries(_ss_slot, (Float64,));
        slot_stubs = Any[(_ss_stub, (Float64,), Float64, "slot"), (_ss_stub, (Float64,), Float64, "slot"), count_stub])
end
