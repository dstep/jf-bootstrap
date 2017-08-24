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
	#llc -filetype=obj -mtriple=x86_64-pc-windows-msvc -o ${f%.ll}.o $f
	
	clang-cl -Wno-override-module -m64 -Z7 -MTd -c -o "${f%.ll}.o" "$f"
done

popd

mkdir -p ../stage2out
echo "Compiling stage2 runtime code"
pushd ../runtime/src

for f in *.c
do
	clang-cl -m64 -D_CRT_SECURE_NO_WARNINGS -Z7 -MTd -I../include -I"$LLVM_SOURCE/include" -I"$LLVM_BUILD/include" -c -o ../../stage2out/$f.o $f
done


popd

echo "Linking stage2 executable"

clang -m64 -Wl,-subsystem:console -g -L"$LLVM_BUILD/Debug/shared" -lLLVM -o../stage2out/jfprogram.exe ../self_output/*.o ../stage2out/*.o

#echo "Running stage2 executable"
#../stage2out/jfprogram.exe