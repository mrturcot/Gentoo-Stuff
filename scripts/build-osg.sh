#!/bin/bash
## https://github.com/OpenMW/osg

cd $HOME/github/osg
rm -rf build
mkdir build && cd build
cmake ../ &&
make -j12
#sudo make install
