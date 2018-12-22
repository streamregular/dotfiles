#!/bin/sh

export WINEARCH=win32
export WINEPREFIX="/home/$USER/.local/share/wineprefixes/osu"

wine $WINEPREFIX/drive_c/GOG\ Games/Terraria/Terraria.exe
