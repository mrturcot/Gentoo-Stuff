#!/bin/bash

cd ~/github/vkQuake &&
git pull &&
while true; do
read -p "vkquake: Do you want to proceed? (y/n) " yn
case $yn in
	[yY] ) echo ok, we will proceed;
		break;;
	[nN] ) echo exiting...;
		exit;;
	* ) echo invalid response;;
esac
done
rm -rf build &&
meson build && ninja -j12 -C build
