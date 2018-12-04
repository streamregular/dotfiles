#!/bin/sh

if [ "$1" == "-h" ]; then
 echo " "
 echo "   Script to blur images using imagemagick as a backend."
 echo "    Usage:"
 echo "     blur original.png value output.png"
 echo " "
 exit 0
fi

convert $1 -blur $2 $3
