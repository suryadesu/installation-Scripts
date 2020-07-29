#!/usr/bin/env sh

git clone -b release/9.x --single-branch https://github.com/llvm/llvm-project.git
cd llvm-project ; mkdir build ; cd build
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_PROJECTS=clang -DLLVM_TARGETS_TO_BUILD=X86 -DLLVM_ENABLE_ASSERTIONS=On -DLLVM_USE_LINKER=gold  -G "Unix Makefiles" ../llvm
make
export PATH=$PATH:~/...(directory)/build/bin/
