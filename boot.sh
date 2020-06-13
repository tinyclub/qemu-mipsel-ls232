#!/bin/bash

QVER=loongson-v1.0
# Based on v2.6.32
KVER=v2.6.32-r190726
RVER=2016.05
# Minimal memory for boot
MEM=256M

./qemu/$QVER/bin/qemu-system-mipsel -M ls232 -m $MEM -no-reboot -nographic \
	-kernel kernel/$KVER/vmlinux \
	-initrd root/$RVER/rootfs.cpio.gz \
	-append 'route=10.66.0.5 root=/dev/ram0 console=ttyS0' \
	-net nic,model=synopgmac \
	#-net tap
