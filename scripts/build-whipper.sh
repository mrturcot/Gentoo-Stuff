#!/bin/bash
## https://github.com/whipper-team/whipper

cd $HOME/github/whipper
rm -rf build
python3 setup.py install --user
