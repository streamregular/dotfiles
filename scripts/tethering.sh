#!/bin/sh
if [ "$1" == "--wired" ]; then
	ip link set enp0s29f7u7 down
	ip link set enp1s0 up
fi

if [ "$1" == "--usb" ]; then
	ip link set enp1s0 down
	ip link set enp0s29f7u7 up
fi

if [ "$1" == "--help" ]; then
	echo " "
	echo "=================================== Current ==================================="
	ip link
	echo "==============================================================================="
	echo " "
	echo Usage:
	echo "-h/--help:		Show this page."
	echo "--wired:		Use wired connection."
	echo "--usb:			Use Android tethering."
	echo " "
fi
