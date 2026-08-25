#!/usr/bin/env bash
set -euo pipefail

ROOT=/home/ubuntu/work/phoneME-resource-cache-work
ARCHIVE=/home/ubuntu/work/phoneME-resource-cache-android-arm64-make2/libphoneMECore.a
LEGACY_IN=/home/ubuntu/work/elf_analysis/corebridge.bin
NDK=/home/ubuntu/work/android-ndk/android-ndk-r27d
CLANG=$NDK/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++
SYSROOT=$NDK/toolchains/llvm/prebuilt/linux-x86_64/sysroot
CXX_SHARED=$SYSROOT/usr/lib/aarch64-linux-android/libc++_shared.so
OUT=$ROOT/android-overlay-arm64-hidden
LEGACY=$OUT/libphoneMECoreBridgeLegacy.so
NEW=$OUT/libphoneMECoreBridge.so
MAP=$OUT/exports.map

[[ -f "$ARCHIVE" ]] || { echo "missing archive: $ARCHIVE" >&2; exit 2; }
[[ -f "$LEGACY_IN" ]] || { echo "missing legacy bridge: $LEGACY_IN" >&2; exit 2; }
[[ -f "$CXX_SHARED" ]] || { echo "missing libc++ shared runtime: $CXX_SHARED" >&2; exit 2; }
rm -rf "$OUT"
mkdir -p "$OUT"
cat > "$MAP" <<'EOF'
PHONEME_CACHE_OVERLAY {
  global:
    phoneme_*;
  local: *;
};
EOF
cp --reflink=auto "$LEGACY_IN" "$LEGACY"
patchelf --set-soname libphoneMECoreBridgeLegacy.so "$LEGACY"

"$CLANG" \
  --target=aarch64-linux-android23 \
  --sysroot="$SYSROOT" \
  -shared -fuse-ld=lld \
  -Wl,-soname,libphoneMECoreBridge.so \
  -Wl,-z,relro,-z,now \
  -Wl,--no-as-needed \
  -Wl,--exclude-libs,ALL \
  -Wl,--version-script="$MAP" \
  -Wl,--whole-archive "$ARCHIVE" -Wl,--no-whole-archive \
  "$LEGACY" \
  -static-libstdc++ \
  -llog -landroid -lz -ldl -lm -lc \
  -o "$NEW"

# The NDK static libc++ archive leaves the C++ exception ABI provider dynamic.
# Declare the exact provider explicitly; package_android_overlay.sh copies it
# beside the two bridge libraries. Without this DT_NEEDED, Android would see
# unresolved std::__ndk1/__cxa symbols at load time.
patchelf --add-needed libc++_shared.so "$NEW"

printf '%s\n' '=== output ==='
ls -lh "$NEW" "$LEGACY"
printf '%s\n' '=== hashes ==='
sha256sum "$NEW" "$LEGACY"
printf '%s\n' '=== dependencies ==='
readelf -d "$NEW" | grep -E 'SONAME|NEEDED|FLAGS' || true
printf '%s\n' '=== exported surface ==='
readelf --dyn-syms --wide "$NEW" | grep -E 'Java_com_phoneme_corebridge_CoreBridgeNative|phoneme_' | sed -n '1,180p'
printf '%s\n' '=== undefined non-system symbols ==='
readelf --dyn-syms --wide "$NEW" | awk '$7=="UND" {print $8}' | grep -vE '^(__android_log_print|__cxa|_ZNSt|_ZSt|__gxx|pthread|clock|mem|str|dl|android|AChoreographer|ANative|JNI|inflate|deflate|zlib|fopen|fclose|read|write|open|close|stat|mmap|munmap|madvise|unlink|rename|lseek|fstat|fsync|mkdir|rmdir|access|errno|abort|calloc|free|malloc|realloc|memcpy|memmove|memset|strlen|strcmp|strncmp|strncpy|snprintf|fprintf|fwrite|fputc|stderr|stdout|stdin|exit|sqrt|pow|sin|cos|tan|log|exp|floor|ceil|round|isnan|isfinite|tolower|toupper|isspace|isdigit|atoi|atoll|strtoul|strtoull|qsort|bsearch|time|gettimeofday|sched_)' | sed -n '1,100p' || true
