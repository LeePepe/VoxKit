# Compatibility

| Platform | Minimum |
|---|---|
| macOS | 26+ |
| iOS | 26+ |
| Swift | 6.2 |

Owner Decision Q3: `VoxSpeechWhisperKit` and `VoxWorkflowWhisperKit` are separate optional products, so default consumers do not link WhisperKit. SwiftPM still resolves WhisperKit in the package dependency graph.
