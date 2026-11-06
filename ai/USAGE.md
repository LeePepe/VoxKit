# Usage

Build workflows with `WorkflowDefinition` and `@WorkflowBuilder`, or start from a `Preset` such as `Preset.default.refine`, `Preset.hybridAzure.speech`, or `Preset.appleSpeech.speech`. Execute them with `WorkflowRuntime(registry: registry)`. Speech input is represented by `SpeechSessionSource`; credentials are supplied through `CredentialProvider`. Hosts inject privacy-safe `VoxLogger` and `VoxTelemetry` implementations; SDK diagnostics use `StaticString` labels only.
