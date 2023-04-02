import os
from libqtile.config import Key
from libqtile.lazy import lazy
from python.settings import MOD, CONTROL, SHIFT, TERMINAL, SPACE, TAB

keys = [
    # GENERAL 
    Key([MOD, CONTROL], "r", lazy.reload_config()),
    Key([MOD, SHIFT], "r", lazy.spawncmd()),

    # PROGRAMS
    Key([MOD], "Return", lazy.spawn(TERMINAL)),
    Key([MOD], "f", lazy.spawn("firefox")),
    Key([MOD], "e", lazy.spawn("thunar")),

    # WINDOW MOVEMENT
    Key([MOD, SHIFT], "h", lazy.layout.shuffle_left()),
    Key([MOD, SHIFT], "l", lazy.layout.shuffle_right()),
    Key([MOD, SHIFT], "j", lazy.layout.shuffle_down()),
    Key([MOD, SHIFT], "k", lazy.layout.shuffle_up()),
    
    # WINDOW FOCUS
    Key([MOD], "h", lazy.layout.left()),
    Key([MOD], "l", lazy.layout.right()),
    Key([MOD], "j", lazy.layout.down()),
    Key([MOD], "k", lazy.layout.up()),
    Key([MOD], SPACE, lazy.layout.next()),
    Key([MOD], "z", lazy.window.toggle_fullscreen()),

    # WINDOW GROWTH
    Key([MOD, CONTROL], "h", lazy.layout.grow_left()),
    Key([MOD, CONTROL], "l", lazy.layout.grow_right()),
    Key([MOD, CONTROL], "j", lazy.layout.grow_down()),
    Key([MOD, CONTROL], "k", lazy.layout.grow_up()),
    Key([MOD], "n", lazy.layout.normalize()),
    
    # CLOSE AND EXIT WINDOWS OR QTILE
    Key([MOD], "x", lazy.window.kill()),
    Key([MOD, CONTROL], "x", lazy.shutdown()),
    
    # LAYOUTS
    Key([MOD], TAB, lazy.next_layout()),

    # ROFI
    Key([MOD], "d", lazy.spawn("rofi -show drun")),
    Key([MOD], "w", lazy.spawn("rofi -show window")),
    Key([MOD], "p", lazy.spawn(os.path.expanduser('~/Dotfiles/rofi/.config/rofi/powermenu.sh'))),

    # SCREENSHOT
    Key([MOD, SHIFT], "s", lazy.spawn("flameshot gui")),

    # AUDIO
    Key([], "XF86AudioRaiseVolume", lazy.spawn('sh -c "pactl set-sink-mute 0 false ; pactl set-sink-volume @DEFAULT_SINK@ +5% ; notify-send -t 1000 -h string:x-canonical-private-synchronous:volume Volume: $(pactl get-sink-volume @DEFAULT_SINK@ | awk \'{printf $5}\')"')),
    Key([], "XF86AudioLowerVolume", lazy.spawn('sh -c "pactl set-sink-mute 0 false ; pactl set-sink-volume @DEFAULT_SINK@ -5% ; notify-send -t 1000 -h string:x-canonical-private-synchronous:volume Volume: $(pactl get-sink-volume @DEFAULT_SINK@ | awk \'{printf $5}\')"')),
    Key([], "XF86AudioMute", lazy.spawn('sh -c "pactl set-sink-mute @DEFAULT_SINK@ toggle ; notify-send -t 1000 -h string:x-canonical-private-synchronous:volume $(pactl get-sink-mute @DEFAULT_SINK@)"')),

    # BRIGHTNESS
    Key([], "XF86MonBrightnessUp", lazy.spawn("xbacklight +10")),
    Key([], "XF86MonBrightnessDown", lazy.spawn("xbacklight -10")),

]
