#!/bin/sh

Cmus_remote=$(cmus-remote -Q)

Cur_artist=$(echo "$Cmus_remote" | grep artist | head -n 1 | cut -d ' ' -f 3- )

Cur_song=$(echo "$Cmus_remote" | grep title | head -n 1 | cut -d ' ' -f 3- )

notify-send -i multimedia-volume-control -t 2000 "$Cur_artist - $Cur_song"
