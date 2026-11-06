# Examples

## Speech transcription

```swift
let source = SpeechSessionSource.microphone
let session = try await speech.start(source: source)
for try await result in session.results { print(result) }
```

## Refinement

```swift
let request = RefinementRequest(text: input, type: .polish)
let response = try await refiner.refine(request)
```

## Workflow graph

```swift
let definition = WorkflowDefinition { Preset.transcribeAndRefine }
let events = try await WorkflowScheduler().run(definition)
```
