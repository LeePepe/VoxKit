---
layer: VoxCore
owns: ["Sources/VoxCore/**", "Tests/VoxCoreTests/**"]
depends_on: []
gate:
  build: swift build --target VoxCore
  test: swift test --filter VoxCoreTests
---

# VoxCore

## Responsibility

Owns the stable public contracts and implementation for the VoxCore product. Tests listed in `owns` validate this layer. Dependencies are limited to the layers declared above.

## Verification

Run the declared build and test gates through `scripts/verify --layer VoxCore`.
