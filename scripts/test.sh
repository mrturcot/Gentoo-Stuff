#!/bin/bash

if [[ $(eclean-kernel -n5 | grep 'outdated') ]]; then
	grub-mkconfig -o /boot/grub/grub.cfg
else
	echo -en '\n'
fi