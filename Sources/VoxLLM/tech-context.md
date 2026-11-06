---
layer: VoxLLM
owns: ["Sources/VoxLLM/**", "Tests/VoxLLMTests/**"]
depends_on: ['VoxCore', 'VoxRefine']
gate:
  build: swift build --target VoxLLM
  test: swift test --filter VoxLLMTests
---

# VoxLLM

## Responsibility

Owns the stable public contracts and implementation for the VoxLLM product. Tests listed in `owns` validate this layer. Dependencies are limited to the layers declared above.

## Verification

Run the declared build and test gates through `scripts/verify --layer VoxLLM`.
