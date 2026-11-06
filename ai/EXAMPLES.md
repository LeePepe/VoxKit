# Examples

## Speech transcription

A host supplies a concrete `SpeechSessionSource`, then starts a session for a locale and consumes its event stream:

```swift
let session = try await source.startSession(language: Locale(identifier: "zh-Hans"))
for try await event in session.events() {
    handle(event)
}
```

## Refinement

```swift
let request = RefinementRequest(text: "原始语音文本")
let response = try await WorkflowRuntime().refine(request, preset: .default)
```

## Workflow graph

```swift
let definition = WorkflowDefinition(entry: .refine) {
    NodeSpec(id: "input", kind: .refineInput)
    NodeSpec(
        id: "refine.llm",
        kind: .llmApple,
        inputs: [PortRef(nodeID: "input", port: "text")],
        params: ["provider": .string("apple.intelligence")]
    )
    NodeSpec(id: "output", kind: .outputText,
             inputs: [PortRef(nodeID: "refine.llm", port: "text")])
}
let runtime = WorkflowRuntime(registry: .builtIn)
let events = try await runtime.execute(definition, input: .none)
```
