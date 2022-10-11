#!/bin/bash

cd ~/github/mlt &&
git pull &&
while true; do
read -p "MLT: Do you want to proceed? (y/n) " yn
case $yn in
	[yY] ) echo ok, we will proceed;
		break;;
	[nN] ) echo exiting...;
		exit;;
	* ) echo invalid response;;
esac
done
cmake --build . --target clean &&
cmake . &&
cmake --build . -j12 &&
sudo cmake --install .
