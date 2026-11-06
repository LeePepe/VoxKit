# Development

## Workflow

Read `AGENTS.md`, the root and leaf `tech-context.md` files, then select one goal-based PR kind: feature, fix, contract/documentation, or migration. A PR owns one coherent task and includes its tests and required documentation. Do not weaken policy or CI gates to make a change pass.

## Verification and review sources

Use `scripts/verify --changed` for local iteration, `scripts/verify --all` for the complete package, `scripts/verify --policy` for contract and security checks, and `scripts/verify --ios` for simulator coverage. Review is supplied by the pinned `shared-ci` workflows and the repository PR template; required checks are `quality / aggregate` and `codex-review-target / codex-review`.

## Quality contract (6DQ matrix)

| Dimension | Evidence |
|---|---|
| Domain | Correct module ownership and public API behavior |
| Dependency | Declared layer direction and explicit imports |
| Data | No audio/transcript/refined text in diagnostics |
| Delivery | Reproducible verify commands and focused PR |
| Documentation | README, AI guides, and leaf context remain reachable |
| Durability | macOS tests, iOS simulator tests, redlines, and secret scan |
