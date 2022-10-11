#!/bin/bash

cd ~/github/vkQuake2 &&
git pull &&
while true; do
read -p "vkquake2: Do you want to proceed? (y/n) " yn
case $yn in
	[yY] ) echo ok, we will proceed;
		break;;
	[nN] ) echo exiting...;
		exit;;
	* ) echo invalid response;;
esac
done
cd linux &&
rm -rf releasex64-glibc &&
make clean &&
make -j12 release &&
cp -r /mnt/hdd2/Games/vkquake2/baseq2/* /home/mrturcot/github/vkQuake2/linux/releasex64-glibc/baseq2/ &&
cp -r /mnt/hdd2/Games/vkquake2/rogue/* /home/mrturcot/github/vkQuake2/linux/releasex64-glibc/rogue/ &&
cp -r /mnt/hdd2/Games/vkquake2/xatrix/* /home/mrturcot/github/vkQuake2/linux/releasex64-glibc/xatrix/
