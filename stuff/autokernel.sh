#!/bin/bash
eselect kernel set 2 &&
cd /usr/src/linux &&
zcat /proc/config.gz > /usr/src/linux/.config &&
make olddefconfig &&
make -j16 && make -j16 modules_install &&
make install &&
genkernel --install --kernel-config=/usr/src/linux/.config initramfs &&
emerge @module-rebuild &&
eclean-kernel -An2
