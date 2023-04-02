#!/usr/bin/sh
picom --config $HOME/Dotfiles/picom/.config/picom/picom.conf &
betterlockscreen -w $HOME/Dotfiles/wallpaper/hacker.jpg &
nm-applet &
feh --bg-scale $HOME/Dotfiles/wallpaper/tree.png
