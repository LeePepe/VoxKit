// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "MinimalConsumer",
    platforms: [.macOS(.v26), .iOS(.v26)],
    dependencies: [.package(path: "../..")],
    targets: [
        .executableTarget(name: "MinimalConsumer", dependencies: [
            .product(name: "VoxCore", package: "voxkit-tk4-init"),
            .product(name: "VoxSpeech", package: "voxkit-tk4-init"),
            .product(name: "VoxRefine", package: "voxkit-tk4-init"),
            .product(name: "VoxLLM", package: "voxkit-tk4-init"),
            .product(name: "VoxWorkflow", package: "voxkit-tk4-init"),
        ])
    ],
    swiftLanguageModes: [.v6]
)
