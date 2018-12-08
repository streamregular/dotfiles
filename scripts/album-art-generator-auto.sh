#!/bin/sh
for d in ./*/*/ ; do (cd "$d" && sh /home/george/Scripts/album-art-generator-manual.sh); done
