# Migration from VoxPocket

Replace internal `TranscriptionKit` usage with `VoxSpeech` and `VoxSpeechWhisperKit` as appropriate. Replace `LLMKit` services with `VoxLLM` providers or `VoxWorkflow` presets. In VoxKit 0.1.0, credentials, storage, logging, and telemetry are injected through `VoxCore` contracts rather than read from process or device configuration.
