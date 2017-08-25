#!/bin/bash

set -e

target_dir="`readlink -f $1`"

cd "$(dirname "$0")/.."

pushd $target_dir >nul
echo "[ll2exe] Compiling Jellyfish bitcode"

mkdir -p obj

for f in ll-bitcode/*.ll
do	
	clang-cl -Wno-override-module -m64 -Z7 -MDd -c -o "obj/${f#ll-bitcode/}.o" "$f"
done
popd >nul

echo "[ll2exe] Linking executable"
mkdir -p $target_dir/bin
clang-cl -m64 -Z7 -MDd -Wl,-subsystem:console -o$target_dir/bin/jfprogram.exe $target_dir/obj/*.o build/runtime/obj/*.o "$LLVM_BUILD/Debug/shared/LLVM.lib"
