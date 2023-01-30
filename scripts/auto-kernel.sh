#!/bin/bash

echo "selecting new kernel"
sleep 1
eselect kernel set 2
echo "going to kernel source"
sleep 1
cd /usr/src/linux
# sys-kernel/gentoo-sources need to be emerged with  
# (USE=experimental) to have /proc/config.gz
echo "copying currently in-use kernel .config to new sources"
sleep 1
zcat /proc/config.gz > /usr/src/linux/.config
## Update current config utilising a provided .config as base
echo "make oldconfig"
sleep 1
make -j14 oldconfig
make -j14 modules_prepare
echo "make && install kernel"
sleep 1
make -j14
make -j14 install
make -j14 modules_install
echo "remove all old built kernels, files & build directories. Keep 5"
sleep 1
if [[ $(eclean-kernel -n5 | grep 'outdated') ]]; then
	grub-mkconfig -o /boot/grub/grub.cfg
else
	echo -en '\n'
fi
echo "rebuild kernel modules"
sleep 1
emerge --ask --verbose @module-rebuild
