# AGENTS.md

A Motoko testing library (published on Mops as `test`) for writing and running unit, async, and replica tests.

## Build, test

- Run tests: `mops test` (the only build/test command exercised in CI).
- CI (`.github/workflows/pull_request_build.yml`) runs on `ubuntu-22.04`, installs the Motoko compiler via `mops toolchain`, then runs `mops test`. There is no separate lint or format step.

## Toolchain

Tool versions are pinned in `mops.toml` under `[toolchain]` and must match to reproduce CI:

- `moc` 1.0.0
- `wasmtime` 40.0.0
- `pocket-ic` 15.0.0

`[requirements]` additionally mandates `moc` 1.0.0. The runtime dependency `core` is pinned in `[dependencies]`.

## Layout

- `src/` — library source. `src/lib.mo` is the synchronous entry point; `src/async.mo` is the async entry point (`mo:test/async`).
- `src/expect/` — the `expect` matcher implementation, one file per matched type.
- `test/` — the library's own test suite in `*.test.mo` files, run by `mops test`.

## Conventions

- Test files must live in `test/` and be named `*.test.mo`.
- Replica tests must define an unnamed `persistent actor { ... }` exposing a `public func runTests() : async ()`. Running them starts a local replica on port `4945`.
- `.mops/` is a generated dependency directory (gitignored) — never hand-edit it.
- Public API changes should be recorded in `CHANGELOG.md`, and the version in `mops.toml` bumped accordingly.
