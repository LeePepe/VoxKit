---
layer: VoxSpeech
owns: ["Sources/VoxSpeech/**", "Tests/VoxSpeechTests/**"]
depends_on: ['VoxCore']
gate:
  build: swift build --target VoxSpeech
  test: swift test --filter VoxSpeechTests
---

# VoxSpeech

## Responsibility

Owns the stable public contracts and implementation for the VoxSpeech product. Tests listed in `owns` validate this layer. Dependencies are limited to the layers declared above.

## Verification

Run the declared build and test gates through `scripts/verify --layer VoxSpeech`.
