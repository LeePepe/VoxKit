#!/usr/bin/env bash
set -euo pipefail
if ! command -v xcodebuild >/dev/null 2>&1; then echo "[ios] xcodebuild unavailable" >&2; exit 1; fi
available="$(xcrun simctl list devices available)"
destination="${VOXKIT_IOS_DESTINATION:-}"
if [ -n "$destination" ] && ! grep -Fq "$destination" <<<"$available"; then destination=""; fi
if [ -n "$destination" ] && [[ "$destination" =~ ^[0-9A-Fa-f-]{36}$ ]]; then
  destination="platform=iOS Simulator,id=$destination"
fi
if [ -z "$destination" ]; then
  udid="$(xcrun simctl list devices available -j | python3 -c 'import json,sys
x=json.load(sys.stdin)
rows=[]
for runtime, devices in x.get("devices",{}).items():
  for d in devices:
    if d.get("isAvailable") and d.get("name","").startswith("iPhone"):
      rows.append((runtime,d.get("name",""),d.get("udid","")))
print(sorted(rows)[-1][2] if rows else "")')"
  [ -n "$udid" ] || { echo "[ios] no available iPhone simulator" >&2; exit 1; }
  destination="platform=iOS Simulator,id=$udid"
fi
xcodebuild test -scheme VoxKit-Package -destination "$destination" \
  -only-testing:VoxCoreTests -only-testing:VoxRefineTests -only-testing:VoxLLMTests \
  -only-testing:VoxSpeechTests -only-testing:VoxSpeechWhisperKitTests \
  -only-testing:VoxWorkflowTests -only-testing:CanaryTests -only-testing:GoldenTraceTests \
  -skipMacroValidation CODE_SIGNING_ALLOWED=NO
