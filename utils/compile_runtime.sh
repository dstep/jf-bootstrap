#!/bin/bash

set -e

pushd .. >nul

mkdir -p build/runtime/obj
rm -f "build/runtime/obj/*.o"

echo "Compiling runtime"

for f in runtime/src/*.c
do
	clang-cl -m64 -D_CRT_SECURE_NO_WARNINGS -Z7 -MDd -Iruntime/include -I"$LLVM_SOURCE/include" -I"$LLVM_BUILD/include" -c -o "build/runtime/obj/${f#runtime/src/}.o" $f
done

popd >nul