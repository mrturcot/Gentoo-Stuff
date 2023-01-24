#!/bin/bash
## https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator

cd $HOME/github/vkmemory
rm -rf build
mkdir -pv build
cd build
cmake .. &&
make -j14
