# Archive manifest

## Snapshot date

2026-08-25, timezone GMT+7.

## APKs

| Path | Status | Intended use |
|---|---|---|
| `artifacts/apk/current/PhoneME-CoreBridge-0.1.163-guard-cleanup-imagepng-r1.apk` | Current experimental | Device test for the combined guard + cleanup + image-to-png direction. |
| `artifacts/apk/baseline/PhoneME-CoreBridge-0.1.163-guard-cleanup-recovery.apk` | Baseline | Guard + cleanup without image-to-png; rollback/provenance only. |
| `artifacts/apk/baseline/PhoneME-CoreBridge-0.1-19-native-clean.apk` | Historical native-clean | Native-clean comparison artifact; the corresponding `(19)` and `(23)` files were byte-identical. |
| `artifacts/apk/provenance/PhoneME-CoreBridge-0.1majestypass.apk` | Provenance | Source APK for the Java `ResilientImageJar` implementation that previously passed Majesty. |
| `artifacts/apk/withdrawn/PhoneME-CoreBridge-0.1.163-resource-cache-overlay-r1.apk` | Withdrawn | Static/provenance record only. Failed device test by hanging at Program List after clone selection. Never install as baseline. |

## Source and scripts

`source/core-resource-cache/` contains the isolated portable Core decoded-image-cache worktree, including source changes, Android build notes, ELF audit records and overlay scripts. The overlay is retained for investigation history only and is not an approved Android integration.

`source/java-imagepng/` contains the recovered smali for `ResilientImageJar`, its payload helper, the patched `MainActivity` launch hook and comparison smali. `source/build-scripts/` contains the build/restore/verification scripts used for the current artifacts.

## Fixtures

The JAR fixtures include Majesty, Plants vs Zombies, and the HaiTac original/x4 pair used for compatibility and speed comparisons. Original JARs are retained unchanged.

## Evidence

The reports contain the cache audit, overlay failure findings, verification notes and handoff information. The retained logs are representative rather than a complete dump: one Majesty-pass log and one overlay-failure log are included so future analysis can start from the decisive evidence without duplicating every historical capture.

## Danger Dash / Stable comparison addition

The original Danger Dash fixture, Turbo Stable reference APK, CoreBridge r64/r65 checkpoints, private-renderer experimental JAR, decisive logs and the Stable/CoreBridge comparison reports are stored under the paths listed in `metadata/DANGERDASH_ARCHIVE_MANIFEST.md`. The user confirmed that Turbo Stable used the original Danger Dash JAR core; a filename change, if any, does not indicate changed contents. The r64 APK remains a Farm Frenzy 2 PASS baseline. The private-renderer JAR remains unverified because the recorded 21:16 device log used a different public-renderer artifact.

## Exclusions

No private keys, keystores, tokens or credentials are included. Rejected network experiments, frame-pace/JNI tuner experiments and unrelated transient logs are not promoted as baselines. The withdrawn overlay is deliberately separated and labelled to prevent accidental reuse.
