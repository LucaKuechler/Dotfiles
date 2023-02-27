#!/usr/bin/sh
picom --config $HOME/Dotfiles/picom/.config/picom/picom.conf &
nitrogen --restore &
nm-applet &
betterlockscreen -w $HOME/Dotfiles/wallpaper/hacker.jpg
