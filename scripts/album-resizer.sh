#!/bin/sh
for d in /home/$USER/Archives/Music/*/*/ ; do (cd "$d" && convert folder.png -resize 80x80 folder80.png); done
