#!/bin/bash
### http://www.mplayerhq.hu/design7/dload.html
## svn checkout svn://svn.mplayerhq.hu/mplayer/trunk mplayer

cd $HOME/github/mplayer
svn update
make clean
rm -rf ffmpeg
./configure &&
make -j14 &&
sudo make install
