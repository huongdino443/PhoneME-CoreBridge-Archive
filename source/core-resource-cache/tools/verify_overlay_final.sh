#!/usr/bin/env bash
set -euo pipefail
BASE=/home/ubuntu/upload/PhoneME-CoreBridge-0.1.163-launch-recovery.apk
APK=/home/ubuntu/upload/PhoneME-CoreBridge-0.1.163-resource-cache-overlay-r1.apk
NDK=/home/ubuntu/work/android-ndk/android-ndk-r27d
REA=$NDK/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-readelf
WORK=/home/ubuntu/work/phoneME-resource-cache-work/android-package-overlay-r1/final-validation
mkdir -p "$WORK"
rm -rf "$WORK/base" "$WORK/out"
mkdir -p "$WORK/base" "$WORK/out"
unzip -t "$APK" > "$WORK/unzip-test.txt"
unzip -q "$BASE" -d "$WORK/base"
unzip -q "$APK" -d "$WORK/out"
python3 - "$WORK/base" "$WORK/out" "$WORK/non-native.txt" <<'PY'
import hashlib, os, sys
base, out, report = sys.argv[1:]
def entries(root):
    result=[]
    for dp, _, fs in os.walk(root):
        for f in fs:
            p=os.path.relpath(os.path.join(dp,f),root)
            if p.startswith('META-INF/') or p.startswith('lib/arm64-v8a/'):
                continue
            result.append(p)
    return sorted(result)
def digest(path):
    h=hashlib.sha256()
    with open(path,'rb') as f:
        for block in iter(lambda:f.read(1024*1024), b''):
            h.update(block)
    return h.hexdigest()
bf, of = entries(base), entries(out)
missing=sorted(set(bf)-set(of)); added=sorted(set(of)-set(bf)); changed=[]
for p in sorted(set(bf)&set(of)):
    a,b=digest(os.path.join(base,p)),digest(os.path.join(out,p))
    if a != b: changed.append(p)
with open(report,'w') as f:
    f.write(f'base_non_native_entries={len(bf)}\n')
    f.write(f'out_non_native_entries={len(of)}\n')
    f.write(f'missing={missing}\nadded={added}\nchanged={changed}\n')
if missing or added or changed:
    raise SystemExit('non-native baseline mismatch')
PY
printf '%s\n' '=== apksigner ===' > "$WORK/report.txt"
cat "$APK.apksigner-verify.txt" >> "$WORK/report.txt"
printf '%s\n' '=== non-native ===' >> "$WORK/report.txt"
cat "$WORK/non-native.txt" >> "$WORK/report.txt"
printf '%s\n' '=== APK native entries ===' >> "$WORK/report.txt"
unzip -l "$APK" | grep -E 'lib/arm64-v8a/.*\.so$' >> "$WORK/report.txt"
printf '%s\n' '=== ELF metadata ===' >> "$WORK/report.txt"
for f in "$WORK/out"/lib/arm64-v8a/*.so; do
    echo "--- $(basename "$f") ---" >> "$WORK/report.txt"
    "$REA" -h "$f" | grep -E 'Class:|Machine:|Type:|Flags:' >> "$WORK/report.txt"
    "$REA" -d "$f" | grep -E 'SONAME|NEEDED|BIND_NOW|FLAGS_1' >> "$WORK/report.txt"
done
PRIMARY="$WORK/out/lib/arm64-v8a/libphoneMECoreBridge.so"
LEGACY="$WORK/out/lib/arm64-v8a/libphoneMECoreBridgeLegacy.so"
CPP="$WORK/out/lib/arm64-v8a/libc++_shared.so"
# JNI methods must remain in legacy, while the primary exports the C API surface.
printf 'legacy_jni_exports=' >> "$WORK/report.txt"
"$REA" --dyn-syms --wide "$LEGACY" | grep -c ' Java_com_phoneme_corebridge_CoreBridgeNative_' >> "$WORK/report.txt"
printf 'primary_phoneme_exports=' >> "$WORK/report.txt"
"$REA" --dyn-syms --wide "$PRIMARY" | grep -c ' phoneme_' >> "$WORK/report.txt"
# All C++/exception undefined names from primary must be supplied by libc++_shared;
# __cxa_*@LIBC and __cxa_finalize@LIBC are Android libc providers and are allowed.
"$REA" --dyn-syms --wide "$PRIMARY" | awk '$7=="UND"{print $8}' | grep -E '^(_ZN|_ZSt|__cxa|_Unwind)' | sort -u > "$WORK/primary-cpp-undefined.txt" || true
"$REA" --dyn-syms --wide "$CPP" | awk '$7!="UND"{print $8}' | sort -u > "$WORK/cpp-provider-definitions.txt"
comm -23 "$WORK/primary-cpp-undefined.txt" "$WORK/cpp-provider-definitions.txt" | grep -vE '^__cxa_(atexit|finalize)@LIBC$' > "$WORK/unresolved-cpp.txt" || true
printf 'unresolved_cpp_after_provider=' >> "$WORK/report.txt"
wc -l < "$WORK/unresolved-cpp.txt" >> "$WORK/report.txt"
if [ -s "$WORK/unresolved-cpp.txt" ]; then
    cat "$WORK/unresolved-cpp.txt" >> "$WORK/report.txt"
    exit 1
fi
printf '%s\n' '=== hash sidecars ===' >> "$WORK/report.txt"
sha256sum "$APK" >> "$WORK/report.txt"
cat "$APK.sha256" >> "$WORK/report.txt"
cat "$WORK/report.txt"
