#!/bin/sh
#Cmus_remote=$(cmus-remote -Q)
#Cur_track=$(echo "$Cmus_remote" | grep tag | head -n 3 | sort -r | cut -d ' ' -f 3- )
#notify-send -i multimedia-volume-control -t 2000 "$Cur_track"

Cmus_remote=$(cmus-remote -Q)
Cur_artist=$(echo "$Cmus_remote" | grep artist | head -n 1 | cut -d ' ' -f 3- )
Cur_song=$(echo "$Cmus_remote" | grep title | head -n 1 | cut -d ' ' -f 3- )
Cur_album=$(echo "$Cmus_remote" | grep album | head -n 1 | cut -d ' ' -f 3- )
Cmus_output=$(printf "$Cur_song\n$Cur_artist\n$Cur_album")
notify-send -i multimedia-volume-control -t 2000 "$Cmus_output"
