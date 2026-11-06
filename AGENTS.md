# AGENTS.md — VoxKit

## Read first

- `tech-context.md` — root layer map and dependency direction.
- `Sources/<Module>/tech-context.md` — leaf responsibility and gates.
- `docs/development.md` — PR units, verification, and review sources.
- `ai/README.md` — SDK capability and module index.

## Protocol

Follow LeePepe/shared-ci@838e10a059979e6732446cb26edc95d173cc7e3a/ai/agent-protocol.md (https://github.com/LeePepe/shared-ci/blob/838e10a059979e6732446cb26edc95d173cc7e3a/ai/agent-protocol.md).

## Verify

- `git config core.hooksPath .githooks`
- `scripts/verify`
- `scripts/verify --all`
- `scripts/verify --policy`
- `scripts/verify --layer <Layer>`
- `scripts/verify --ios`

## Required checks

- `quality / aggregate`
- `codex-review-target / codex-review`

## Red lines

- R1–R5 are enforced by `scripts/redlines/check.sh` and `--self-test`.
- Concurrency: zero `@unchecked Sendable` and `nonisolated(unsafe)` in `VoxSpeechWhisperKit`; document Apple API boundary rationales in `VoxSpeech`.
- Privacy: `VoxLogger` and `VoxTelemetry` accept `StaticString` only; no audio, transcript, refined text, or secrets in logs, telemetry, or errors.
- Secrets and non-public configuration: the SDK reads no environment, files, or preferences. `.gitignore` covers private/local config. Optional live integration tests read gitignored `Tests/Integration/azure.local.json`; only the synthetic example is committed.
- `scripts/verify` and CI run gitleaks and the R5 scan. Never commit personal account names, credential-profile paths, or local home paths.

## Dependencies

- `shared-ci` `838e10a059979e6732446cb26edc95d173cc7e3a` — https://github.com/LeePepe/shared-ci/blob/838e10a059979e6732446cb26edc95d173cc7e3a/ai/

## Delivery

One task → one branch + worktree → one PR using `.github/pull_request_template.md`; enable auto-merge only after required checks and AI review pass on the exact head.
