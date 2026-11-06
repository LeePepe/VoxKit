# Usage

Build workflows with `WorkflowDefinition` and `@WorkflowBuilder`, or start from a `Preset`. Run them with `WorkflowScheduler`. Speech input is represented by `SpeechSessionSource`; credentials are supplied through `CredentialProvider`. Hosts inject privacy-safe `VoxLogger` and `VoxTelemetry` implementations; SDK diagnostics use `StaticString` labels only.
