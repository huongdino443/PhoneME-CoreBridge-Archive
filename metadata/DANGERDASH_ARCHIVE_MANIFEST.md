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


## Addendum — 2026-08-28 semantic port analysis

The following additions preserve the two device logs and the analysis that followed the plain-Canvas/GameCanvas experiments:

| Path | Status | Provenance / intended use |
|---|---|---|
| `logs/dangerdash/PhoneME-CoreBridge-20260827-230036.log.txt` | Device evidence, failed experiment | Exact log for superclass-only Canvas→GameCanvas mutation; registration reached 1 but display remained black. |
| `logs/dangerdash/PhoneME-CoreBridge-20260827-235520.log.txt` | Device evidence, failed experiment | Exact log for GameCanvas graphics attachment/flush follow-up; registration, attachment, paint and flush counters advanced, but frame stayed black. |
| `artifacts/jar/experimental/dangerdash/withdrawn/DangerDash-plain-canvas-gamecanvas-patched.jar` | Withdrawn experiment | Preserved byte-for-byte as tested evidence; not a fix or baseline. |
| `artifacts/jar/experimental/dangerdash/withdrawn/DangerDash-gamecanvas-getgraphics-flush-patched.jar` | Withdrawn experiment | Preserved byte-for-byte as tested evidence; not a fix or baseline. |
| `reports/dangerdash/dangerdash_plain_canvas_port_design.md` | Analysis/design | Stable-to-CoreBridge semantic mapping, generic native correction contract and recovery boundary. |
| `reports/dangerdash/plain_canvas_static_evidence_r64.md` | Read-only evidence | ELF/DWARF, symbol and primitive observations for exact r64 binary. |
| `reports/dangerdash/plain_canvas_root_cause_evidence.md` | Evidence summary | Revised conclusion after registration/attachment/flush experiments. |
| `reports/dangerdash/dangerdash_stable_comparison_memo.md` | Updated analysis memo | Stable/CoreBridge comparison including 28-08-2026 static evidence and decision not to create another artifact. |
| `source/dangerdash/patches/plain-canvas-gamecanvas/` | Source/provenance | Complete patch directory, report and original sidecar for the superclass experiment. |
| `source/dangerdash/patches/gamecanvas-graphics/` | Source/provenance | Complete patch directory, transformer class, report and original sidecar for the getGraphics/flush experiment. |

The read-only ELF review confirms that r64 contains Graphics, Image, GraphicsStore and Nokia DirectGraphics handlers. It does not prove that Danger Dash's paint Graphics, DirectGraphics target and publication target are the same object. The new design therefore ports only target ownership, dirty tracking and publication invariants; it does not copy Stable JNI/Bitmap/ShortBuffer ABI or force plain Canvas into GameCanvas.

The source inventory remains incomplete for a safe native rebuild: `CanvasRuntime.cpp/.hpp`, `GraphicsNatives.cpp`, `ImageNatives.cpp`, `GraphicsStore` definitions, Android JNI implementation and the exact CMake/NDK build graph are absent. The binary `publish_canvas_graphics` signature also differs from the remaining Runtime snapshot, so that snapshot is not treated as exact r64 build source.

No private key, keystore, password, token, credential or user login data was added. r63 lifecycle/fallback and r64 Farm Frenzy 2 PASS artifacts remain untouched.
