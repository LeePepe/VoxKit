# SwiftPM integration

Add VoxKit with an exact package requirement: `.package(url: "https://github.com/LeePepe/VoxKit", exact: "0.1.0")`. Select only the products needed by the target. The default workflow products do not require WhisperKit at link time. Verify with `swift build`, `swift test`, and the macOS/iOS Simulator consumer under `Examples/MinimalConsumer` when present.
