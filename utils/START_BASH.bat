@echo off

set LLVM_ROOT=/d/work/LLVM
set LLVM_SOURCE=%LLVM_ROOT%/llvm-src
set LLVM_BUILD=%LLVM_ROOT%/llvm-build


set Path=D:\work\LLVM\llvm-build\Debug\shared;%Path%
set Path=D:\work\LLVM\llvm-build\Release\bin;%Path%
set Path=D:\mingw\msys\1.0\bin;D:\mingw\bin;%Path%
start bash --login -i