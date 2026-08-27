# Danger Dash / Stable archive manifest

## Scope

This section preserves the original Danger Dash JAR, the Turbo Stable APK used for the successful comparison run, CoreBridge r64/r65 checkpoints, the controlled private-renderer JAR, and the decisive logs and analysis needed for future investigation.

## Provenance and status

| Path | Status | Provenance / intended use |
|---|---|---|
| `fixtures/jars/dangerdash/DangerDash_Nokia_5800_EN_IGP_IAP_EU_TS_109.jar` | Original, immutable fixture | User confirmed that Turbo Stable used this exact JAR core; filename may differ, contents were not changed. SHA-256 is recorded in `DANGERDASH_SHA256SUMS.txt`. |
| `artifacts/apk/provenance/PhoneME-Turbo-nHD-1.1.apk` | Stable reference APK | APK used for the successful Danger Dash comparison session. Retained for static inspection and provenance only. |
| `artifacts/apk/baseline/PhoneME-CoreBridge-r64-farm-tolerant.apk` | PASS baseline | Farm Frenzy 2 PASS checkpoint. Must not be overwritten by experiments. |
| `artifacts/apk/diagnostic/PhoneME-CoreBridge-r65-dangerdash-trace.apk` | Diagnostic only | Resource-trace experiment; stderr was not visible in the app/logcat sink, so it is not a fix or baseline. |
| `artifacts/jar/experimental/dangerdash/DangerDash-private-drawrgb-patched.jar` | Unverified experiment | Patches only the two private-renderer call sites. The user-selected device log used the public patched JAR, so this artifact is not marked failed. |

## Logs and reports

`logs/dangerdash/` contains the Stable full/focused logcat, the decisive CoreBridge 20:56/21:05/21:16 runs, and the r65 focused/full diagnostics. `reports/dangerdash/` contains the stable comparison memo, bridge disassembly/evidence, renderer and decoder analyses, compact log extracts, and the generic probe design.

The Stable run used the confirmed original Danger Dash JAR core. Stable emitted repeated `bitmapBuffer NULL` warnings while still rendering successfully; therefore those warnings are not treated as the direct cause of CoreBridge's black frame.

## Recovery rules

The r64 APK is the current Farm PASS baseline. The r65 APK is diagnostic only. The original Danger Dash JAR is read-only input. No stored experimental JAR or diagnostic APK should be promoted to a baseline without a separate device-test report naming the exact filename and SHA-256.

## Sensitive-data policy

No private key, keystore file, password, access token, or credential is included in this addition. Public artifact hashes and package/runtime provenance are retained for reproducibility.
