#!/bin/sh

rm -rf ~/Scripts/.memo
echo "$(todo)" >> ~/Scripts/.memo
a=$(cat ~/Scripts/.memo)

notify-send -t 2000 "$a"
