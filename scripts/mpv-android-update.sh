#!/bin/bash

cd /home/mrturcot/github/mpv-android &&
git pull &&
while true; do
read -p "mpv-android: Do you want to proceed? (y/n) " yn
case $yn in
	[yY] ) echo ok, we will proceed;
		break;;
	[nN] ) echo exiting...;
		exit;;
	* ) echo invalid response;;
esac
done
rm -rf app/build &&
cd buildscripts &&
./download.sh &&
./buildall.sh --arch arm64 mpv &&
./buildall.sh --clean
