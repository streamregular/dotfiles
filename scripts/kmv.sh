#!/bin/sh
#mplayer "/home/$USER/Archives/Videos/MVs/$1.mp4" -x 640 -y 360

if [ "$#" -eq 10 ]; then
  mplayer "/home/$USER/Archives/Videos/MVs/$1 $2 $3 $4 $5 $6 $7 $8 $9 $10.mp4" -x 640 -y 360
fi

if [ "$#" -eq 9 ]; then
  mplayer "/home/$USER/Archives/Videos/MVs/$1 $2 $3 $4 $5 $6 $7 $8 $9.mp4" -x 640 -y 360
fi

if [ "$#" -eq 8 ]; then
  mplayer "/home/$USER/Archives/Videos/MVs/$1 $2 $3 $4 $5 $6 $7 $8.mp4" -x 640 -y 360
fi

if [ "$#" -eq 7 ]; then
  mplayer "/home/$USER/Archives/Videos/MVs/$1 $2 $3 $4 $5 $6 $7.mp4" -x 640 -y 360
fi

if [ "$#" -eq 6 ]; then
  mplayer "/home/$USER/Archives/Videos/MVs/$1 $2 $3 $4 $5 $6.mp4" -x 640 -y 360
fi

if [ "$#" -eq 5 ]; then
  mplayer "/home/$USER/Archives/Videos/MVs/$1 $2 $3 $4 $5.mp4" -x 640 -y 360
fi

if [ "$#" -eq 4 ]; then
  mplayer "/home/$USER/Archives/Videos/MVs/$1 $2 $3 $4.mp4" -x 640 -y 360
fi

if [ "$#" -eq 3 ]; then
  mplayer "/home/$USER/Archives/Videos/MVs/$1 $2 $3.mp4" -x 640 -y 360
fi

if [ "$#" -eq 2 ]; then
  mplayer "/home/$USER/Archives/Videos/MVs/$1 $2.mp4" -x 640 -y 360
fi

if [ "$#" -eq 1 ]; then
  mplayer "/home/$USER/Archives/Videos/MVs/$1.mp4" -x 640 -y 360
fi

if [ "$#" -eq 0 ]; then
  echo "Usage:"
  echo " kmv MVname"
fi

# mplayer "/home/$USER/Archives/Videos/MVs/$1.mp4" -x 640 -y 360
