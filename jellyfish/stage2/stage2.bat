@echo off
set Path=D:\work\LLVM\llvm-build\Debug\shared;%Path%
set Path=D:\work\LLVM\llvm-build\Release\bin;%Path%
set Path=D:\mingw\msys\1.0\bin;D:\mingw\bin;%Path%
bash stage2.sh