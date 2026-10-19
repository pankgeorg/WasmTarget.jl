# ============================================================================
# options.jl — the debug surface, consolidated.
#
# parity(translator.dart:48-89 TranslatorOptions): dart2wasm reads its debug
# switches ONCE into a typed options object built at the entry point and
# threaded through the translator (`printKernel`, `printWasm`, `verbose`,
# `verifyTypeChecks`, `watchPoints: List<int>`). WasmTarget instead had 17
# scattered `ENV["WT_..."]` reads across src/. This file is the single typed
# replacement: one struct, one env-parsing function, read once by the compile's entry
# into its Translator — read from there, ENV read from nowhere else.
# ============================================================================

"""
    CompilerOptions

parity(translator.dart:48-89 `TranslatorOptions`). The debug/trace switches
that used to be scattered `ENV["WT_..."]` reads across src/, consolidated into
one typed struct. `trace` is the analogue of dart's `watchPoints: List<int>` —
a set of named trace points, checked with [`tracing`](@ref).
"""
Base.@kwdef struct CompilerOptions
    debug_fn::String = ""
    builder_trace::Bool = false
    audit_value_stack::Bool = false
    log_registry::Bool = false
    trace::Set{Symbol} = Set{Symbol}()
end

"""
    options_from_env() -> CompilerOptions

The only place ENV is read for compiler debug switches. `WT_TRACE` is a
comma-separated list of trace points (`mm`, `strarg`, `closure`, `cc`,
`stubargs`, `condstub`, `deadval`) replacing the eight ad-hoc
`WT_TRACE_*`/`WT_DBG_*` variables it consolidates.

parity(dart2wasm.dart:251 parseArguments): the options object is built once from the
invocation (dart's command line, WasmTarget's environment).
"""
function options_from_env()::CompilerOptions
    trace = Set{Symbol}(Symbol(s) for s in split(get(ENV, "WT_TRACE", ""), ',') if !isempty(s))
    return CompilerOptions(;
        debug_fn=get(ENV, "WT_DBG_FN", ""),
        builder_trace=haskey(ENV, "WT_BUILDER_TRACE"),
        audit_value_stack=get(ENV, "WT_AUDIT_VALUE_STACK", "") == "1",
        log_registry=get(ENV, "WT_LOG_REGISTRY", "") == "1",
        trace=trace,
    )
end

# ============================================================================
# WT_TIMING=1 — phase timing of one compile, printed to stderr: wall time, Julia's own
# compile time (inference under the WasmInterpreter and native JIT of the compiler's
# specializations both count), and GC time, per phase. Off, every probe is one ENV read.
# ============================================================================

const _WT_TIMING_DEPTH = Ref(0)
const _WT_TIMING_ON = Ref{Union{Nothing,Bool}}(nothing)

function wt_timing()::Bool
    local on = _WT_TIMING_ON[]
    on === nothing || return on
    on = get(ENV, "WT_TIMING", "") == "1"
    _WT_TIMING_ON[] = on
    return on
end

mutable struct WtLap
    t::UInt64
    compile::UInt64
    recompile::UInt64
    gc::UInt64
end

function _wt_lap_now()::WtLap
    local c, r = Base.cumulative_compile_time_ns()
    return WtLap(time_ns(), c, r, Base.gc_time_ns())
end

function _wt_report(label::AbstractString, from::WtLap, depth::Int)
    local now = _wt_lap_now()
    local wall = (now.t - from.t) / 1e9
    local comp = (now.compile - from.compile) / 1e9
    local recomp = (now.recompile - from.recompile) / 1e9
    local gc = (now.gc - from.gc) / 1e9
    println(stderr, "[wt-timing] ", "  "^depth, rpad(label, 48 - 2 * depth), " ",
            lpad(string(round(wall; digits=3)), 8), " s  compile ",
            lpad(string(round(comp; digits=3)), 7), " s  (recompile ",
            string(round(recomp; digits=3)), " s)  gc ", string(round(gc; digits=3)), " s")
    return nothing
end

"""
    wt_phase(f, label) -> f()

Run `f` as one timed phase when `WT_TIMING=1`, else just call it. Nested phases indent.
"""
function wt_phase(f::Function, label::AbstractString)
    wt_timing() || return f()
    local depth = _WT_TIMING_DEPTH[]
    depth == 0 && Base.cumulative_compile_timing(true)
    local from = _wt_lap_now()
    _WT_TIMING_DEPTH[] = depth + 1
    try
        return f()
    finally
        _WT_TIMING_DEPTH[] = depth
        _wt_report(label, from, depth)
        depth == 0 && Base.cumulative_compile_timing(false)
    end
end

"""
    wt_lap() -> WtLap | nothing

A lap counter for timing stretches of one function body: `wt_lap!(lap, label)` prints the
time since the last lap (or the start) and restarts it. `nothing` when timing is off.
"""
wt_lap()::Union{Nothing,WtLap} = wt_timing() ? _wt_lap_now() : nothing

function wt_lap!(lap::Union{Nothing,WtLap}, label::AbstractString)::Nothing
    lap === nothing && return nothing
    _wt_report(label, lap, _WT_TIMING_DEPTH[])
    local now = _wt_lap_now()
    lap.t, lap.compile, lap.recompile, lap.gc = now.t, now.compile, now.recompile, now.gc
    return nothing
end

wt_note(msg::AbstractString)::Nothing = (wt_timing() && println(stderr, "[wt-timing] ", "  "^_WT_TIMING_DEPTH[], msg); nothing)

"""
    tracing(ctx, s::Symbol) -> Bool

Is trace point `s` active in the compile's options (its Translator's)? dart's `watchPoints`
analogue.
parity(pkg/dart2wasm/lib/compiler_options.dart:35 WasmCompilerOptions)
"""
tracing(ctx, s::Symbol)::Bool = s in ctx.translator.options.trace
