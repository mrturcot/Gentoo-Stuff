#!/bin/bash
## https://github.com/snes9xgit/snes9x

cd $HOME/github/snes9x
cd gtk && rm -rf build
meson build -Dwayland=false --buildtype=release --strip &&
cd build
ninja -j14
