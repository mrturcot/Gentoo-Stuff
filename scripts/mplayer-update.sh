#!/bin/bash

cd ~/github/mplayer &&
svn update &&
while true; do
read -p "mplayer: Do you want to proceed? (y/n) " yn
case $yn in
	[yY] ) echo ok, we will proceed;
		break;;
	[nN] ) echo exiting...;
		exit;;
	* ) echo invalid response;;
esac
done
make clean &&
./configure &&
make -j14 &&
sudo make install
