#!/bin/sh

origin=$(ls | grep m4a | head -n 01)

ffmpeg -n -i "$origin" -an -vcodec copy folder.png
