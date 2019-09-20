#!/bin/sh
cd llvm
mkdir build
cd build
cmake -DLLVM_ENABLE_PROJECTS=clang -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_LLD=On -DCMAKE_C_COMPILER=clang-8 -DCMAKE_CXX_COMPILER=clang++-8 -DLLVM_TARGETS_TO_BUILD=X86 -G "Unix Makefiles" ../
make -j `nproc`
