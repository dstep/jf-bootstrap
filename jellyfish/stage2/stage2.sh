#!/bin/bash

cd "$(dirname "$0")"

LLVM_ROOT=/d/work/LLVM
LLVM_SOURCE=$LLVM_ROOT/llvm-src
LLVM_BUILD=$LLVM_ROOT/llvm-build

set -e

pushd ../self_output
echo "Compiling Jellyfish code"
for f in *.ll
do
	echo "Compiling $f..";
	llc -filetype=obj -o ${f%.ll}.o $f
done

popd

mkdir -p ../stage2out
echo "Compiling stage2 runtime code"
pushd ../runtime/src

for f in *.c
do
	clang -m64 -D_CRT_SECURE_NO_WARNINGS -g -I../include -I"$LLVM_SOURCE/include" -I"$LLVM_BUILD/include" -c -o ../../stage2out/$f.o $f
done

ar rcs ../../stage2out/jfruntime.lib ../../stage2out/*.o 

popd

echo "Linking stage2 executable"

clang -m64 -Wl,-subsystem:console -L"$LLVM_BUILD/Debug/shared" -lLLVM -o../stage2out/jfprogram.exe ../self_output/*.o ../stage2out/*.o

echo "Running stage2 executable"
../stage2out/jfprogram.exe