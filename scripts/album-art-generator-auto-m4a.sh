#!/bin/sh
for d in /home/$USER/Archives/Music/*/*/ ; do (cd "$d" && sh /home/$USER/Scripts/album-art-generator-manual-m4a.sh); done
