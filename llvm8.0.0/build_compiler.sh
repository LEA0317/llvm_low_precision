#!/bin/sh
cd llvm
mkdir build
cd build
cmake -DLLVM_ENABLE_PROJECTS=clang -DLLVM_TARGETS_TO_BUILD=X86 -G "Unix Makefiles" ../
make -j `nproc`
