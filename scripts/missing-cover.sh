#!/bin/sh
find /home/$USER/Archives/Music/ -mindepth 2 -maxdepth 2 -type d '!' -exec test -e "{}/folder.png" ';' -print
