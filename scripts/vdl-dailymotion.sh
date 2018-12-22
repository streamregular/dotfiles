#!/bin/sh

if [ "$#" -eq 2 ]; then
  echo ' '
  echo "Usage: sh ~/Scripts/vdl-dailymotion.sh [dailymotionlink] --video-password [password]."
  echo ' '
  exit 1
fi

if [ "$#" -eq 0 ]; then
  echo ' '
  echo "Please provide one Dailymotion link."
  echo ' '
  exit 1
fi

if [ "$1" == "11" ]; then
  echo -n "Name for the MV: "
  read answer
  echo -n "Video password: "
  read password
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
  echo -n "Link 11: "
  read link11
  youtube-dl -f http-720 -o ./newmv.vdd $link1 --video-password $password && mv ./*.vdd "./$answer ep.01.mp4"
  youtube-dl -f http-720 -o ./newmv.vdd $link2 --video-password $password && mv ./*.vdd "./$answer ep.02.mp4"
  youtube-dl -f http-720 -o ./newmv.vdd $link3 --video-password $password && mv ./*.vdd "./$answer ep.03.mp4"
  youtube-dl -f http-720 -o ./newmv.vdd $link4 --video-password $password && mv ./*.vdd "./$answer ep.04.mp4"
  youtube-dl -f http-720 -o ./newmv.vdd $link5 --video-password $password && mv ./*.vdd "./$answer ep.05.mp4"
  youtube-dl -f http-720 -o ./newmv.vdd $link6 --video-password $password && mv ./*.vdd "./$answer ep.06.mp4"
  youtube-dl -f http-720 -o ./newmv.vdd $link7 --video-password $password && mv ./*.vdd "./$answer ep.07.mp4"
  youtube-dl -f http-720 -o ./newmv.vdd $link8 --video-password $password && mv ./*.vdd "./$answer ep.08.mp4"
  youtube-dl -f http-720 -o ./newmv.vdd $link9 --video-password $password && mv ./*.vdd "./$answer ep.09.mp4"
  youtube-dl -f http-720 -o ./newmv.vdd $link10 --video-password $password && mv ./*.vdd "./$answer ep.10.mp4"
  youtube-dl -f http-720 -o ./newmv.vdd $link11 --video-password $password && mv ./*.vdd "./$answer ep.11.mp4"
fi

if [ "$1" == "ski" ]; then
  echo -n "Name for the MV: "
  read answer
  echo -n "Video password: "
  read password
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
  youtube-dl -f http-480 -o /home/$USER/Vídeos/newmv.vdd $link1 --video-password $password | grep "%" && cd /home/$USER/Vídeos && mv ./*.vdd "./$answer ep.03.mp4"
  youtube-dl -f http-480 -o /home/$USER/Vídeos/newmv.vdd $link2 --video-password $password | grep "%" && cd /home/$USER/Vídeos && mv ./*.vdd "./$answer ep.04.mp4"
  youtube-dl -f http-480 -o /home/$USER/Vídeos/newmv.vdd $link3 --video-password $password | grep "%" && cd /home/$USER/Vídeos && mv ./*.vdd "./$answer ep.05.mp4"
  youtube-dl -f http-480 -o /home/$USER/Vídeos/newmv.vdd $link4 --video-password $password | grep "%" && cd /home/$USER/Vídeos && mv ./*.vdd "./$answer ep.06.mp4"
  youtube-dl -f http-480 -o /home/$USER/Vídeos/newmv.vdd $link5 --video-password $password | grep "%" && cd /home/$USER/Vídeos && mv ./*.vdd "./$answer ep.07.mp4"
  youtube-dl -f http-480 -o /home/$USER/Vídeos/newmv.vdd $link6 --video-password $password | grep "%" && cd /home/$USER/Vídeos && mv ./*.vdd "./$answer ep.08.mp4"
  youtube-dl -f http-480 -o /home/$USER/Vídeos/newmv.vdd $link7 --video-password $password | grep "%" && cd /home/$USER/Vídeos && mv ./*.vdd "./$answer ep.09.mp4"
  youtube-dl -f http-480 -o /home/$USER/Vídeos/newmv.vdd $link8 --video-password $password | grep "%" && cd /home/$USER/Vídeos && mv ./*.vdd "./$answer ep.10-1.mp4"
  youtube-dl -f http-480 -o /home/$USER/Vídeos/newmv.vdd $link9 --video-password $password | grep "%" && cd /home/$USER/Vídeos && mv ./*.vdd "./$answer ep.10-2.mp4"
fi

if [ "$#" -eq 3 ]; then
  echo -n "Name for the MV: "
  read answer
  echo ' '
  youtube-dl -f http-480 -o /home/$USER/Vídeos/newmv.vdd $1 $2 $3 && cd /home/$USER/Vídeos && mv ./*.vdd "./$answer.mp4"
else
  echo -n "Name for the MV: "
  read answer
  echo ' '
  youtube-dl -f http-720 -o /home/$USER/Vídeos/newmv.vdd $1 && cd /home/$USER/Vídeos && mv ./*.vdd "./$answer.mp4"
fi
