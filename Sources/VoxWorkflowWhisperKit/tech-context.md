---
layer: VoxWorkflowWhisperKit
owns: ["Sources/VoxWorkflowWhisperKit/**", "Tests/CanaryTests/**"]
depends_on: ['VoxCore', 'VoxSpeech', 'VoxSpeechWhisperKit', 'VoxWorkflow']
gate:
  build: swift build --target VoxWorkflowWhisperKit
  test: swift test --filter CanaryTests
---

# VoxWorkflowWhisperKit

## Responsibility

Owns the stable public contracts and implementation for the VoxWorkflowWhisperKit product. Tests listed in `owns` validate this layer. Dependencies are limited to the layers declared above.

## Verification

Run the declared build and test gates through `scripts/verify --layer VoxWorkflowWhisperKit`.
