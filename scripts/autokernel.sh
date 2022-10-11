#!/bin/bash

eselect kernel set 2 &&
cd /usr/src/linux &&
zcat /proc/config.gz > /usr/src/linux/.config &&
make olddefconfig &&
make -j12 && make -j14 modules_install &&
make install &&
eclean-kernel -An2 &&
emerge @module-rebuild &&
emerge --depclean --ask
