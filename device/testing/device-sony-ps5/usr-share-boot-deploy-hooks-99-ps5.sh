#!/bin/sh

# ps5-linux-loader expects initramfs in /boot/initrd.img or /boot/PS5/Linux/initrd.img, but mkinitfs emits it in /boot/initramfs
# TODO: remove this if/when ps5-linux-loader supports a configuration file or a symlink-aware filesystem
if [ -f /boot/initramfs ]; then
	mv /boot/initramfs /boot/PS5/Linux/initrd.img
fi

# populate /boot/PS5/Linux/cmdline.txt
generate-kernel-cmdline > /boot/PS5/Linux/cmdline.txt
