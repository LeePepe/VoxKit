---
layer: VoxSpeechWhisperKit
owns: ["Sources/VoxSpeechWhisperKit/**", "Tests/VoxSpeechWhisperKitTests/**"]
depends_on: ['VoxCore', 'VoxSpeech']
gate:
  build: swift build --target VoxSpeechWhisperKit
  test: swift test --filter VoxSpeechWhisperKitTests
---

# VoxSpeechWhisperKit

## Responsibility

Owns the stable public contracts and implementation for the VoxSpeechWhisperKit product. Tests listed in `owns` validate this layer. Dependencies are limited to the layers declared above.

## Verification

Run the declared build and test gates through `scripts/verify --layer VoxSpeechWhisperKit`.
