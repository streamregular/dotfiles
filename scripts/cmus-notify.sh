#!/bin/sh

Cmus_remote=$(cmus-remote -Q)

Cur_artist=$(echo "$Cmus_remote" | grep artist | head -n 1 | cut -d ' ' -f 3- )

Cur_song=$(echo "$Cmus_remote" | grep title | head -n 1 | cut -d ' ' -f 3- )

Cur_album=$(echo "$Cmus_remote" | grep "album " | head -n 1 | cut -d ' ' -f 3- )

Cmus_output=$(printf "$Cur_song\n$Cur_artist\n$Cur_album")

Cur_path=$(echo "$Cmus_remote" | grep file | head -n 1 | cut -d ' ' -f 2- | cut -c 29- | cut -d '/' -f -2)

Cmus_path_cut=$(echo "$Cur_path/")

notify-send --icon="/home/$USER/Archives/Music/$Cur_path/folder120.png" -t 1500 "$Cmus_output"
