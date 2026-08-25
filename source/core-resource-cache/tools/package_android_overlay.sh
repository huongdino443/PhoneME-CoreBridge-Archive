#!/usr/bin/env bash
set -euo pipefail

ROOT=/home/ubuntu/work/phoneME-resource-cache-work
BASE=/home/ubuntu/upload/PhoneME-CoreBridge-0.1.163-launch-recovery.apk
OVERLAY=$ROOT/android-overlay-arm64-hidden/libphoneMECoreBridge.so
LEGACY=$ROOT/android-overlay-arm64-hidden/libphoneMECoreBridgeLegacy.so
NDK=/home/ubuntu/work/android-ndk/android-ndk-r27d
CXX_SHARED=$NDK/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android/libc++_shared.so
BUILD_TOOLS=/home/ubuntu/work/android-build-tools/android-13
ZIPALIGN=$BUILD_TOOLS/zipalign
APKSIGNER=$BUILD_TOOLS/apksigner
KEYSTORE=/home/ubuntu/PhoneME-Turbo-CoreBridge/android/debug-0163.keystore
OUT=/home/ubuntu/upload/PhoneME-CoreBridge-0.1.163-resource-cache-overlay-r1.apk
WORK=$ROOT/android-package-overlay-r1
UNALIGNED=$WORK/unsigned-aligned.apk
UNSIGNED=$WORK/unsigned.apk

for f in "$BASE" "$OVERLAY" "$LEGACY" "$CXX_SHARED" "$ZIPALIGN" "$APKSIGNER" "$KEYSTORE"; do
  [[ -f "$f" ]] || { echo "missing file: $f" >&2; exit 2; }
done
rm -rf "$WORK"
mkdir -p "$WORK/base" "$WORK/stage"
unzip -q "$BASE" -d "$WORK/base"
rm -f "$WORK/base/META-INF"/*.SF "$WORK/base/META-INF"/*.RSA "$WORK/base/META-INF"/*.DSA "$WORK/base/META-INF"/*.EC 2>/dev/null || true

# Preserve all Java/resources/manifest entries. Replace only arm64 native payload,
# while retaining the original JNI/logging bridge as a dependency of the overlay.
install -m 0644 "$OVERLAY" "$WORK/base/lib/arm64-v8a/libphoneMECoreBridge.so"
install -m 0644 "$LEGACY" "$WORK/base/lib/arm64-v8a/libphoneMECoreBridgeLegacy.so"
install -m 0644 "$CXX_SHARED" "$WORK/base/lib/arm64-v8a/libc++_shared.so"
(
  cd "$WORK/base"
  zip -q -r "$UNSIGNED" .
)
"$ZIPALIGN" -f -p 4 "$UNSIGNED" "$UNALIGNED"
"$APKSIGNER" sign --ks "$KEYSTORE" --ks-pass pass:android --key-pass pass:android --out "$OUT" "$UNALIGNED"
"$APKSIGNER" verify --verbose "$OUT" > "$OUT.apksigner-verify.txt"
sha256sum "$OUT" > "$OUT.sha256"

printf '%s\n' '=== artifact ==='
ls -lh "$OUT" "$OUT.sha256" "$OUT.apksigner-verify.txt"
printf '%s\n' '=== APK entries ==='
unzip -l "$OUT" | grep -E 'classes.dex|AndroidManifest.xml|lib/arm64-v8a/.*\.so$' || true
printf '%s\n' '=== identity hashes ==='
printf 'baseline classes.dex: '; unzip -p "$BASE" classes.dex | sha256sum
printf 'overlay classes.dex:  '; unzip -p "$OUT" classes.dex | sha256sum
printf 'baseline manifest:    '; unzip -p "$BASE" AndroidManifest.xml | sha256sum
printf 'overlay manifest:     '; unzip -p "$OUT" AndroidManifest.xml | sha256sum
printf 'overlay native:       '; unzip -p "$OUT" lib/arm64-v8a/libphoneMECoreBridge.so | sha256sum
printf 'legacy native:        '; unzip -p "$OUT" lib/arm64-v8a/libphoneMECoreBridgeLegacy.so | sha256sum
printf 'baseline native:      '; unzip -p "$BASE" lib/arm64-v8a/libphoneMECoreBridge.so | sha256sum
printf '%s\n' '=== ELF overlay dependencies ==='
readelf -d "$OVERLAY" | grep -E 'SONAME|NEEDED|FLAGS' || true
printf '%s\n' '=== ELF legacy SONAME ==='
readelf -d "$LEGACY" | grep -E 'SONAME|NEEDED|FLAGS' || true
printf '%s\n' '=== build metadata ==='
printf 'BASE=%s\nPATCH=decoded-image persistent cache + bounded prewarm/decode overlay\nJAVA_AND_MANIFEST=unchanged from clean 0.1.163 checkpoint\nNATIVE=overlay Core cache + legacy JNI/logging dependency + libc++_shared.so provider
NETWORK=unchanged; deprecated network experiments excluded\nLOGGING=unchanged; cbDebug/fprintf/trace retained\nDEVICE_STATUS=not yet tested on device\n' "$BASE" > "$OUT.build-info.txt"
chmod 755 "$OUT" "$OUT.sha256" "$OUT.apksigner-verify.txt" "$OUT.build-info.txt"
