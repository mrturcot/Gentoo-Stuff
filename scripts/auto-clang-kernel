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
## Running make olddefconfig will keep all of the options from the old 
## .config and set the new options to their recommended (i.e. default)
echo "make olddefconfig"
sleep 1
make CC=clang LD=ld.lld NM=llvm-nm AR=llvm-ar LLVM_IAS=1 olddefconfig
echo "make && install kernel"
sleep 1
make CC=clang LD=ld.lld NM=llvm-nm AR=llvm-ar LLVM_IAS=1 -j14 &&
make CC=clang LD=ld.lld NM=llvm-nm AR=llvm-ar LLVM_IAS=1 -j14 modules_install &&
make install
echo "remove all old built kernels, files & build directories. Keep 5"
sleep 1
if [[ $(eclean-kernel -n5 | grep 'outdated') ]]; then
	grub-mkconfig -o /boot/grub/grub.cfg
else
	echo -en '\n'
fi
echo "rebuild kernel modules"
sleep 1
emerge @module-rebuild
