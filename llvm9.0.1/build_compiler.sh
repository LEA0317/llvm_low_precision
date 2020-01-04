#!/bin/sh
cd llvm
mkdir build
cd build
cmake -DLLVM_ENABLE_PROJECTS=clang -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_LLD=On -DLLVM_TARGETS_TO_BUILD=X86 -G Ninja ../
ninja all
