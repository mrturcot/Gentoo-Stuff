#!/bin/bash
## https://github.com/dhewm/dhewm3

cd $HOME/github/dhewm3
rm -rf build
mkdir -p build && cd build
cmake ../neo &&
make -j14
