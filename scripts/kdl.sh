#!/bin/sh

if [ "$#" -eq 2 ]; then
  echo ' '
  echo "Too many arguments. You're only supposed to provide one link."
  echo ' '
  exit 1
fi

if [ "$#" -eq 0 ]; then
  echo ' '
  echo "Please provide one YouTube link."
  echo ' '
  exit 1
fi

echo -n "Name for the MV: "
read answer
echo ' '
youtube-dl -f 136+140 -o /home/$USER/Archives/Videos/MVs/newmv.vdd $1 && cd /home/$USER/Archives/Videos/MVs/ && mv ./*.vdd.mp4 "./$answer.mp4"
