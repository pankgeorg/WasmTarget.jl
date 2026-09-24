using Test

# A partial `%new` leaves fields out. Julia leaves a missing reference field undefined and a
# missing isbits field holding unspecified bits. WasmGC has no uninitialized slot, so each
# missing field takes the default of its physical type: null for a reference, zero for a
# numeric. A missing numeric reads as zero, one of the values Julia permits. A missing
# reference traps when dereferenced: Julia throws `UndefRefError` for a reference field, but
# an isbits struct field is inline storage in Julia and reads as unspecified bits there,
# while here it is a nullable reference to the nested struct and traps instead.

_wt_ref_f64_read()::Float64 = Ref{Float64}()[]
function _wt_ref_f64_write_read(x::Float64)::Float64
    r = Ref{Float64}()
    r[] = x
    return r[] * 2
end

# An immutable partial `new` followed by `getfield`.
struct _WTUndef{T}
    value::T
    _WTUndef{T}() where {T} = new{T}()
end
_wt_undef_value(::Type{T}) where {T} = _WTUndef{T}().value
_wt_undef_f64()::Float64 = _wt_undef_value(Float64)
_wt_undef_i64()::Int64 = _wt_undef_value(Int64)
_wt_undef_bool()::Bool = _wt_undef_value(Bool)
function _wt_undef_select(flag::Bool, x::Float64)::Float64
    v = flag ? x : _wt_undef_value(Float64)
    return flag ? v : -1.0
end

# Mixed numeric fields; the object reaches two callees, so no single-use proof applies.
mutable struct _WTMixed
    a::Float64
    b::Int64
    c::Bool
    _WTMixed() = new()
end
@noinline function _wt_mixed_fill!(m::_WTMixed, x::Float64)
    m.a = x
    m.b = 3
    m.c = x > 0
    return nothing
end
@noinline _wt_mixed_read(m::_WTMixed)::Float64 = m.a * m.b + (m.c ? 1.0 : 0.0)
function _wt_mixed_two_invokes(x::Float64)::Float64
    m = _WTMixed()
    _wt_mixed_fill!(m, x)
    return _wt_mixed_read(m)
end
_wt_mixed_read_first()::Float64 = _wt_mixed_read(_WTMixed())

# isbits struct fields are nullable references to the nested struct.
struct _WTPair
    a::Float64
    b::Int64
end
mutable struct _WTAgg
    z::Complex{Float64}
    p::_WTPair
    n::Int64
    _WTAgg() = new()
end
function _wt_agg_write_read(x::Float64)::Float64
    w = _WTAgg()
    w.z = Complex(x, 2x)
    w.p = _WTPair(x, 4)
    w.n = 5
    return real(w.z) + imag(w.z) + w.p.a + w.p.b + w.n
end
_wt_agg_read_first()::Float64 = _WTAgg().p.a
function _wt_undef_struct_select(flag::Bool, x::Float64)::Float64
    v = flag ? _WTPair(x, 1) : _wt_undef_value(_WTPair)
    return flag ? v.a : -1.0
end

function _wt_compile_valid(f, args...)
    bytes = WasmTarget.compile(f, Tuple(map(typeof, args)))
    @test validate_wasm(bytes)
    if Sys.which("wasm-tools") !== nothing
        mktempdir() do dir
            path = joinpath(dir, string(nameof(f), ".wasm"))
            write(path, bytes)
            @test success(pipeline(`wasm-tools validate -f all $path`; stderr=devnull))
        end
    end
    return bytes
end
_wt_run(f, args...) = run_wasm(_wt_compile_valid(f, args...), string(nameof(f)), args...)

@testset "partial new fills missing fields with physical defaults" begin
    @test _wt_run(_wt_ref_f64_read) == 0.0
    @test compare_julia_wasm(_wt_ref_f64_write_read, 1.5).pass

    @test _wt_run(_wt_undef_f64) == 0.0
    @test _wt_run(_wt_undef_i64) == 0
    @test _wt_run(_wt_undef_bool) == 0  # Bool is an i32 slot
    @test compare_julia_wasm(_wt_undef_select, true, 2.0).pass
    @test compare_julia_wasm(_wt_undef_select, false, 2.0).pass

    @test compare_julia_wasm(_wt_mixed_two_invokes, 2.0).pass
    @test compare_julia_wasm(_wt_mixed_two_invokes, -2.0).pass
    @test _wt_run(_wt_mixed_read_first) == 0.0

    @test compare_julia_wasm(_wt_agg_write_read, 1.0).pass
    @test compare_julia_wasm(_wt_undef_struct_select, true, 3.0).pass
    @test compare_julia_wasm(_wt_undef_struct_select, false, 3.0).pass
    # The missing reference is null until written; dereferencing it traps.
    @test_throws ErrorException _wt_run(_wt_agg_read_first)
end
