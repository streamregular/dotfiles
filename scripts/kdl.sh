#!/bin/sh

if [ "$#" -eq 2 ]; then
  echo "Too many arguments. You're only supposed to provide one link."
fi

if [ "$#" -eq 0 ]; then
  echo "Please provide one YouTube link."
fi

echo -n "Name for the MV: "
read answer
echo ' '
youtube-dl -f -o ./%(title)s.%(ext)s.vdd 136+140 $1 && mv *.vdd $answer.mp4
