---
layer: _root
support:
  - patterns: ["Package.swift", "Package.resolved"]
    reason: repository support, documentation, CI, or integration fixture
  - patterns: ["LICENSE"]
    reason: repository support, documentation, CI, or integration fixture
  - patterns: ["*.md"]
    reason: repository support, documentation, CI, or integration fixture
  - patterns: ["docs/**"]
    reason: repository support, documentation, CI, or integration fixture
  - patterns: ["ai/**"]
    reason: repository support, documentation, CI, or integration fixture
  - patterns: [".gitignore"]
    reason: repository support, documentation, CI, or integration fixture
  - patterns: [".github/**"]
    reason: repository support, documentation, CI, or integration fixture
  - patterns: [".githooks/**"]
    reason: repository support, documentation, CI, or integration fixture
  - patterns: ["scripts/**"]
    reason: repository support, documentation, CI, or integration fixture
  - patterns: ["Examples/**"]
    reason: repository support, documentation, CI, or integration fixture
  - patterns: ["Tests/Integration/**"]
    reason: repository support, documentation, CI, or integration fixture
---

# VoxKit layer map

| Layer | Responsibility | tech-context | depends_on |
|---|---|---|---|
| VoxCore | Public VoxCore SDK module and its tests | `Sources/VoxCore/tech-context.md` | (none) |
| VoxRefine | Public VoxRefine SDK module and its tests | `Sources/VoxRefine/tech-context.md` | VoxCore |
| VoxLLM | Public VoxLLM SDK module and its tests | `Sources/VoxLLM/tech-context.md` | VoxCore, VoxRefine |
| VoxSpeech | Public VoxSpeech SDK module and its tests | `Sources/VoxSpeech/tech-context.md` | VoxCore |
| VoxSpeechWhisperKit | Public VoxSpeechWhisperKit SDK module and its tests | `Sources/VoxSpeechWhisperKit/tech-context.md` | VoxCore, VoxSpeech |
| VoxWorkflow | Public VoxWorkflow SDK module and its tests | `Sources/VoxWorkflow/tech-context.md` | VoxCore, VoxLLM, VoxRefine, VoxSpeech |
| VoxWorkflowWhisperKit | Public VoxWorkflowWhisperKit SDK module and its tests | `Sources/VoxWorkflowWhisperKit/tech-context.md` | VoxCore, VoxLLM, VoxRefine, VoxSpeech, VoxSpeechWhisperKit, VoxWorkflow |

Tests belong to the layer they exercise. Dependency direction is enforced by Swift imports and redline checks.
