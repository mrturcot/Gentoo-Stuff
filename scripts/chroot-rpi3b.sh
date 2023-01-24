#!/bin/bash

echo ':aarch64:M::\x7fELF\x02\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\xb7\x00:\xff\xff\xff\xff\xff\xff\xff\xfc\xff\xff\xff\xff\xff\xff\xff\xff\xfe\xff\xff\xff:/usr/bin/qemu-aarch64:' > /proc/sys/fs/binfmt_misc/register

cd /mnt/rpi3b
mount -o bind /proc /mnt/rpi3b/proc
mount -o bind /sys /mnt/rpi3b/sys
mount -o bind /dev /mnt/rpi3b/dev
mount -o rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000 devpts /mnt/rpi3b/dev/pts -t devpts 
mount --bind /var/tmp /mnt/rpi3b/var/tmp
cp --dereference /etc/resolv.conf /mnt/rpi3b/etc
chroot . /bin/bash --login
