#!/bin/sh

if [ "$#" == "/" ]; then
  echo " "
  echo "Nope."
  echo " "
elif [ "$#" == "~" ]; then
  echo " "
  echo "Nope."
  echo " "
else
  rm $*
fi
