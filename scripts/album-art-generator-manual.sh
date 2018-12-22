#!/bin/sh

origin=$(ls | grep mp3 | head -n 01)

ffmpeg -n -i "$origin" -an -vcodec copy folder.png
