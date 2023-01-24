#!/bin/bash

echo ':aarch64:M::\x7fELF\x02\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\xb7\x00:\xff\xff\xff\xff\xff\xff\xff\xfc\xff\xff\xff\xff\xff\xff\xff\xff\xfe\xff\xff\xff:/usr/bin/qemu-aarch64:' > /proc/sys/fs/binfmt_misc/register

cd /usr/aarch64-unknown-linux-gnu
mount -t proc none proc
mount -o bind /sys sys
mount -o bind /dev dev
mount -o bind /var/db/repos/gentoo var/db/repos/gentoo
mount -o bind /var/db/repos/4nykey var/db/repos/4nykey
mount -o bind /var/tmp var/tmp
cp --dereference /etc/resolv.conf etc
chroot . /bin/bash --login
