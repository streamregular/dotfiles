#!/bin/sh
#directorycount=$(ls -l .vim | grep -c ^d)
#musik=$(ls | head -n $directorycount)

origin=$(ls | grep m4a | head -n 01)

#for dir in ./*; do
#    cd echo "$(basename "$dir")" | head -n 01
#done

ffmpeg -n -i "$origin" -an -vcodec copy folder.png
