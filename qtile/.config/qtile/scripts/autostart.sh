#!/usr/bin/sh
betterlockscreen -w $HOME/Dotfiles/wallpaper/hacker.jpg
picom --config $HOME/Dotfiles/picom/.config/picom/picom.conf &
nitrogen --restore &
