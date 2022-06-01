#!/bin/bash
eselect kernel set 2 &&
cd /usr/src/linux &&
zcat /proc/config.gz > /usr/src/linux/.config &&
make olddefconfig &&
make -j17 && make -j17 modules_install &&
make install &&
genkernel --install --kernel-config=/usr/src/linux/.config initramfs &&
eclean-kernel -An2 &&
emerge @module-rebuild &&
smart-live-rebuild &&
emerge --depclean --ask
