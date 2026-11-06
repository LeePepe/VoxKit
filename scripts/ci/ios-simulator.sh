#!/usr/bin/env bash
set -euo pipefail
if ! command -v xcodebuild >/dev/null 2>&1; then echo "[ios] xcodebuild unavailable" >&2; exit 1; fi
destination="${VOXKIT_IOS_DESTINATION:-platform=iOS Simulator,name=iPhone 17,OS=26.2}"
if [[ "$destination" =~ ^[0-9A-Fa-f-]{36}$ ]]; then
  destination="platform=iOS Simulator,id=$destination"
fi
xcodebuild test -scheme VoxKit-Package -destination "$destination" \
  -only-testing:VoxCoreTests -only-testing:VoxRefineTests -only-testing:VoxLLMTests \
  -only-testing:VoxSpeechTests -only-testing:VoxSpeechWhisperKitTests \
  -only-testing:VoxWorkflowTests -only-testing:CanaryTests -only-testing:GoldenTraceTests \
  -skipMacroValidation CODE_SIGNING_ALLOWED=NO
