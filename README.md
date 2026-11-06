# VoxKit

VoxKit is a Swift 6.2 voice SDK for macOS and iOS. It ships seven products: `VoxCore`, `VoxSpeech`, `VoxSpeechWhisperKit`, `VoxRefine`, `VoxLLM`, `VoxWorkflow`, and `VoxWorkflowWhisperKit`.

## Requirements

- macOS 26+ or iOS 26+
- Swift 6.2 / Xcode with Swift 6.2 toolchain

## Quick start

```swift
import VoxWorkflow
let workflow = Preset.quickTranscription
```

See `ai/README.md` and `ai/EXAMPLES.md` for integration patterns.

## Verification

```sh
scripts/verify --all
scripts/verify --ios
```
