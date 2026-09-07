# AGENTS.md

A Motoko testing library, published as the Mops package `test`, for writing and running tests with `mops test`.

## Build & test

- Run the test suite: `mops test`
- CI (`.github/workflows/pull_request_build.yml`) runs only `mops test`; there are no separate lint or format steps.
- The toolchain is pinned in `mops.toml`: `moc = "1.0.0"`, `wasmtime = "40.0.0"`. CI ensures `moc` is installed via `mops toolchain bin moc || mops toolchain use moc latest`.
- CI also installs `dfx` version `0.30.1`, but the test job itself only invokes `mops test`.

## Layout

- `src/` — library source; `src/lib.mo` is the package entry point.
- `src/expect/` — the `expect` matcher implementations (one file per matched type).
- `test/` — test files. Tests live here as `*.test.mo` files; add new tests following that naming convention.

## Conventions & gotchas

- `.mops/` is git-ignored and holds installed dependencies; never hand-edit or commit it.
- Dependencies and the toolchain are declared in `mops.toml`; add packages via Mops rather than editing lockfiles by hand.
- The `version` field in `mops.toml` must match the published package version; keep `CHANGELOG.md` in sync when bumping it.
