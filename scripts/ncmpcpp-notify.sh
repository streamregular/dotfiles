#!/bin/sh

mpd_artist=$(ncmpcpp --current-song "%a")
mpd_song=$(ncmpcpp --current-song "%t")
mpd_album=$(ncmpcpp --current-song "%b")
mpd_folder=$(ncmpcpp --current-song "%D")
mpd_output=$(printf "$mpd_song\n$mpd_artist\n$mpd_album")

notify-send --icon="/home/$USER/Archives/Music/$mpd_folder/folder120.png" -t 1500 "$mpd_output"
