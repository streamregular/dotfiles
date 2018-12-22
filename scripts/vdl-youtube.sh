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

if [ "$1" == "10" ]; then
  echo -n "Name for the MV: "
  read answer
  echo ' '
  echo -n "Link 1: "
  read link1
  echo -n "Link 2: "
  read link2
  echo -n "Link 3: "
  read link3
  echo -n "Link 4: "
  read link4
  echo -n "Link 5: "
  read link5
  echo -n "Link 6: "
  read link6
  echo -n "Link 7: "
  read link7
  echo -n "Link 8: "
  read link8
  echo -n "Link 9: "
  read link9
  echo -n "Link 10: "
  read link10
  youtube-dl --all-subs --sub-format srt -f 136+140 -o ./newmv.vdd $link1 && mv ./*.vdd.mp4 "./$answer ep.01.mp4"
  youtube-dl --all-subs --sub-format srt -f 136+140 -o ./newmv.vdd $link2 && mv ./*.vdd.mp4 "./$answer ep.02.mp4"
  youtube-dl --all-subs --sub-format srt -f 136+140 -o ./newmv.vdd $link3 && mv ./*.vdd.mp4 "./$answer ep.03.mp4"
  youtube-dl --all-subs --sub-format srt -f 136+140 -o ./newmv.vdd $link4 && mv ./*.vdd.mp4 "./$answer ep.04.mp4"
  youtube-dl --all-subs --sub-format srt -f 136+140 -o ./newmv.vdd $link5 && mv ./*.vdd.mp4 "./$answer ep.05.mp4"
  youtube-dl --all-subs --sub-format srt -f 136+140 -o ./newmv.vdd $link6 && mv ./*.vdd.mp4 "./$answer ep.06.mp4"
  youtube-dl --all-subs --sub-format srt -f 136+140 -o ./newmv.vdd $link7 && mv ./*.vdd.mp4 "./$answer ep.07.mp4"
  youtube-dl --all-subs --sub-format srt -f 136+140 -o ./newmv.vdd $link8 && mv ./*.vdd.mp4 "./$answer ep.08.mp4"
  youtube-dl --all-subs --sub-format srt -f 136+140 -o ./newmv.vdd $link9 && mv ./*.vdd.mp4 "./$answer ep.09.mp4"
  youtube-dl --all-subs --sub-format srt -f 136+140 -o ./newmv.vdd $link10 && mv ./*.vdd.mp4 "./$answer ep.10.mp4"
else
  echo -n "Name for the MV: "
  read answer
  echo ' '
  youtube-dl -f 136+140 -o /home/$USER/Vídeos/newmv.vdd $1 && cd /home/$USER/Vídeos && mv ./*.vdd.mp4 "./$answer.mp4"
fi
