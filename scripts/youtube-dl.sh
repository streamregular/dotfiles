#!/bin/sh
# script from u/longboarder543

apt update && apt upgrade
termux-setup-storage
pkg install python
pip install youtube-dl
mkdir ~/storage/shared/Youtube
cp ~/.dotfiles/scripts/ytconfig ~/.config/youtube-dl/config
mkdir ~/bin
cd ~/bin
touch termux-url-opener
echo "youtube-dl $1" >> termux-url-opener
cd ~
