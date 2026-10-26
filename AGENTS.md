# AGENTS.md

A Motoko testing library (`mo:test`) that provides `test`, `suite`, `skip`, and `expect` matchers, run via `mops test`.

## Build & test

This is a [Mops](https://docs.mops.one) package; there is no `package.json` or `Makefile`.

- Run tests: `mops test` (the only CI check, in `.github/workflows/pull_request_build.yml`).
- Install dependencies: `mops install`.

CI uses the Mops toolchain and ensures `moc` is available with:

```
mops toolchain bin moc || mops toolchain use moc latest
```

Tool versions are pinned in `mops.toml` under `[toolchain]` (`moc`, `wasmtime`, `pocket-ic`); `[requirements]` sets the minimum `moc`.

## Layout

- `src/` — library source. `lib.mo` is the entry point; `async.mo` exposes the async API (`mo:test/async`); `src/expect/` holds one file per matcher type.
- `test/` — the library's own tests, in `*.test.mo` files.

## Conventions & gotchas

- Consumers put tests in a `test` directory in `*.test.mo` files.
- Async tests (those using `await`) must import from `mo:test/async`.
- `expect.call` is only available from `mo:test/async`.
- Replica tests require an unnamed `persistent actor { ... }` exposing a `runTests` method; Mops starts a local replica on port `4945` for these.
- `.mops/` is generated (git-ignored) and must not be hand-edited.
- Record user-facing changes in `CHANGELOG.md` and bump `version` in `mops.toml`.
