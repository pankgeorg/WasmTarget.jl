# Changelog

## [0.5.4](https://github.com/pankgeorg/WasmTarget.jl/compare/v0.5.3...v0.5.4) (2026-10-23)


### Features

* **builder:** every body is a builder the module made; locals initialized before use; module objects held by handle ([3ceb206](https://github.com/pankgeorg/WasmTarget.jl/commit/3ceb206502e50255bb7aa58391921fdd452e094d))
* **builder:** every instruction typed as dart types it; the fast lane on CI's runners ([3f062ec](https://github.com/pankgeorg/WasmTarget.jl/commit/3f062ec806bac4d23713367a7b4f5e607e7ee17c))
* **collect:** a constant callee is its object, resolved once at the boundary; one as-checker per target and static type ([5fab828](https://github.com/pankgeorg/WasmTarget.jl/commit/5fab8286342da4a3cac0db80f91407dc989b05f6))
* **collect:** one class set, one match rule, one walk of the edges; every reason recorded by the collection ([b5f5175](https://github.com/pankgeorg/WasmTarget.jl/commit/b5f5175c2ad6c4b4a68e9f20f261768bec2266e3))
* constant evaluation by rule, not by list (Phase 12 C) — and the three gaps the rule exposed ([9f34650](https://github.com/pankgeorg/WasmTarget.jl/commit/9f34650b78645d3bd4b70cbd289f932408a4593b))
* declare the framework-host builder surface public ([c47ad5b](https://github.com/pankgeorg/WasmTarget.jl/commit/c47ad5b43453b146cd1400b65a7d0501ac3c5b35))
* **diagnostics:** a codegen bug names the compiler line it was raised at (dart CFECrashError.stackTrace) ([c5b39d6](https://github.com/pankgeorg/WasmTarget.jl/commit/c5b39d66953634a598e9e4de16d82b415e0afaf1))
* **emission:** one CFG, Julia's own: the stackifier, the trampolines, both proofs and the stub reset read nir_cfg ([ae8f71e](https://github.com/pankgeorg/WasmTarget.jl/commit/ae8f71ee1cb6e741ff50be731eea961b8a0d512c))
* **emission:** one conversion and one type test per construct; the widening checked once, in the funnel ([5abb4b1](https://github.com/pankgeorg/WasmTarget.jl/commit/5abb4b1b587a56275ab4dc8e913c374971e754c4))
* **emission:** one table per construct: one operator and conversion table, one width rule, one operand table, one loop bounds ([baae275](https://github.com/pankgeorg/WasmTarget.jl/commit/baae2757e514d8d27288d0dd15ea67a1299d7c50))
* **formal:** model the closure layouter (ClosureLayout.tla) ([7a46307](https://github.com/pankgeorg/WasmTarget.jl/commit/7a463076375c2ec177060b0d84f1d2a4046c9cf7))
* **formal:** TLA+ model of constant interning (dev/formal/Constants.tla) ([0bc275e](https://github.com/pankgeorg/WasmTarget.jl/commit/0bc275e366081d3fffd4a70ba04dd76ac6e28b8d))
* host-boundary type translator and import-stub signature check ([be4ed53](https://github.com/pankgeorg/WasmTarget.jl/commit/be4ed53e53afa1543d4533b9f79fdf38e0e3bd66))
* **interpreter:** objectid of an immutable is Julia's jl_object_id_ ([96adbf6](https://github.com/pankgeorg/WasmTarget.jl/commit/96adbf602ff264e6ba77671242c6248bd655da3e))
* lower throw_undef_if_not to the exact UndefVarError (a NIR node), never a skipped check ([fa576cf](https://github.com/pankgeorg/WasmTarget.jl/commit/fa576cf31299659cfa1464013a8a4ea64e58572f))
* **memoryref:** a MemoryRef crossing a call is its single-value struct, offset included ([39e6d51](https://github.com/pankgeorg/WasmTarget.jl/commit/39e6d516700c30f3cd6fbde1b7a8af5019abd1ed))
* **memoryref:** a MemoryRef read from a struct, closure or tuple field unpacks into its pair ([2d3b24a](https://github.com/pankgeorg/WasmTarget.jl/commit/2d3b24af3dec4cbf13a46d998533489ff4ae49d2))
* **memoryref:** Vector growth runs Julia's own bodies; the reallocating overlays go ([3c62fcc](https://github.com/pankgeorg/WasmTarget.jl/commit/3c62fcc7c1677a86bf65aa50d88a72c85126b712))
* native sidecar prototype — a linear-memory module linked by the host, with its ownership protocol model-checked ([3a635bb](https://github.com/pankgeorg/WasmTarget.jl/commit/3a635bb9efc6efdc4fa6e716e840256dd4194739))
* one inference path (L120) and the inner loop as one command (dev/lanes.sh) — Phase 12 A and J ([2efdf7c](https://github.com/pankgeorg/WasmTarget.jl/commit/2efdf7ca6d4453a44c90de826284c7f5eb10c795))
* **owner:** one owner of a compile's state: R40 at 0, locked; a host's module checked before collection ([52c0a9b](https://github.com/pankgeorg/WasmTarget.jl/commit/52c0a9bded79b41f1d0b4d286688e5ad60fafaa9))
* **plan:** the plan is the one consult; an :invoke calls its MethodInstance's function ([685c1b9](https://github.com/pankgeorg/WasmTarget.jl/commit/685c1b93ce30827e89002853c80ad8e883166505))
* **provenance:** a closed-world collection failure names its method and why it was enrolled ([754a7f1](https://github.com/pankgeorg/WasmTarget.jl/commit/754a7f1c5ab51deb44fe361f598fa423bafa49e4))
* **provenance:** a wrong answer names the first statement whose value differs ([40a0043](https://github.com/pankgeorg/WasmTarget.jl/commit/40a0043750bd51d4c0dfa387db5277bb012daec4))
* **provenance:** a wrong value is located in whichever compiled function it first appears ([7acc21c](https://github.com/pankgeorg/WasmTarget.jl/commit/7acc21c9d69d39653a3ecf3f70cc5c33934b10c2))
* **provenance:** an escape names its type, the lane strict on throws, the locator follows every closure, the gate has a budget; audit [#14](https://github.com/pankgeorg/WasmTarget.jl/issues/14) ([92527cc](https://github.com/pankgeorg/WasmTarget.jl/commit/92527cc1fc10638d8a3a8a6d293784c1475d94e3))
* **provenance:** an escaped Julia exception names its throw site; the statement lane is seeded and strict ([b31a4e2](https://github.com/pankgeorg/WasmTarget.jl/commit/b31a4e27cffd9ae7a7752cf839b5ba512799e4e3))
* **provenance:** every function named, one compile entry, every byte of a Julia function mapped ([f071e55](https://github.com/pankgeorg/WasmTarget.jl/commit/f071e55a63d10d136cfdb572c81e57740e0174f9))
* **provenance:** one module shape; a throw carries its stack and a rethrow the caught one ([57eaf3a](https://github.com/pankgeorg/WasmTarget.jl/commit/57eaf3ab9a96902317f43f5f79198339c7c4314a))
* **provenance:** source maps as dart2wasm builds them; a trap names each frame's Julia statement ([ae0a8fd](https://github.com/pankgeorg/WasmTarget.jl/commit/ae0a8fd7a60fcfbdbd5051ec789e9a4f874cd048))
* **ratchet:** R35 counts docstrings attached to nothing ([e341dca](https://github.com/pankgeorg/WasmTarget.jl/commit/e341dcacfc2ad2616016dbd08d7cb0f8047e9692))
* **ratchet:** R36 counts known failures hidden behind skipped tests ([020547f](https://github.com/pankgeorg/WasmTarget.jl/commit/020547f5cde0db316c3e4c3a96f168ae8dfae295))
* **storage:** StorageRef model; Julia's ptr_or_offset stride; atomic_pointerset unsets a slot ([0c87677](https://github.com/pankgeorg/WasmTarget.jl/commit/0c87677e97b76351ad9bc08b812e1c619a965712))
* strictness ratchets R30/R31 (Phase 12 item I) + annotate their floor ([5f06923](https://github.com/pankgeorg/WasmTarget.jl/commit/5f06923af8223479117935b1718e45cebd63f838))
* the normalized IR boundary — src/frontend/nir.jl, seeded as the R29 migration ([962f61f](https://github.com/pankgeorg/WasmTarget.jl/commit/962f61f1a08b4930bc180d3d98804c15e44214bd))
* **types:** a TypeVar is a constant object with its name and bounds ([46b2484](https://github.com/pankgeorg/WasmTarget.jl/commit/46b24844e79fdeb7a5374e3ffc8908cf7eaa5149))
* **types:** one reader of what a node is; codegen asks no inference; a global resolved once ([0218bff](https://github.com/pankgeorg/WasmTarget.jl/commit/0218bffa74d841a7193eee52f3f803f09ed84ccf))
* **types:** UnionAll(v, t) is Julia's jl_type_unionall, over a ported jl_has_typevar ([941caed](https://github.com/pankgeorg/WasmTarget.jl/commit/941caedafdbbb00f79047d1111b6c22a3c312a7b))


### Bug Fixes

* a backward always-taken boundscheck jump is realized as its loop br; the diagnostics docstring states the rule the code enforces ([e6e3ee0](https://github.com/pankgeorg/WasmTarget.jl/commit/e6e3ee01743f52191ead4636ac8bd3d6d619c1ac))
* a closure's vtable shape is read from its global, never re-derived per call ([ee68fa0](https://github.com/pankgeorg/WasmTarget.jl/commit/ee68fa06d743bb8da77035b908dfe88e7673b1f4))
* a dispatching vtable entry tests a Type{X} parameter by type-object identity ([e506a39](https://github.com/pankgeorg/WasmTarget.jl/commit/e506a39ee4c7331c2d0a9dd92758a54832fa5586))
* a receiver tuple with no method traps through the one selector table; lazy class ids reach isa — the ClassIdDispatch model's two findings, closed spec-first ([70f1304](https://github.com/pankgeorg/WasmTarget.jl/commit/70f130478e55405b09e8e363dbac5e30b2a3d17f))
* an unoccupied Dict slot takes its physical type's default, not a Julia zero ([365c1e4](https://github.com/pankgeorg/WasmTarget.jl/commit/365c1e413b280a5041ddf7b7735bba537e2bfc01))
* **api:** validator launch failures and precompile-workload failures propagate ([06c792b](https://github.com/pankgeorg/WasmTarget.jl/commit/06c792b02b19dbf50230574c31eb2f9acafa2384))
* **arith:** an operand held as any value is no longer unboxed at the operator's width; it rejects ([b62cc65](https://github.com/pankgeorg/WasmTarget.jl/commit/b62cc6567cbf0c6707540261123eb5190758827b))
* array.len widens to Julia's Int unsigned; the remaining index narrowings use the one length bridge (R3 80→79, R7 42→35, R27 39→32) ([d325240](https://github.com/pankgeorg/WasmTarget.jl/commit/d3252400df4e76fa3dd8b99f56a85134d4c1b4cf))
* **array:** an Array stores its :ref's element offset ([1843e8a](https://github.com/pankgeorg/WasmTarget.jl/commit/1843e8afea0fdace2191105dbd867b7b0e18929c))
* **arrays:** a SimpleVector is dart's immutable array; an embedded callee is its function ([f3791ce](https://github.com/pankgeorg/WasmTarget.jl/commit/f3791ced5aaa67a210fa367e01610eef4e883d64))
* **arrays:** a String's CodeUnits is a bare array beside Memory{UInt8}, so a class read over both rejects ([18a2573](https://github.com/pankgeorg/WasmTarget.jl/commit/18a257344c8e1ace13c535816feab90cd05cbda6))
* **audit #12:** what batches 104-108 broke; the gate runs CI's wasm engine; audit [#12](https://github.com/pankgeorg/WasmTarget.jl/issues/12) ([c7f0c25](https://github.com/pankgeorg/WasmTarget.jl/commit/c7f0c2503151bc62f7b90605454a3364b0bd8498))
* **audit #13:** what batches 109-111 broke; A13E1 re-opened and modeled; every host-import call counted ([f36d346](https://github.com/pankgeorg/WasmTarget.jl/commit/f36d346dec8a15cb79fe0e2be9b3acbea14b9336))
* **audit:** audit [#16](https://github.com/pankgeorg/WasmTarget.jl/issues/16): one widening rule, conversion targets resolved once, nothing null at every reference, retargets recomputed per round ([fece20c](https://github.com/pankgeorg/WasmTarget.jl/commit/fece20cbe677a03c0c3e89a8422694ecfc9c3cd2))
* **audit:** the first anti-drift audit; the closed world is a value, the builder knows no Julia ([ed7f232](https://github.com/pankgeorg/WasmTarget.jl/commit/ed7f232398417329e41f9743b2078102995519f0))
* binaries are identical across architectures — registries walk in program order, the type hash is program-derived (L117) ([65b491a](https://github.com/pankgeorg/WasmTarget.jl/commit/65b491ab9acbb32c7ced4fc308648d3b7dd87bd4))
* **box_capture:** f3_box_value_types types a phi only when an operand is box-derived ([5c67589](https://github.com/pankgeorg/WasmTarget.jl/commit/5c675893fd52535ba718b8be55f0a4fab0003723))
* **box_capture:** SSA type reads and closure-body inference propagate failures ([bdb817f](https://github.com/pankgeorg/WasmTarget.jl/commit/bdb817f4d5805127b4d24df24733a52fdba7d3e3))
* **box_capture:** the numeric-join and box-value analyses pass their models ([2e07e7f](https://github.com/pankgeorg/WasmTarget.jl/commit/2e07e7fb5cd881883864013024149a5f2ff2f5d8))
* box-capture joins infer through the one path; L120 covers every native inference entry ([e8f47ec](https://github.com/pankgeorg/WasmTarget.jl/commit/e8f47ec51b8dd1a459369bb494365befa5ec77f4))
* box-capture write discovery recurses into nested closures ([12a06f1](https://github.com/pankgeorg/WasmTarget.jl/commit/12a06f1c8ee71ad601ccbf61f49d4f490b3778ed))
* **box:** a captor body the lookup does not hold erases the box, never narrows it ([406c741](https://github.com/pankgeorg/WasmTarget.jl/commit/406c7413db2dfb9bb8ff7003f653e98445b8dddc))
* **builder,fuzz:** branches check what they carry (dart _verifyBranchTypes); 20 unused emitters go; SimpleDiffEq's muladd allowance is verified (R32 411 -&gt; 389) ([5945f72](https://github.com/pankgeorg/WasmTarget.jl/commit/5945f7272cc263fb566fbd45b0d39fec7399db02))
* **builder:** a block's type is derived from its signature; every branch is checked by one rule ([9366d55](https://github.com/pankgeorg/WasmTarget.jl/commit/9366d55b4812d47676d80d310697056d2ec480dd))
* **builder:** a recursion group equal to one in the section is that group, so an index is a runtime type ([5a3e160](https://github.com/pankgeorg/WasmTarget.jl/commit/5a3e1604ae28f780e7a3fd0ec95e05f98aea04f6))
* **builder:** a recursion group is one component, checked when added and when written; tests and prose ([e1d9def](https://github.com/pankgeorg/WasmTarget.jl/commit/e1d9defb780b24301985d7b12e4c45066ad3b3e0))
* **builder:** an if's then-branch values are typed against the if's results at else ([7855419](https://github.com/pankgeorg/WasmTarget.jl/commit/78554190cd3cdbcc51a428e3e3d7b4dec079a180))
* **builder:** every operand is typed as dart types it; every codegen builder has its module ([5e45b07](https://github.com/pankgeorg/WasmTarget.jl/commit/5e45b071d52ac968bd8cda74b2c4f2914d88d19c))
* **builder:** no instruction recorded in dead code, one local declaration path; the host's catch modeled; audit [#15](https://github.com/pankgeorg/WasmTarget.jl/issues/15) ([5eacce3](https://github.com/pankgeorg/WasmTarget.jl/commit/5eacce30daf26b82f88c3ba2ad86ef792ee6425f))
* **builder:** value types are written as dart writes them; a block type through the one writer ([78eb357](https://github.com/pankgeorg/WasmTarget.jl/commit/78eb35732a42d4a536ba7086ce2e08d0de016d0b))
* **builtins:** Julia's methods answer Symbol and ncodeunits; C6 closes ([0c4e0b7](https://github.com/pankgeorg/WasmTarget.jl/commit/0c4e0b764a444701487db117323871326fe76e14))
* **builtins:** memoryrefset! never replaces a stored value with a null or a zero ([d8fc967](https://github.com/pankgeorg/WasmTarget.jl/commit/d8fc967cf0963be3386b7eb85c7267f7dbd13d90))
* **builtins:** the operator fallback takes its opcode from the operands' own type, or rejects ([0d1ac47](https://github.com/pankgeorg/WasmTarget.jl/commit/0d1ac47ff9bcc2fecdf25549236534bb8a3751ae))
* **builtins:** typeof of a value that may be nothing is Nothing on the null ref ([a0848dc](https://github.com/pankgeorg/WasmTarget.jl/commit/a0848dc2ff16b3250cbe2ec13ce658154598294d))
* **calls:** a call binds only to the specialization Julia selects ([afb6cf7](https://github.com/pankgeorg/WasmTarget.jl/commit/afb6cf7a8face83021c804494ce94ddb1a30fd88))
* **calls:** a dynamic == over two erased operands rejects; it no longer assumes Int64 ([23cdab0](https://github.com/pankgeorg/WasmTarget.jl/commit/23cdab07301404bc08fd3c98e39668f3f6ae51bc))
* **calls:** isa is a test or Julia's own answer, never a constant ([7cd2a69](https://github.com/pankgeorg/WasmTarget.jl/commit/7cd2a69a3d61d67b744b3261414c6dbe85cd7f8e))
* **calls:** one storage-pointer offset for every pointer load and store ([05534b2](https://github.com/pankgeorg/WasmTarget.jl/commit/05534b2393cdbd9ed83667a13c89b86bd2daa815))
* **capture:** a captured variable is typed by every write into its box, never guessed (CaptureType; L131 3 -&gt; 2) ([6e71fc2](https://github.com/pankgeorg/WasmTarget.jl/commit/6e71fc2cf3e0ebba052d35a5d98a5949ea069402))
* Char case mapping and classes compile Julia's own bodies; utf8proc's case records lower the foreigncalls ([339c1fe](https://github.com/pankgeorg/WasmTarget.jl/commit/339c1fe0c961675ad3233f952b389a975b0b7eb3))
* checked_{s,u}{add,sub,mul}_int return Julia's Tuple{T,Bool} for the operand type T ([7f78648](https://github.com/pankgeorg/WasmTarget.jl/commit/7f78648bd6d1230e654639bbd3523d79efa4f658))
* **closures, collect:** audit [#11](https://github.com/pankgeorg/WasmTarget.jl/issues/11)'s wrong answers and traps; the gate runs two shards; audit [#11](https://github.com/pankgeorg/WasmTarget.jl/issues/11) ([f955d78](https://github.com/pankgeorg/WasmTarget.jl/commit/f955d78e27e4d385201832835919ca15d24ccc99))
* **closures:** a closure passed to an erased closure call reaches its body (A7S1 stage 4) ([25b8d02](https://github.com/pankgeorg/WasmTarget.jl/commit/25b8d024e8243f77c3447a85ee72e34f1a90eec1))
* **closures:** every vtable entry returns anyref; Nothing bodies yield null ([935b433](https://github.com/pankgeorg/WasmTarget.jl/commit/935b433a438a82d11a70ee11cfac0ec32b6fa836))
* **codegen:** a runtime-name getfield answers as Julia or rejects with why; a runtime index is an integer ([6347142](https://github.com/pankgeorg/WasmTarget.jl/commit/63471428197fd00a8663fc2852494ff0a2637a14))
* **collect:** a dynamic call enrolls the methods Julia selects, tried most specific first; audit [#5](https://github.com/pankgeorg/WasmTarget.jl/issues/5) ([734e98e](https://github.com/pankgeorg/WasmTarget.jl/commit/734e98ef3f2730ce6d9558c7badade82ea06241c))
* **collect:** a dynamic call reaches every class that may be its argument ([86e251b](https://github.com/pankgeorg/WasmTarget.jl/commit/86e251be4dad1caf6a3e3acc2b7c82cc58c76a5c))
* **collect:** a parametric method is rowed at each observed tuple, and ambiguity is Julia's per class; audit [#7](https://github.com/pankgeorg/WasmTarget.jl/issues/7) ([ad7f27a](https://github.com/pankgeorg/WasmTarget.jl/commit/ad7f27a3bcb760a5c78a98cf8eff7538124983fb))
* **collect:** a position's candidates include its dispatch type, so a Type{X} argument is asked about; audit [#8](https://github.com/pankgeorg/WasmTarget.jl/issues/8) ([5048e94](https://github.com/pankgeorg/WasmTarget.jl/commit/5048e94302d77271ca57c963ef851d4f1982c862))
* **collect:** a superseded invoke keeps its body while another site calls it ([e8e77e9](https://github.com/pankgeorg/WasmTarget.jl/commit/e8e77e9c8f845cf926dd8286f19f4936b6781b65))
* **collect:** a type object the program holds is a candidate wherever it may reach; packed reads; audit [#9](https://github.com/pankgeorg/WasmTarget.jl/issues/9) ([0fc625f](https://github.com/pankgeorg/WasmTarget.jl/commit/0fc625f19b40ae7b7dc48506cdc3be46a051242e))
* **collect:** an invoked functor's call body is planned and takes its object first ([4c9fc81](https://github.com/pankgeorg/WasmTarget.jl/commit/4c9fc8194f7bd5befdd036ac5574d0c7766b87e5))
* **collect:** invoke_in_world's callee survives the trim; one hidden-call edge relation (R33 6 -&gt; 5) ([e226aab](https://github.com/pankgeorg/WasmTarget.jl/commit/e226aab70a455e905b61ec211e8c052589a0c115))
* **collect:** rows are Julia's selection, by method specificity, and an ambiguity rejects; audit [#6](https://github.com/pankgeorg/WasmTarget.jl/issues/6) ([021b67e](https://github.com/pankgeorg/WasmTarget.jl/commit/021b67e0d1d32022a1964b71a3842e6db65e62b3))
* commit the sidecar's daxpy.wat — *.wat was gitignored, so the prototype's module never landed ([eabd927](https://github.com/pankgeorg/WasmTarget.jl/commit/eabd9274b7f373958272341403736845a814a456))
* **compile:** every host import precedes the defined functions; the host seeds rand() ([de2151b](https://github.com/pankgeorg/WasmTarget.jl/commit/de2151bdce701486411404b070e3db947134d828))
* **constants:** a constant is interned by ===, never by isequal (L141); Random's own hash_seed compiles ([86546c0](https://github.com/pankgeorg/WasmTarget.jl/commit/86546c0701e9f37250140d92d00c04694d86cd4d))
* **context:** a call Julia typed Any keeps Julia's type ([5145bae](https://github.com/pankgeorg/WasmTarget.jl/commit/5145bae76e7ab73e0281b9123497b109569aa356))
* **context:** a megamorphic call's result is Julia's answer without max_methods ([6495f1d](https://github.com/pankgeorg/WasmTarget.jl/commit/6495f1d6994a24959f1567a565c3f81ba0a4b4db))
* **context:** an unused invoke's result is its MethodInstance's inferred type ([b9e8239](https://github.com/pankgeorg/WasmTarget.jl/commit/b9e8239a327e4436d39d5bd55bef7b779020c2f9))
* copy(::Dict{String,V}) and every reference-element Memory copy — the type predicates fold, the element stride is one rule ([cfa2db3](https://github.com/pankgeorg/WasmTarget.jl/commit/cfa2db3f88002422c16a4fec6773595fe70076a5))
* Core.getproperty IS Core.getfield — registering it clobbered the getfield entry ([ac1cdae](https://github.com/pankgeorg/WasmTarget.jl/commit/ac1cdaed31067f84672d96957fb3fa2aa1d923e0))
* dead code is what the folded CFG cannot reach — not the text between a boundscheck jump and its target ([1a5ccec](https://github.com/pankgeorg/WasmTarget.jl/commit/1a5ccec7ad2f6df5db6ed3ab7e7fc8253fc98220))
* **diagnostics:** a dynamic-call rejection names its callee module-qualified; smoke groups closed ([1166f10](https://github.com/pankgeorg/WasmTarget.jl/commit/1166f10d468d268466db4d257059f6dd67e628a5))
* **diagnostics:** attribution reads the NIR and its DebugInfo directly; no catch left ([b4b0f02](https://github.com/pankgeorg/WasmTarget.jl/commit/b4b0f02aef71e19a874543bedb2d46440e7f854f))
* Dict constants serialize only occupied slots; :new(Dict) keeps its arguments; array field reads register on demand ([b22210b](https://github.com/pankgeorg/WasmTarget.jl/commit/b22210b2dc4ae5e9708d719ef1281f9e44ba28b7))
* **dispatch:** a call with no method throws Julia's MethodError; the gate runs what CI runs ([623f19d](https://github.com/pankgeorg/WasmTarget.jl/commit/623f19dc78ec9019796dd2894a324ec8d5343f48))
* **dispatch:** an :invoke calls the method it names; Julia's collection bodies replace 22 overlays (R38 132 -&gt; 108, L139) ([e96eb89](https://github.com/pankgeorg/WasmTarget.jl/commit/e96eb8983763438d42722c2b096d77bfc673a2de))
* **dispatch:** an erased MemoryRef or Memory dispatches to its method ([e61258a](https://github.com/pankgeorg/WasmTarget.jl/commit/e61258a0c06c4e67c0a4135b9a44fe286517400a))
* **dispatch:** class reads over shared arrays reject, and a closure entry tests its arguments; audit [#4](https://github.com/pankgeorg/WasmTarget.jl/issues/4) ([ed6cf59](https://github.com/pankgeorg/WasmTarget.jl/commit/ed6cf59767bbafdfc4f908dce3df9a276c37f635))
* **docs:** docstrings re-attached, stale file citations removed, one false anchor withdrawn ([86d2a37](https://github.com/pankgeorg/WasmTarget.jl/commit/86d2a37e4fb439cc7a3c50db79cfbb7f493abc67))
* **docs:** three new docstrings re-attached to their definitions after the batch merge ([4422733](https://github.com/pankgeorg/WasmTarget.jl/commit/4422733a59bae519a3e3b773d9bd02b104e7630b))
* dynamic dispatch rows for boxed numerics and classed strings; singleton-function parameters resolve as callees (Phase 12 H(2)) ([25b3d45](https://github.com/pankgeorg/WasmTarget.jl/commit/25b3d45eca1999f16f3ca697381e0b878d465af8))
* **egal, collect, closures:** audit [#10](https://github.com/pankgeorg/WasmTarget.jl/issues/10)'s wrong answers and traps, models first; audit [#10](https://github.com/pankgeorg/WasmTarget.jl/issues/10) ([bed4dfc](https://github.com/pankgeorg/WasmTarget.jl/commit/bed4dfcd9e3a30f02ceda1f43644ec9a98953534))
* **egal:** `===` on closures compares their type and captures, whichever representation each is ([965b40b](https://github.com/pankgeorg/WasmTarget.jl/commit/965b40bb3671ddcca81244724d7a037cfc3fb6c1))
* **egal:** one `===` lowering — bits, fieldwise, content, identity — replaces two disagreeing ladders ([12d5c50](https://github.com/pankgeorg/WasmTarget.jl/commit/12d5c502e4bec020f15806ea9122eff507f8dcfb))
* **exceptions:** a MethodError is Julia's, and a typeassert checks every value; audit [#3](https://github.com/pankgeorg/WasmTarget.jl/issues/3) ([63a1c18](https://github.com/pankgeorg/WasmTarget.jl/commit/63a1c18cfbd60e66805e34c0b36db1057d4c94c4))
* **exceptions:** an exception escaping an export leaves Julia's stack as the call found it ([eb412a3](https://github.com/pankgeorg/WasmTarget.jl/commit/eb412a314bf94cc8eaac1e77593160721a2494a6))
* **exceptions:** Julia's exception stack — catch binds the top, pop_exception restores, rethrow(e) replaces ([56dfb03](https://github.com/pankgeorg/WasmTarget.jl/commit/56dfb03fbfb86daa922a345af2fa67d78d8284c9))
* **exceptions:** Julia's exception stack, modeled first ([9e0e72c](https://github.com/pankgeorg/WasmTarget.jl/commit/9e0e72c52b35380e770cea3d7a8200d00905b87c))
* **exceptions:** Julia's try regions in dart's legacy form, try and catch; try_table deleted ([bd40faf](https://github.com/pankgeorg/WasmTarget.jl/commit/bd40fafe477c8ce5df561422fc3109753f49e35e))
* **exceptions:** the export boundary is the host's glue; stack exhaustion and traps leave Julia's stack ([8ed4788](https://github.com/pankgeorg/WasmTarget.jl/commit/8ed478813acb61a409d0fd2ebc0ee270fdbcdafd))
* **exceptions:** the export boundary restores Julia's stack for every catchable escape ([ca9a96e](https://github.com/pankgeorg/WasmTarget.jl/commit/ca9a96ea84bf150595a1810171611a8169f16f8b))
* **flow:** a phi narrower than its edge unboxes only a value of the phi's type ([fd49efa](https://github.com/pankgeorg/WasmTarget.jl/commit/fd49efad1f6040fc86250e305e280bee89636e8d))
* **formal:** each TLC instance writes to its own metadir ([d50faa2](https://github.com/pankgeorg/WasmTarget.jl/commit/d50faa2ad6df04e02036059699d50158572b16e5))
* **formal:** the TLC harness misreported large counterexamples and aborted silently ([21af91f](https://github.com/pankgeorg/WasmTarget.jl/commit/21af91f4e107e5409eb15182a7b2a35fea32ba76))
* **fuzz:** Matrix(::Diagonal) on 1.13, SimpleTsit5's SVector muladd, ForwardDiff's measured reason ([4fc785d](https://github.com/pankgeorg/WasmTarget.jl/commit/4fc785d219e26f235f25c84f829e56444f34cc7d))
* **int128:** the limb algorithms are Julia's 128-bit intrinsics, and modeled ([0999b4c](https://github.com/pankgeorg/WasmTarget.jl/commit/0999b4c7a9d34935f83378b643bff9f001875e11))
* **interpreter:** a primitive word reinterprets to and from its byte tuple by its byte lanes ([da62cf1](https://github.com/pankgeorg/WasmTarget.jl/commit/da62cf15bdbc935f7bc10aee0462dc2d9f67a825))
* **interpreter:** a type-structure foreigncall folds, and SparseArrays compiles from its own source (R38 43 -&gt; 30) ([81b6db0](https://github.com/pankgeorg/WasmTarget.jl/commit/81b6db0acabbcba2e272e4a02bba7f73a9e0eb7b))
* **invoke:** a union-split call's result boxes with the callee's return type ([95ab4ea](https://github.com/pankgeorg/WasmTarget.jl/commit/95ab4ea2a2467843c8dfc4f8f041c9fb2f83d15b))
* **invoke:** Base._growbeg!'s closure is no longer answered by the end-growth stand-in ([9b504ff](https://github.com/pankgeorg/WasmTarget.jl/commit/9b504ffc7bcc096454f549889bb545baa90cdb45))
* **invoke:** show with no IO bridge rejects at its statement instead of emitting nothing ([3deff29](https://github.com/pankgeorg/WasmTarget.jl/commit/3deff29c1b1a1403090a8574b2c7ff73069cf6e8))
* **invoke:** the vararg-constructor proof reads the body the invoke calls ([09f4ddd](https://github.com/pankgeorg/WasmTarget.jl/commit/09f4dddf5210d8256851d80a9e3c99cf588b72e6))
* **ir:** a query the collected world cannot answer is an error, not a re-inference ([112f8d9](https://github.com/pankgeorg/WasmTarget.jl/commit/112f8d9ffc0e5696760d601c8cbda93858b21917))
* **ir:** the host-layout-read memo lives for one compilation ([fdc73fe](https://github.com/pankgeorg/WasmTarget.jl/commit/fdc73fe6ca829689261d979edecf63398ef11783))
* **ir:** the one inference path keeps source lines and inline chains; R34 measures silent catches ([7ec92f0](https://github.com/pankgeorg/WasmTarget.jl/commit/7ec92f0ecfbd87ae0e2de87fe09173ff66386c2d))
* isa/typeassert against a parametric abstract on an Any-typed value — exact classId membership, and abstract array types are anyref ([07621bc](https://github.com/pankgeorg/WasmTarget.jl/commit/07621bc22be52033aad92355e3708b4a60b38818))
* **isa:** a class test reads its header's classId, and one predicate names a bare-array class ([c049c48](https://github.com/pankgeorg/WasmTarget.jl/commit/c049c480330e2a059e73270dcee3767439645d75))
* **isa:** a class test reads the classId, as dart's is checker does, whatever is registered yet ([35bf065](https://github.com/pankgeorg/WasmTarget.jl/commit/35bf065d3f64d05416b2e759547bfae900e1ff1d))
* **isa:** a layout the classed string shares is tested by classId ([85cab3c](https://github.com/pankgeorg/WasmTarget.jl/commit/85cab3c7c07b808437b5205b06352546d0a95640))
* **isa:** a test against Type{X} is X's identity, or type equality WT rejects, as emit_isa makes it ([d31f284](https://github.com/pankgeorg/WasmTarget.jl/commit/d31f2842151176f059dc08099f72d18d6ac09bda))
* **isa:** fold S &lt;: T only where Julia's subtyping of kinds is sound, as emit_isa does ([e225334](https://github.com/pankgeorg/WasmTarget.jl/commit/e225334dc845016cad06cdcdaa3a72733bf22c52))
* **isa:** one class test in both arms, a guessed externref unbox rejects, one CodeUnits predicate ([00d3494](https://github.com/pankgeorg/WasmTarget.jl/commit/00d3494daf25e1ccc29cb8a4a124deaac9d27b2f))
* Julia 1.13.0-rc4 — Compiler.compile! requires external_linkage; the closed world passes false ([9232673](https://github.com/pankgeorg/WasmTarget.jl/commit/923267302f3861434a1e44844a5e54ce1cf14e4d))
* **memory:** a storage pointer compares by backing identity, and never escapes as a number ([c74e538](https://github.com/pankgeorg/WasmTarget.jl/commit/c74e5384aa993d0c74c396ecd6dab1593c6bcd1e))
* **memory:** Core.memorynew allocates exactly n elements and throws Julia's errors ([26d6cfc](https://github.com/pankgeorg/WasmTarget.jl/commit/26d6cfc86a6ecaae5a733a28ad9fb3d86b225f84))
* **memory:** memset fills its backing array; a runtime or zero fill is never a no-op ([e95823c](https://github.com/pankgeorg/WasmTarget.jl/commit/e95823cae1af576c120fc6f4857566bdec128897))
* **memoryref:** a ref is a snapshot; a MemoryRef held as any value is its classed struct ([079b0ed](https://github.com/pankgeorg/WasmTarget.jl/commit/079b0ed343b4c1862f7ee0e43152c838ffcf1716))
* **memoryref:** carry a MemoryRef's element offset as a pair; run memoryrefnew's bounds check ([8238364](https://github.com/pankgeorg/WasmTarget.jl/commit/8238364d86c98e8185adce990d79bdae3bde9ab5))
* **merge:** batch integration — docstrings re-attached, smoke groups closed, probes and coverage exact ([08aeb94](https://github.com/pankgeorg/WasmTarget.jl/commit/08aeb94c661280c251a5d96dad6dcfa72203dbf2))
* **merge:** jl_symbol_n consumes a storage-relative pointer ([31c658e](https://github.com/pankgeorg/WasmTarget.jl/commit/31c658e64307b2aa876860748847fc22ae9bc659))
* **merge:** one docstring on _value_julia_type; R29 metric rows removed; R32 restated ([3178feb](https://github.com/pankgeorg/WasmTarget.jl/commit/3178feba54898e4d5e14dee7cd8de13322ea98de))
* **merge:** storage-pointer helpers take the NIR operand; the batch's probe baseline ([5626dfa](https://github.com/pankgeorg/WasmTarget.jl/commit/5626dfa06697c0f779cb728564158c6d9416b64b))
* **merge:** the storage-pointer arm lives in the one egal lowering; three closed gaps gated ([808ee7d](https://github.com/pankgeorg/WasmTarget.jl/commit/808ee7d2e0fe51c2cc227f44838ac3d562761193))
* mod/rem(::Float64, ::Float64) compile Julia's own bodies — the overlays are deleted ([61157ec](https://github.com/pankgeorg/WasmTarget.jl/commit/61157ecfd36bb846a19d4c73f3830edbce558442))
* number the closed world once (L122) — Phase 12 B ([9cd51a4](https://github.com/pankgeorg/WasmTarget.jl/commit/9cd51a415658db9239da4cc6ab5b466eda14e0f7))
* **numeric:** muladd and fma round once; Julia's own math kernels compile (R38 184 -&gt; 172) ([b9ae9b4](https://github.com/pankgeorg/WasmTarget.jl/commit/b9ae9b4506409b6874acbf2470e5b06f089a4a23))
* one vtable per closure type with an entry for every arity, dispatching among same-arity specializations ([be55e2b](https://github.com/pankgeorg/WasmTarget.jl/commit/be55e2bdcde5ae9ece2d8226fa274517ccb83ca9))
* **oracle:** results carry -0.0; mean! rescales as Julia's; cor's [@simd](https://github.com/simd) sum is named nonportable (L138, R38 108 -&gt; 107) ([15b2bc4](https://github.com/pankgeorg/WasmTarget.jl/commit/15b2bc4e08a4e749a1bd5356fde8b4b16fdd114e))
* pop!(::Vector) compiles Julia's own body; resize! keeps only Base's shape plus an exact grow ([9f63131](https://github.com/pankgeorg/WasmTarget.jl/commit/9f631317e34d0d811b038c73cbc7b71de3857e51))
* **ratchet:** L131 finds a row's file by its name on every OS ([092ef22](https://github.com/pankgeorg/WasmTarget.jl/commit/092ef2256b4e95d74df794ec5bb93e6541c67fb8))
* **ratchet:** R32 counts every definition from the syntax tree; L110 validates region headers ([e26b716](https://github.com/pankgeorg/WasmTarget.jl/commit/e26b716cd98d624a1448c90e3048cc249e1a671c))
* **ratchet:** the charter checks read prose line-ending-agnostic; one line ending repo-wide ([077f428](https://github.com/pankgeorg/WasmTarget.jl/commit/077f428b26d85a0cd283a2678f055149712376c3))
* restore load-bearing WasmTarget.optimize qualification ([d9aaf7b](https://github.com/pankgeorg/WasmTarget.jl/commit/d9aaf7b70b148fc37a5536fc70920b14feec76b7))
* setfield! of nothing into a concrete-ref field; eval and readline reject loudly; ten negative controls locked ([0e35d54](https://github.com/pankgeorg/WasmTarget.jl/commit/0e35d5475687c241487704a1b51207af2f1a2031))
* **sourcemap:** a failed method lookup in collect_source_info propagates ([b2d36a5](https://github.com/pankgeorg/WasmTarget.jl/commit/b2d36a5fd3f2ff655ad78c2240e64cdd36c70d58))
* **statements:** %new stores nothing as the field type's null, never a zero ([8da0de9](https://github.com/pankgeorg/WasmTarget.jl/commit/8da0de9e9ac843b27edf1dc837cfee1e8e745aff))
* **statements:** jl_type_intersection reads its type operands through the node ([7aa0ef6](https://github.com/pankgeorg/WasmTarget.jl/commit/7aa0ef6bd19029abfad63b34da659d9cf9bdb8ae))
* **statements:** memmove's element size is Julia's, and unknown storage rejects ([c3d9075](https://github.com/pankgeorg/WasmTarget.jl/commit/c3d90754df5fa434d488a4d464a6af9e16452ffd))
* **statements:** objectid of an immutable value rejects ([6740018](https://github.com/pankgeorg/WasmTarget.jl/commit/6740018472105308d25175a047df7cada76a7645))
* **statements:** the type-intersection fold lets a host error surface ([40574ae](https://github.com/pankgeorg/WasmTarget.jl/commit/40574ae92063b1797e6f185f66fc82ca622b9b41))
* **statements:** the type-intersection lowering emits its host result as a NirLiteral ([c134b01](https://github.com/pankgeorg/WasmTarget.jl/commit/c134b01b3827ad1f24d097bb1ffc0317a41979fb))
* **storage:** a memmove of isbits-struct storage copies the struct references; 1.13 keeps the byte `in` overlay ([2a57470](https://github.com/pankgeorg/WasmTarget.jl/commit/2a57470c7bb994d995d21cc10a04f08034e71e7b))
* **strict:** no global names nothing, and an xfail rejects at a statement or fails ([2bd18a0](https://github.com/pankgeorg/WasmTarget.jl/commit/2bd18a0094893ccb38f69b0edfe357dba3690e15))
* **strings:** a String comparison allocates its scratch locals when it needs them; Julia's sparse·dense kernel replaces its overlay (R38 85 -&gt; 84) ([f0dcb2c](https://github.com/pankgeorg/WasmTarget.jl/commit/f0dcb2cac0887186ef41192a950bbd7f58aea140))
* **strings:** a String's identity is its content, a C string starts at its pointer, a byte Memory keeps its class ([37ae7d5](https://github.com/pankgeorg/WasmTarget.jl/commit/37ae7d51eb1cd4647cd714e480d3f215c4535de8))
* **strings:** titlecase is Julia's rule over utf8proc's grapheme breaks; String(::SubString) copied a byte late (L143); interpreter.jl anchored (R32 293 -&gt; 252) ([33464cf](https://github.com/pankgeorg/WasmTarget.jl/commit/33464cfabffbb4b2e8bec8ae492531de179e509d))
* strip/lstrip/rstrip/chomp/chop/cmp/startswith/endswith compile Julia's own bodies — memcmp lowers, SubString codeunits are a window ([99d52ab](https://github.com/pankgeorg/WasmTarget.jl/commit/99d52abad98882d90d40aeff6b84466d9f191084))
* **structs:** the recursive-group Vector wrapper carries the offset field ([cc6b0ae](https://github.com/pankgeorg/WasmTarget.jl/commit/cc6b0ae11d0c1599cea8a4af62cb78fa11b2a2f5))
* **symbol:** jl_is_operator / jl_is_syntactic_operator answer as Julia's parser does for any name ([a0fbf74](https://github.com/pankgeorg/WasmTarget.jl/commit/a0fbf74304856aeaedb627c91ce69f3a230d2c76))
* **test:** f3_box_capture_l2b reads a NIR node's operands, not the renamed args field ([f43cf0f](https://github.com/pankgeorg/WasmTarget.jl/commit/f43cf0ff4f632e2fb70fde9e8bf6b8c14c174404))
* the closed world admits the value type of a non-const global binding ([a6646b7](https://github.com/pankgeorg/WasmTarget.jl/commit/a6646b7c93c171c198471b8ee288758ffc544c60))
* the coercion funnel rejects a numeric pair it has no arm for ([5dcc237](https://github.com/pankgeorg/WasmTarget.jl/commit/5dcc237e197b8a7105a504e5a9d61bdbb9db9393))
* the module has one world age — stop baking the host's world counter into binaries ([f673e78](https://github.com/pankgeorg/WasmTarget.jl/commit/f673e78fe933d32e514f9fb4a8691361e8c8a9ec))
* three classes the once-numbered closed world surfaced — long TypeName symbols, empty splat packs, svec elements ([3e44e5c](https://github.com/pankgeorg/WasmTarget.jl/commit/3e44e5cf1bdc4d44bb042e7dafadda692453ac29))
* **tuples:** a constant tuple states its type at a phi edge; the layout guess goes (A10E6) ([97af161](https://github.com/pankgeorg/WasmTarget.jl/commit/97af16137a9e474c553c4fa7dc10d7c43b5d06c3))
* **tuples:** a fixed tuple joining a runtime-length one is built into its representation ([9c0e5ca](https://github.com/pankgeorg/WasmTarget.jl/commit/9c0e5cac87a404173f2f4cc9d950d73e1dfb3c5f))
* **tuples:** a runtime-length tuple an isa narrows to an NTuple is built as that NTuple ([9942b0f](https://github.com/pankgeorg/WasmTarget.jl/commit/9942b0f8ef3bb0990fc86e139aa01082115c81b7))
* **tuples:** a runtime-length tuple's class is its length's; no class read sees its header ([abd0843](https://github.com/pankgeorg/WasmTarget.jl/commit/abd08434bf3b85ef7b1a2695890302681d0cd782))
* **tuples:** a runtime-length tuple's isa tests the lengths a tuple type admits; one widening check ([5a76e82](https://github.com/pankgeorg/WasmTarget.jl/commit/5a76e822a5064d5ed8e83c88846e38a851ffd1df))
* **tuples:** a tuple's type is its elements' runtime types, as jl_f_tuple types it ([9c12eca](https://github.com/pankgeorg/WasmTarget.jl/commit/9c12eca98242a250ad4786b74064792a7b96d55f))
* **types:** a recursive type registers with its component; recursion groups are computed (C8 closed) ([1290884](https://github.com/pankgeorg/WasmTarget.jl/commit/129088499f79b76f21540c8f655aee6085cf992d))
* **types:** a type built at run time rejects until Julia's constructor is ported ([0ef75d9](https://github.com/pankgeorg/WasmTarget.jl/commit/0ef75d9cb4968e00d6fedf01cb6a78f5a5c69626))
* **types:** a type object is an instance of its kind, and one object per type ([58d8296](https://github.com/pankgeorg/WasmTarget.jl/commit/58d82968a72a0e7b04f24ea116f7296b41d3de94))
* **types:** one test of a type object, a TypeVar first, for isa and a closure entry's rows ([f5cc813](https://github.com/pankgeorg/WasmTarget.jl/commit/f5cc8137b5af65a9ecfae2452247e6713acf3b40))
* **types:** the type constants are populated in program order on every machine ([2a38fae](https://github.com/pankgeorg/WasmTarget.jl/commit/2a38faef84780846fddb9f502ebddb4a4b81811c))
* **types:** Union{Nothing,&lt;numeric&gt;} is its nullable box, so nothing is not 0 ([9d68faf](https://github.com/pankgeorg/WasmTarget.jl/commit/9d68fafdab76b8fb2bd41724aeaf643c2af8ebd5))
* **validator:** an if without else takes inputs that are subtypes of its results (A3B11) ([1688049](https://github.com/pankgeorg/WasmTarget.jl/commit/1688049fb12b42a11bb7521c25e933b2425c3ad9))
* **values:** every string constant is a global; no data segments (R15 = 0) ([2900717](https://github.com/pankgeorg/WasmTarget.jl/commit/29007179dff393ce575d0b42320526c38ba6239d))
* **values:** static_wasm_type rejects an unbound GlobalRef at its statement ([8e8b83a](https://github.com/pankgeorg/WasmTarget.jl/commit/8e8b83a14a920a3b95d2b22047053d2e6c94869f))
* walk the struct registry in one order so class ids never depend on hash order (L112) ([d3cda89](https://github.com/pankgeorg/WasmTarget.jl/commit/d3cda898d61bb26931bf017415c520997a166190))


### Performance Improvements

* **codegen:** one SSA use index replaces the per-value body scans (SimpleTsit5 compile 187 s -&gt; 22 s) ([525e852](https://github.com/pankgeorg/WasmTarget.jl/commit/525e852327d0f5faa62ebbeade5a2e00e77adea7))
* **context:** needs_local reads each loop's first goto from a per-function index ([3d67b2a](https://github.com/pankgeorg/WasmTarget.jl/commit/3d67b2aa2ad06fd277d47ee18010c72dec96b961))
* **dispatch:** each struct's supertype is read from one map built per table build ([7de3760](https://github.com/pankgeorg/WasmTarget.jl/commit/7de37605b51772de59a6f18d2c9cbdce0b0a451f))
* phase timing probes, no per-compile specialization on the entries' callables, type strings printed once ([038c946](https://github.com/pankgeorg/WasmTarget.jl/commit/038c9462b4dba2adc69b98db848b1a9c05cae6b6))
* registry maps and class sets keyed by identity, no native specialization per registered type ([8b25666](https://github.com/pankgeorg/WasmTarget.jl/commit/8b256667f88d14efabc681a0ea8331179f33a7ef))
* the registry keeps isequal keying; the type walks widen their type object at entry ([69a0588](https://github.com/pankgeorg/WasmTarget.jl/commit/69a058827a54c34e5da15bb9f9653e4342240710))
* **types:** the program-derived order keys are computed once per sort ([0155052](https://github.com/pankgeorg/WasmTarget.jl/commit/0155052e754d4d572393cdc55a5432a6c21a9ce1))
* **unicode:** the utf8proc property table is two-stage, one builder for both tables ([9b9382f](https://github.com/pankgeorg/WasmTarget.jl/commit/9b9382f395fe63efe7e27f5d8dee6a6f5575a9b4))

## [0.5.3](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.5.2...v0.5.3) (2026-07-14)


### Bug Fixes

* discard framework root results without trapping ([#118](https://github.com/GroupTherapyOrg/WasmTarget.jl/issues/118)) ([cadb908](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/cadb908093efee3b08a065f50930d3337916391d))

## [0.5.2](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.5.1...v0.5.2) (2026-07-13)


### Bug Fixes

* preserve explicit IO calls in closed worlds ([#114](https://github.com/GroupTherapyOrg/WasmTarget.jl/issues/114)) ([f6b38cb](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/f6b38cb9a2534d41e518d854dbf86b0c5984000e))

## [0.5.1](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.5.0...v0.5.1) (2026-07-13)


### Features

* **builder:** complete the emit API — select/ref.test/ref.i31/i31.get/array.copy/array.fill ([45fcd8c](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/45fcd8ceb3220560ef0f853c22f11b63d3b22f26))
* **builder:** InstrBuilder — dart2wasm-style typed instruction emitter (Phase 0 foundation) ([c1f59f6](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/c1f59f62dc72f0d5f52b3356396c2b852a119052))
* **builder:** rich source-located diagnostics — the precision bug-finder ([ea4404a](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/ea4404a381bd6b32f66cb9b4ad64bae18e34174b))
* caller-facing diagnostics ledger — compile(...; diagnostics_sink=...) + WasmCompileError.all ([399ad9c](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/399ad9cfc63961f5df55a54e9a023b9ca547f35e))
* caller-facing diagnostics ledger (diagnostics_sink + WasmCompileError.all) ([0b40aaa](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/0b40aaa92e3862c9c44d32d3c92525a88f76d1b0))
* **codegen:** extensible is_struct_type carve-out registry — unblocks vector ODESolution ([c3a4457](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/c3a4457ea3cb35467618c7530db03959b682d91a))
* initialize framework state through typed roots ([319d50a](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/319d50aad1a981b648ba0646d7e0f560981bb173))
* interactive in-browser examples + memo dep auto-discovery + faster CI ([#64](https://github.com/GroupTherapyOrg/WasmTarget.jl/issues/64)) ([bfc9c8e](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/bfc9c8e8c7b9fff149fa028709165a18ac75abae))
* link typed framework adapters to canonical roots ([0b1018d](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/0b1018da9c664a726397f7b3c97a271c2e24ff1f))
* **parity:** the 2026-07-04 certification census — 15 dims scored, ~55% structural parity (was ~25-30%) ([dd98983](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/dd98983e01ced4be3e83057f71823179ea245b56))
* **sciml:** ForwardDiff integration - first SciML library, 100% in-scope ([#62](https://github.com/GroupTherapyOrg/WasmTarget.jl/issues/62)) ([800e7e6](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/800e7e63cb07a0340fddad89363d726999782b57))
* **sciml:** parameterized ODEs — overlay 4-arg ODEProblem(f,u0,tspan,p) ([961e714](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/961e714ae0af37277cf49dfd37a799fc85e51b9d))
* **sciml:** WasmTargetSimpleDiffEqExt — ODEProblem/solve overlays + carve-out registration ([963b5f0](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/963b5f0e49736369364fde02fc737de362593148))
* **staticarrays:** WasmTargetStaticArraysExt — SVector via carve-out + construct_type overlay ([1c88540](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/1c8854057ca14541f90b198cf89c58aceff5c968))


### Bug Fixes

* **1.13-rc1 + windows:** actual-type egal guards · array-rep union join · path-safe ratchet ([10977c2](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/10977c2c1461a2597347bd78dac0f58d33374bb7))
* **1.13-rc1:** element-wise builder transfer — works around a Julia 1.13.0-rc1 append! UNDEF-tail bug ([cf0898c](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/cf0898c85c4da037f6ebdf5f13f976b8f75c7837))
* **1.13:** route every io/print + N-way string-concat consumer through the M9 funnel ([39a4537](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/39a45372fb2e1b0269852cec110e3a9fb67ed040))
* align closed-world roots with runtime classes ([100b29f](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/100b29fc43931cb55e52487aabb2935f762a11bb))
* **builder:** declare string intrinsic scratch locals ([8a21b85](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/8a21b85f5ccf8305cc66949ae82a240ae29ea1fd))
* **builder:** pass unterminated global initializer expressions ([668a339](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/668a339d9269a72ccec3572df6eeb72b4156c0fb))
* **ci:** docs build — update the cached General registry ([119f77d](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/119f77d85a29596550a4f6f0230d73ffc4bc1784))
* **ci:** docs build — update the cached General registry, not just add it ([7983c26](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/7983c26e33ae2981223c6e88c86a229ab7019b53))
* **codegen:** project MemoryRef memory without offset ([b0915fc](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/b0915fc4a3a3d92d84e96e8a8337b2e1eec4d9a4))
* **codegen:** scoped type-level concrete-eval fold — close the cor cluster ([63f197d](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/63f197daf525f7de7a335a5b96010f14a19a038c))
* **dev:** gate watchdog threshold 12→25 min — cold precompile false-positive ([87cc686](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/87cc6864cb08651e7fcfb3efa00389295f64e853))
* **dev:** the gate runs in an ISOLATED WORKTREE — dev continues on the main tree (the pipeline mechanics) ([5721b8c](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/5721b8c2ba89d67a0acee8a7684b241c1fadcfcc))
* discover constant-folded runtime selector classes ([d5b28cd](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/d5b28cd5204a89eb7a0b72f8132394f525b4b832))
* **docs:** use registered Therapy 0.2.0 + WasmMakie as normal deps ([0adcb57](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/0adcb577c78756665e7fb05f729959e43907ce2b))
* emit local-less SSA aliases from their producer ([16facdc](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/16facdccae3cfc3d13232b24b4e55e9245a8fdb4))
* **flow:** root-fix multivar if/else phi-merge miscompile — route multi-phi to stackifier ([70deff2](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/70deff25a4144ff34e070c415554132756de7755))
* **march11:** the slot_types FIELD actually lands (the edit had searched without saving) ([cba4ae4](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/cba4ae49eed1afcab0ba884031fd22e7757edcda))
* **march12:** the sizeof site's stale trailing convert removed — the wrap already lands the array ([5a16ac1](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/5a16ac14b576207b7f52d0d4a22256b2f4b066df))
* **march13:** the forwarder chase handles the ::T-annotation phi join (M8.3 gate catch) + tuple dedup at table build ([96e8010](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/96e8010f76af24384a3a3b35921009626038ac80))
* **march16:** the vestigial discovery-conversion edits reverted (trimcollect owns type-keying); the unwrap arm gated on ACTUAL wrapping (vtable globals present) ([6e7fdd6](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/6e7fdd6bf713cf1215ee172d2bd0d6e121a5178e))
* **march4:** emit_int128_sle!/ule! builder forms — the sweep's latent UndefVar (fuzz-caught) ([d78a1b2](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/d78a1b2b3fe5be2905c58e6cf748fe66cc67f1f9))
* **march5, F2:** exclude Memory/MemoryRef from the closed-world collector — the _la_sub regression ([3862ba9](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/3862ba9ae07379813734768b284ee04ccc61f8ec))
* **march5, F2:** the closed world COLLECTS, never registers — and the isa bug's SECOND root falls ([9af563c](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/9af563c5e9818da3470fab82c7a417af588d182f))
* **march7:** interned Char fields use Julia's LEFT-PACKED bits, not the codepoint (gate-caught) ([98126bd](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/98126bdd6d8adfa5aa1dadeea1629aea46295267))
* **march7:** the ensureConstant funnel gains a LAYOUT GUARD — emit only when the registered struct layout matches ([c10f1d7](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/c10f1d702e06dd8655b75d715dde9e0dd1d6b1e2))
* **march8:** the Nothing decide-before-emit keeps the SEMANTIC SPLIT — null for concrete refs, the BoxedNothing singleton for generic refs ([b4f2bbf](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/b4f2bbf1fccd68cbaaec679f3465b2783000d034))
* normalize crossing terminal control-flow tails ([eaa7531](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/eaa7531b45b9ba6c8c3b6f095266aa1d2a48a68e))
* preserve exact type-object representation contracts ([394e034](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/394e03467a8c17bff2b407af16d29e82fd6a5328))
* preserve stack inputs across call fragments ([e95a928](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/e95a928298001aa0edd3d64d7557bfd37425284c))
* **ratchet:** R15 scoped to values.jl (the lazy creator's segment site is dart-shaped); two marker citations de-jargoned (R11 monotone holds) ([712c7dd](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/712c7ddd2307dfee25b5e978f640f4e720bfbeb4))
* reconstruct concrete vararg source tuples ([1ffc4f6](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/1ffc4f693074c5f30cb279991e82f9a56c4ac1d3))
* retain captured arithmetic operand ownership ([f14c8bf](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/f14c8bfee8a2abb2d2e5926d4d1483cbf743ae1f))
* retain exact captured-value dependencies ([4ec1a8a](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/4ec1a8a1a907ad342d969e4e2f85dd16706187c8))
* serialize Binaryen workers on Windows ([f7ca3d0](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/f7ca3d06c37bb1093badbdc2954b28d0a5598a90))
* skip js() interop intrinsic in closure dep auto-discovery (0.3.19 regression) ([#66](https://github.com/GroupTherapyOrg/WasmTarget.jl/issues/66)) ([6510a24](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/6510a24917241798f186f3003c9b17b840a38732))
* skip js() interop intrinsic in closure dep auto-discovery (0.3.19 regression). DarkModeToggle stays signal-backed. ([f4198d3](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/f4198d38754839a2132c61f461dd172eba2c5fe3))
* specialize explicit overlay invokes from concrete SSA types ([5daa1cb](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/5daa1cb02e7fa2b7b89a2147926d7cc3375ac05b))
* specialize singleton type-object invoke arguments ([65fff02](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/65fff02dda234082635aad6f873fb5ef2ddc2a85))
* **stackifier:** a loop closes at its LAST back-edge source — multi-continue loops miscompiled ([0018e90](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/0018e90c3934bdd0480c9d2b6645cd6a5ee17436))
* **step5:** the DAG resolver is nothing-safe for bare registries (the autodiscovery probe path) ([f9502b4](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/f9502b4fffcc5276482658383e83d85e3b57c0c9))
* **try:** route throw-arm-past-the-leave shapes to THE stackified try driver (silent wrong value) ([1debe19](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/1debe19a4a268a253249a2fc5da10c8d67f5edb7))
* unify framework roots and closed-world reachability ([fde49f8](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/fde49f82d1e317dde86f43a4b55642009ee577b0))


### Reverts

* **march13:** the tracked-type sink was too blunt — the stack top isn't always the stored value (25 smoke errors) ([3872af5](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/3872af5738058071ed18591a4d12385039eb563d))

## [0.5.0](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.4.12...v0.5.0) (2026-07-11)

### Features

* align the strict typed builder and code-generation architecture with the current dart2wasm oracle
* replace public numeric-depth branching with identity-bearing symbolic control labels
* collapse production compilation, structured flow, conversion, boxing, dispatch, and constant construction onto single machine-locked routes
* integrate Binaryen_jll as the package-owned optimization backend

### Correctness

* require exact Julia classes for numeric boxes and constant fields
* reject unsupported values and undefined captures instead of substituting null, zero, placeholder exceptions, or fabricated results
* preserve exact exception payloads, bottom control flow, closed-world discovery, recursive layouts, and selector signatures
* certify all parity invariants with fresh source audit, ten test shards, differential fuzzing, and downstream package matrices

## [0.4.12](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.4.11...v0.4.12) (2026-07-07)


### Bug Fixes

* **march16:** the vestigial discovery-conversion edits reverted (trimcollect owns type-keying); the unwrap arm gated on ACTUAL wrapping (vtable globals present) ([6e7fdd6](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/6e7fdd6bf713cf1215ee172d2bd0d6e121a5178e))

## [0.4.11](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.4.10...v0.4.11) (2026-07-06)


### Bug Fixes

* **march13:** the forwarder chase handles the ::T-annotation phi join (M8.3 gate catch) + tuple dedup at table build ([96e8010](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/96e8010f76af24384a3a3b35921009626038ac80))


### Reverts

* **march13:** the tracked-type sink was too blunt — the stack top isn't always the stored value (25 smoke errors) ([3872af5](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/3872af5738058071ed18591a4d12385039eb563d))

## [0.4.10](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.4.9...v0.4.10) (2026-07-06)


### Bug Fixes

* **march12:** the sizeof site's stale trailing convert removed — the wrap already lands the array ([5a16ac1](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/5a16ac14b576207b7f52d0d4a22256b2f4b066df))

## [0.4.9](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.4.8...v0.4.9) (2026-07-06)


### Bug Fixes

* **march11:** the slot_types FIELD actually lands (the edit had searched without saving) ([cba4ae4](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/cba4ae49eed1afcab0ba884031fd22e7757edcda))

## [0.4.8](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.4.7...v0.4.8) (2026-07-06)


### Bug Fixes

* **march7:** interned Char fields use Julia's LEFT-PACKED bits, not the codepoint (gate-caught) ([98126bd](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/98126bdd6d8adfa5aa1dadeea1629aea46295267))
* **march8:** the Nothing decide-before-emit keeps the SEMANTIC SPLIT — null for concrete refs, the BoxedNothing singleton for generic refs ([b4f2bbf](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/b4f2bbf1fccd68cbaaec679f3465b2783000d034))

## [0.4.7](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.4.6...v0.4.7) (2026-07-06)


### Bug Fixes

* **ratchet:** R15 scoped to values.jl (the lazy creator's segment site is dart-shaped); two marker citations de-jargoned (R11 monotone holds) ([712c7dd](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/712c7ddd2307dfee25b5e978f640f4e720bfbeb4))

## [0.4.6](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.4.5...v0.4.6) (2026-07-06)


### Bug Fixes

* **dev:** gate watchdog threshold 12→25 min — cold precompile false-positive ([87cc686](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/87cc6864cb08651e7fcfb3efa00389295f64e853))
* **dev:** the gate runs in an ISOLATED WORKTREE — dev continues on the main tree (the pipeline mechanics) ([5721b8c](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/5721b8c2ba89d67a0acee8a7684b241c1fadcfcc))

## [0.4.5](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.4.4...v0.4.5) (2026-07-05)


### Bug Fixes

* **march5, F2:** exclude Memory/MemoryRef from the closed-world collector — the _la_sub regression ([3862ba9](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/3862ba9ae07379813734768b284ee04ccc61f8ec))
* **march5, F2:** the closed world COLLECTS, never registers — and the isa bug's SECOND root falls ([9af563c](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/9af563c5e9818da3470fab82c7a417af588d182f))

## [0.4.4](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.4.3...v0.4.4) (2026-07-05)


### Features

* **parity:** the 2026-07-04 certification census — 15 dims scored, ~55% structural parity (was ~25-30%) ([dd98983](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/dd98983e01ced4be3e83057f71823179ea245b56))


### Bug Fixes

* **1.13-rc1:** element-wise builder transfer — works around a Julia 1.13.0-rc1 append! UNDEF-tail bug ([cf0898c](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/cf0898c85c4da037f6ebdf5f13f976b8f75c7837))
* **march4:** emit_int128_sle!/ule! builder forms — the sweep's latent UndefVar (fuzz-caught) ([d78a1b2](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/d78a1b2b3fe5be2905c58e6cf748fe66cc67f1f9))
* **stackifier:** a loop closes at its LAST back-edge source — multi-continue loops miscompiled ([0018e90](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/0018e90c3934bdd0480c9d2b6645cd6a5ee17436))
* **try:** route throw-arm-past-the-leave shapes to THE stackified try driver (silent wrong value) ([1debe19](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/1debe19a4a268a253249a2fc5da10c8d67f5edb7))

## [0.4.3](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.4.2...v0.4.3) (2026-07-03)


### Bug Fixes

* **1.13:** route every io/print + N-way string-concat consumer through the M9 funnel ([39a4537](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/39a45372fb2e1b0269852cec110e3a9fb67ed040))

## [0.4.2](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.4.1...v0.4.2) (2026-07-02)


### Features

* caller-facing diagnostics ledger — compile(...; diagnostics_sink=...) + WasmCompileError.all ([399ad9c](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/399ad9cfc63961f5df55a54e9a023b9ca547f35e))
* caller-facing diagnostics ledger (diagnostics_sink + WasmCompileError.all) ([0b40aaa](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/0b40aaa92e3862c9c44d32d3c92525a88f76d1b0))


### Bug Fixes

* **ci:** docs build — update the cached General registry ([119f77d](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/119f77d85a29596550a4f6f0230d73ffc4bc1784))
* **ci:** docs build — update the cached General registry, not just add it ([7983c26](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/7983c26e33ae2981223c6e88c86a229ab7019b53))

## [0.4.1](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.4.0...v0.4.1) (2026-07-02)


### Bug Fixes

* **1.13-rc1 + windows:** actual-type egal guards · array-rep union join · path-safe ratchet ([10977c2](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/10977c2c1461a2597347bd78dac0f58d33374bb7))

## [0.3.20](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.19...v0.3.20) (2026-06-26)


### Bug Fixes

* skip js() interop intrinsic in closure dep auto-discovery (0.3.19 regression) ([#66](https://github.com/GroupTherapyOrg/WasmTarget.jl/issues/66)) ([6510a24](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/6510a24917241798f186f3003c9b17b840a38732))

## [0.3.19](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.18...v0.3.19) (2026-06-26)


### Features

* interactive in-browser examples + memo dep auto-discovery + faster CI ([#64](https://github.com/GroupTherapyOrg/WasmTarget.jl/issues/64)) ([bfc9c8e](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/bfc9c8e8c7b9fff149fa028709165a18ac75abae))

## [0.3.18](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.17...v0.3.18) (2026-06-26)


### Features

* **sciml:** ForwardDiff integration - first SciML library, 100% in-scope ([#62](https://github.com/GroupTherapyOrg/WasmTarget.jl/issues/62)) ([800e7e6](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/800e7e63cb07a0340fddad89363d726999782b57))

## [0.3.17](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.16...v0.3.17) (2026-06-26)


### Miscellaneous Chores

* re-cut release 0.3.17 (SparseArrays) ([#60](https://github.com/GroupTherapyOrg/WasmTarget.jl/issues/60)) ([68bcf25](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/68bcf25847450740458b83fef36347bfb7e65d12))

## [0.3.16](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.15...v0.3.16) (2026-06-25)


### Features

* **stdlib:** LinearAlgebra integration + ≥95% coverage for LinearAlgebra/Statistics/Dates/Random ([#57](https://github.com/GroupTherapyOrg/WasmTarget.jl/issues/57)) ([aa3258d](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/aa3258d78a9739c34c40e8294acd5386b65fcbab))

## [0.3.15](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.14...v0.3.15) (2026-06-22)


### Miscellaneous Chores

* release WasmTarget 0.3.15 ([da0f8d1](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/da0f8d155f99f35eac055b5f987144f764bd0b51))

## [0.3.14](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.13...v0.3.14) (2026-06-22)


### Miscellaneous Chores

* record sweep gaps + release 0.3.14 ([cf2d431](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/cf2d431f3e5520fc4287f81592e0bb0e61144265))

## [0.3.13](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.12...v0.3.13) (2026-06-22)


### Features

* **codegen:** string(::Vector{Float64}) array-show overlay ([#40](https://github.com/GroupTherapyOrg/WasmTarget.jl/issues/40)) ([95c6a4d](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/95c6a4ddc40bfbef2506fb60f007256fefc4d700))


### Bug Fixes

* **codegen:** reset module-level io/type caches at start of each fresh compile ([#41](https://github.com/GroupTherapyOrg/WasmTarget.jl/issues/41)) ([f677465](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/f6774659fb35151f93b7da5300b64bab8887f8f1))

## [0.3.12](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.11...v0.3.12) (2026-06-20)


### Features

* **codegen:** [v...] splat-collect + array-show overlays (PI 30→33) ([c489c22](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/c489c2202760b8d97287e47f1577778a1665bc6b))
* **codegen:** [v...] splat-collect for Vector + string(::Vector{String}) ([677b1ae](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/677b1ae2cda9679ae6284a7eac07156df6e098ba))
* **codegen:** collect + range-slice for ref-element (String) vectors ([b5fe8e3](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/b5fe8e3de1efcb5d7cfd2dd4897d8e1efe9135c5))
* **codegen:** string(::Vector{Int64}) + string(::Nothing) overlays ([4a09462](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/4a09462fd57f92de48d21313b740920210d9cb81))


### Bug Fixes

* **codegen:** repeat(::Char, n) corrupts multibyte chars (soundness) ([2fc8292](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/2fc82927bff6d1c2a78f50e8fa92c33fdff5f758))

## [0.3.11](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.10...v0.3.11) (2026-06-20)


### Features

* **codegen:** string(::Complex) overlay + PlutoIslands island-fixtures testbed ([ed84425](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/ed844259c475fcc144b8b7188a9f7aa781028c48))
* **codegen:** string(::Complex) via byte-assembly overlay (closes cfd419793b0d) ([a9736ef](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/a9736ef56503c3b8be6b6592aacc450d44972e01))

## [0.3.10](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.9...v0.3.10) (2026-06-18)


### Features

* soundness loop — guardrails, dynamic dispatch on by default, ledger/verify hygiene, PlutoIslands integration ([9e12dc1](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/9e12dc11a2c5bd11857c1d7ddc3bb6298e2bb35a))

## [0.3.9](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.8...v0.3.9) (2026-06-16)


### Bug Fixes

* don't corrupt select_t / if ref-type operands in the wrap fixer ([9a5bf8b](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/9a5bf8b2746d7fa8a4bf6f53326ee9c67a77f8bf))
* don't corrupt select_t / if ref-type operands in the wrap fixer ([5ea46b2](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/5ea46b2f8d36c3f57221f666c890eee3e4a9f7de))

## [0.3.8](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.7...v0.3.8) (2026-06-13)


### Features

* make trim collection the default discovery ([be7ecd4](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/be7ecd41986f7db0fba67e2f714621af6bb50346))

## [0.3.7](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.6...v0.3.7) (2026-06-12)


### Features

* closed-world collection via upstream trim machinery (JuliaLang/julia[#62087](https://github.com/GroupTherapyOrg/WasmTarget.jl/issues/62087) alignment) ([4df8660](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/4df866047a2a2fc2709c6c73221017bb0fa3d686))
* discovery=:trim pipeline — compile_multi via closed-world collection ([b930bdd](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/b930bdda53ffb5c3c4097be006a5fe60cd648304))
* trim pipeline — per-collection cache partitions, entry-scoped strictness, width-matched stub defaults ([1581951](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/158195168cd185d9a3f650b996452bff3c30d390))


### Bug Fixes

* void wrapper blocks for Nothing-return try/catch + trim harness support ([51d3476](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/51d3476139db493c004f5c044d1b25420d538184))

## [0.3.6](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.5...v0.3.6) (2026-06-12)


### Features

* Random groundwork batch 2 — generic-arith anyref unbox, byte-reinterpret overlays, svec/type-intersection folds ([19935b5](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/19935b54ff879a46a521547617d4975db7be1094))
* Random groundwork batch 3 — hash_seed overlay, dynamic eq unbox, cross-width pointerset, dead-flag fix ([0efd531](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/0efd531b86f8a5f8139c124ebcca44e10568bd55))
* Random groundwork batch 4 — cross-width reads, Memory walk terminals, backing-array consolidation ([83ee1f1](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/83ee1f1f987ccc22a54968548d847b3ff3c54365))
* Random stdlib integration — seeded Xoshiro bit-exact on 1.12 (wide-from-narrow reads, offset-faithful pointers) ([e5faa29](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/e5faa2950f7bce9aea78205e710fecfcd483ca2b))


### Bug Fixes

* extend packed array.get_u/get_s results stored to i64 locals (Random seed! path) ([e42d7c8](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/e42d7c8fae9686175cf422b32fd012e6ae7ee931))
* ground-truth local types for boxed-union adapters (Random groundwork) ([9b732ae](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/9b732ae563aaae4db80452cd8582dbedeada4593))

## [0.3.5](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.4...v0.3.5) (2026-06-12)


### Features

* Dates stdlib integration — value layer + WasmTargetDatesExt rendering overlays ([eef47a7](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/eef47a72543f854bcdad5ed421ca3c89784a4457))

## [0.3.4](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.3...v0.3.4) (2026-06-12)


### Features

* fuzz-catalogue Statistics slice + first harvest (7 ledgered Int64-median gaps) ([15b164a](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/15b164a949f28f67a5210def7bd52a6728f3a00a))
* Statistics stdlib pilot — typed pointer machinery, copy handlers, layout folds (7/7 on 1.12, 5/7 on 1.13) ([1e7a7a1](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/1e7a7a1579c8c794d17cad966bbf52dde67bf60a))
* WasmTargetStatisticsExt weakdep extension — Statistics 7/7 on both versions ([e3cbab6](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/e3cbab6ab25efc069c1f9f02b9bbf30acc1881ba))


### Bug Fixes

* catch-arm split with GotoNode skip + merging arms (gap 10cc64efe535) ([9bf8241](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/9bf82417bdef368ef81e60528c74c78bfdc885d0))

## [0.3.3](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.2...v0.3.3) (2026-06-12)


### Bug Fixes

* closure-path compilation of WasmMakie islands — eight codegen fixes (WASMMAKIE-E-003) ([c98db5f](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/c98db5f99d67f6786ff7ad514e8cf2fc91c2ae71))
* closure-path compilation of WasmMakie islands (WASMMAKIE-E-003) ([73c2d01](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/73c2d0182dfeaa3ec6e3f89d19b7e346a1cad64e))

## [0.3.2](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.1...v0.3.2) (2026-06-12)


### Features

* getglobal handler + memmove array.copy (Ryu string(Float64) partial) ([0b44304](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/0b44304a75b4861fdb955d8281b66c04a9bab610))
* pointerref/pointerset over Vector{UInt8} storage pointers ([4026792](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/4026792dabbdde52fb2dea90fa608a322e7edd38))
* String comprehensions via collect-family whitelist ([342df71](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/342df7197f9769782925e5bc46df428f38eb8442))
* string concatenation overlays (_string varargs + String(::SubString)) ([3b577e0](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/3b577e0ccbe29f000be1ed8eff846210e749a202))
* string(::Float64) fully working — DataType layout-metadata folding ([e818f2b](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/e818f2bb9bcb71c06f7f1944c04095993bba0564))
* String*SubString / string-with-Char concat via concrete overlays ([0b24b23](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/0b24b23986fbe40db294daaaaa03c4d68d24bdc6))


### Bug Fixes

* branch-split dispatch picks the outermost spanning branch ([75e0560](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/75e0560024de928697253e5c3fcf1ef465983326))
* dead-return peephole misparsed LEB immediate as END opcode (gap 4c8236022172) ([3fd53cf](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/3fd53cf555cb515554f6b99aca8e230b48371ebd))
* if/else split inside outer try body (nested generator $else wrap) ([4757cfa](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/4757cfab70d3b0e2a3e24aedbffc6bd4c584bf06))
* Matrix types no longer registered with the Vector layout ([0556e48](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/0556e482dda889cdc514f6513e2bc63ec1f84247))
* merge-phi catch-try chains routed to new generator (gap ff6dc9760825) ([1fa9ad8](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/1fa9ad8959e5fe20267b34308dc9c1fa27f99231))
* narrow-int canonicalization in zext_int and signed shift results (gap da22976c7cd6) ([2a6915b](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/2a6915b2884317937117660f1a4da1636e83edc1))
* nested-try merge phis — skip branch lands at the merge ([1db16e7](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/1db16e730a26d0a8317bfd77a317a65ab10b5c42))
* recursive merge-phi catch-try chains (gap 73a575f2d651) ([bbff623](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/bbff6230fa62e7098848bdc0b199d25a42a88db0))
* reset stub flag before compiling the exit-branch condition ([533dffa](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/533dffab31efa4c69fe0645d02391f6ff1bb7cc5))
* shrinking resize! via _deleteend! overlay ([7be8ed9](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/7be8ed96b30f42906044100d5a219830c92ec805))
* sinh/cosh large-x precision — half-exponent squaring above H_LARGE_X ([0eb612c](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/0eb612c270223608c666edfdb668f99134065e70))
* struct_get type-check scan misread local.get 379 as struct.get ([f255a91](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/f255a9168bd1d4af190e0224a48e0eeabc818ab0))

## [0.3.1](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.3.0...v0.3.1) (2026-06-11)


### Features

* catch-arm branch-split generator (if/else with inner try inside catch) ([13e88b0](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/13e88b0cd9cbb903bd59f449be58ea2d3835c2c9))
* Float64 ranges, round(digits=), range broadcasts (WASMMAKIE W-002) ([78b1586](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/78b158663f3b7b420e31b44c14a0a27359e26450))
* Julia 1.13 support alongside 1.12 — CI matrix + docs ([dc36264](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/dc3626471ce443ac644a5655c08b37061aa93df9))
* Ryu writefixed/writeexp scalar overlays (WASMMAKIE W-004) ([5aeb98d](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/5aeb98d9b9727a17c3bdcc84c7844ef370053de4))


### Bug Fixes

* byte-vector in() memchr overlay + version-aware mod(x, Inf) semantics ([9b3ea5b](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/9b3ea5bcf59ff02de7d903c8fff4d5becff11525))
* catch-arm control flow + trunc_int width normalisation ([8a34688](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/8a34688ee5c7cb968e8c0dae451c19a7168bc244))
* forward-parse instruction boundaries in trailing type-safety checks ([0d5c88c](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/0d5c88cce2fd83137f082d285c3a432dff3b0948))
* Julia 1.13 String hashing, sinc/cosc evaluator, version-tolerant kwarg-body whitelist ([adbe30d](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/adbe30dee0263cfd88ef74065c4b44404104a7a3))
* nested-try generator fully stackified + normal-path skip block ([365a14e](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/365a14e9acb0f3c0fc6224d6fe0d54d3e3320bfc))
* sitofp narrow sign-extension + catchable Union{}-rettype invokes ([4166d8e](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/4166d8e0338c328843a0695f85e9584d7e75f7e7))
* stackify nested-try pre-outer and between-enter segments ([ff6eccc](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/ff6eccc7277b14101ee66cf24fe3d5024e924ce5))

## [0.3.0](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.2.1...v0.3.0) (2026-06-11)


### ⚠ BREAKING CHANGES

* ledger at 0 open. Full Pkg.test green.
* 4 closed, 0 still open. Full Pkg.test green.
* 7 closed, 0 still open. Full Pkg.test green.
* 2 closed, 0 still open. Full Pkg.test green.
* 4 closed across the batch, 0 still open. Full Pkg.test green.

### verify_gaps

* 2 closed, 0 still open. Full Pkg.test green. ([12976a2](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/12976a24aa9cb3da464a3a9e5d124de4293850c9))
* 4 closed across the batch, 0 still open. Full Pkg.test green. ([3c1caf4](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/3c1caf4f0e75cb349c4d189acc1aab7b029e98bf))
* 4 closed, 0 still open. Full Pkg.test green. ([7a1d4d1](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/7a1d4d149d54f24d061657d4b4a95f2e248abb68))
* 7 closed, 0 still open. Full Pkg.test green. ([2737229](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/2737229d73d4651f545b6852852fda75482601c4))
* ledger at 0 open. Full Pkg.test green. ([4cf486b](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/4cf486b2794ebf4b7818fda61da69aa4720863d6))


### Bug Fixes

* branches leaving a compiled block subset now route to an exit block ([12976a2](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/12976a24aa9cb3da464a3a9e5d124de4293850c9))
* byte-level wrap-stripping pass no longer desyncs on GC instructions; ([2737229](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/2737229d73d4651f545b6852852fda75482601c4))
* closures defined in Main now compile when invoked un-inlined; two new ([3c1caf4](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/3c1caf4f0e75cb349c4d189acc1aab7b029e98bf))
* lcm overflow throws catchably; Union{}-containing rettypes recognised ([4cf486b](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/4cf486b2794ebf4b7818fda61da69aa4720863d6))
* Phase 2 complete — try/catch soundness overhaul, 0 open divergences (batches 21-26) ([ecda643](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/ecda643b8adb250569db2dd72f130feab775d64f))
* try/catch machinery soundness overhaul + zero-divergence coverage matrix ([f8d1054](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/f8d1054fdf7ec2cfe8b934078787a01c8cc17f6c))
* un-inlined always-throwing invokes compile as catchable throws; if/else ([7a1d4d1](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/7a1d4d149d54f24d061657d4b4a95f2e248abb68))

## [0.2.1](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.2.0...v0.2.1) (2026-06-11)


### Features

* promote the fuzz oracle bridge to WasmTarget.Bridge ([27ed4a3](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/27ed4a35a2b0d23067192ea31016b2724b4d1080))
* promote the fuzz oracle bridge to WasmTarget.Bridge ([dca789a](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/dca789a4df78ab54ece25db007916315af9f1142))

## [0.2.0](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.1.1...v0.2.0) (2026-06-10)


### ⚠ BREAKING CHANGES

* strict-by-default soundness + differential combinatorial fuzzer (0.2.0)

### Features

* **fuzz:** add Dict/Set/Char/reduce categories + natural-sig sweep (inventory grows) ([a6ce229](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/a6ce229e8fcc8055c5ff92d731d6ff9dab51b738))
* **fuzz:** coverage metric + collect op ([f9123a4](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/f9123a43ecd3f1241ee42255b18d8a5c1b56c92f))
* **fuzz:** expand generator to ~146 ops + lazy construction for depth ≥4 ([8c86cb7](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/8c86cb79f7399382d88e5c356bfc956abb615ae2))
* **fuzz:** expand generator to vectors/strings/mixed-types + higher-order ops ([53f9d71](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/53f9d71c74a1073e1f6acc8a7dbf5c6e1425d9f0))
* **fuzz:** make generator TYPE-PARAMETRIC over the full lattice (168 → 538 ops) ([115c730](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/115c730a4329f354e17824a0d497864e2efb6cb0))
* **fuzz:** natural-signature fuzzing (Vector args) + depth-4 sweep inventory ([cb1670f](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/cb1670fabecc54d3ea4abb7cd6c12914bfde937e))
* **fuzz:** preserve hand-authored gap analysis across re-records ([3116117](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/311611731839ae94ca48bf5425f63274da13bee7))
* **fuzz:** vector marshalling — test functions in NATURAL signatures ([56c5a89](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/56c5a89c73f9da08ee194bd8298af705f7147223))
* strict-by-default soundness + differential combinatorial fuzzer (0.2.0) ([b2ee465](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/b2ee4654bb219b45a941f7ecd4687a1b32ce7060))


### Bug Fixes

* **codegen:** Julia-semantics integer shift (over-shift guard) ([3faf657](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/3faf6570da081f2e48c5b714346ef930eb4c1f84))
* **fuzz:** harden apparatus — eliminate false positives (mutation aliasing + NaN-vector compare) ([455218b](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/455218b66655f30dfd36f4bfeee843ebe16612aa))
* **overlay:** argmax/argmin NaN poisoning (return first NaN index) ([a25dc94](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/a25dc947058949250bbdc5e3982e893d7e79d852))
* **overlay:** argmax/argmin signed-zero tiebreak ([d363a81](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/d363a8193817740401256c92adeae819fd7fee97))
* **overlay:** Dict literal constructor (closes all 18 Dict gaps) ([1f33cc6](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/1f33cc6657ad9edc524c989b5aea979f30bc45ce))
* **overlay:** exact fmod for rem/mod(Float64) + Float32 exp/exp2/exp10 redirect ([5d1f028](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/5d1f0282de7bd08c27df8243f67f178b73beeff1))
* **overlay:** first/last(Vector) bounds-check on empty ([ad48bb9](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/ad48bb94d67866784fa0aed51815e4515a61b002))
* **overlay:** float mod/rem fmod-faithful at Inf/zero divisors ([35018fa](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/35018fa0e3632c57a1654ebb642d3dd9e11f5660))
* **overlay:** maximum/minimum signed comparison + NaN (closes maximum∘sort class) ([4b5e29b](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/4b5e29bd4ac58f4ca422a231c55c643169337894))
* **overlay:** startswith/endswith accept SubString (AbstractString) operands ([a3cfc97](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/a3cfc975d4dcca49f120ebc3e766dffb336842f3))
* **overlay:** string(Int64) typemin (negation overflow) ([968bebe](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/968bebeeef577eab2bb9e7d9cff8c0a57cd94349))
* **overlay:** unique dedups NaN (NaN-aware equality) ([fff920a](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/fff920a9f079626d8625f7c13ac11a9d93a63787))
* **overlay:** unique(Vector{Float}) keeps ±0.0 distinctly (isequal semantics) ([70b4cd6](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/70b4cd6bd869cb70680e16476bf79a46c87e4250))

## [0.2.0] - 2026-06-05

### ⚠ BREAKING CHANGES

* **`strict=true` is now the default** for `compile`/`compile_multi`. Constructs that
  would compile to a *wrong value* (`objectid`/`jl_object_id`, non-zero `memset`) now
  raise `WasmCompileError` (with the offending construct + source location) instead of
  emitting a silently-incorrect stub. Sound traps on dead error-branches still compile.
  Pass `strict=false` to restore the previous permissive behavior.

### Features

* Source-attributed diagnostics: `WasmDiagnostic`, `WasmCompileError`, and a single
  `record_unsupported!` choke point for every "give up" site (`src/codegen/diagnostics.jl`).
* **`validate=true` default**: every compiled module is checked with `wasm-tools validate`
  and a reject raises `WasmValidationError` (was previously unvalidated / `@warn` only).
* Type-directed differential fuzzer under `test/fuzz/` (Supposition.jl): generates
  well-typed compositions, checks native-vs-wasm, auto-shrinks counterexamples, persists
  a `DirectoryDB` corpus, and documents each finding as a self-reproducing, auto-closing
  "gap" in `test/fuzz/failures/`. A bounded pass runs in CI.

### Bug Fixes

* `jl_object_id` no longer returns a constant `42` / array length (a silently-wrong
  identity hash); non-zero `memset` no longer silently mis-fills.

## [0.1.1](https://github.com/GroupTherapyOrg/WasmTarget.jl/compare/v0.1.0...v0.1.1) (2026-04-20)


### Bug Fixes

* ship codegen + JSON 1.x migration fixes ([1f0ed5e](https://github.com/GroupTherapyOrg/WasmTarget.jl/commit/1f0ed5e35d7bf254a8e8ede9e057731813cdff8c))
