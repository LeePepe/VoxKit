---
layer: VoxWorkflow
owns: ["Sources/VoxWorkflow/**", "Tests/VoxWorkflowTests/**", "Tests/CanaryTests/**", "Tests/GoldenTraceTests/**"]
depends_on: ['VoxCore', 'VoxLLM', 'VoxRefine', 'VoxSpeech']
gate:
  build: swift build --target VoxWorkflow
  test: swift test --filter VoxWorkflowTests|CanaryTests|GoldenTraceTests
---

# VoxWorkflow

## Responsibility

Owns the stable public contracts and implementation for the VoxWorkflow product. Tests listed in `owns` validate this layer. Dependencies are limited to the layers declared above.

## Verification

Run the declared build and test gates through `scripts/verify --layer VoxWorkflow`.
