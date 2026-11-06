---
layer: VoxRefine
owns: ["Sources/VoxRefine/**", "Tests/VoxRefineTests/**"]
depends_on: ['VoxCore']
gate:
  build: swift build --target VoxRefine
  test: swift test --filter VoxRefineTests
---

# VoxRefine

## Responsibility

Owns the stable public contracts and implementation for the VoxRefine product. Tests listed in `owns` validate this layer. Dependencies are limited to the layers declared above.

## Verification

Run the declared build and test gates through `scripts/verify --layer VoxRefine`.
