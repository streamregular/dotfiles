#!/bin/sh
for d in /home/$USER/Archives/Music/*/*/ ; do (cd "$d" && convert folder.png -resize $1x$1 folder$1.png); done
