import os
import datetime
import subprocess
from typing import List  # noqa: F401

from libqtile import bar, layout, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

# CUSTOM
from python.keymappings import keys
from python.groups import groups
#from python.screens import screens
from python.layouts import layouts

mod = "mod4"

for i in groups:
    keys.extend(
        [
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
                desc="move focused window to group {}".format(i.name)),
        ]
    )

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    font="Hack Nerd Font Mono",
                    fontsize=30,
                    #background="#1e1e2e99",
                    background="#2C2C2C",
                    margin_y=4,
                    margin_x=5,
                    padding_y=9,
                    padding_x=4,
                    borderwidth=7,
                    inactive="#404040",
                    active="#ffffff",
                    rounded=True,
                    highlight_color="#FFEA2E",
                    highlight_method="text",
                    this_current_screen_border="#FFEA2E",
                    block_highlight_text_color="#1e1e2e",
                ),
                widget.Sep(
                    padding=15,
                    linewidth=0,
                ),
                widget.CurrentLayoutIcon(
                    custom_icon_paths=[os.path.expanduser("~/.config/qtile/icons")],
                    scale=0.6,
                    background="#2C2C2C",
                ),
                widget.Spacer(),
                widget.Systray(
                    icon_size=20,
                ),
                widget.Sep(
                    padding=15,
                    linewidth=0,
                ),
                #widget.Volume(),
                widget.CheckUpdates(
                    background="#2C2C2C",
                    foreground="#fae3b0",
                    fontsize=18,
                    update_interval=1800,
                    distro='Manjaro',
                    custom_command='pacman -Sup 2> /dev/null',
                    no_update_string=' 📦 0  ',
                    display_format=' 📦 {updates}  ',
                ),
                widget.Clock(
                    background="#2C2C2C",
                    format=" 🕑 %H:%M   📅 %d.%m.%Y", #format=" 📅 %d.%m.%Y [Week %W / %A]",
                    timezone=datetime.timezone.utc,
                    fontsize=18,
                    padding=5,
                ),
                widget.Sep(
                    padding=15,
                    linewidth=0,
                ),
                widget.TextBox(
                    text=" \uf303 ",
                    fontsize=30,
                    background="#2C2C2CAA",
                    foreground="#fae3b0",
                    padding=4,
                ),
            ],
            34,
            background="#00000000",
            foreground="#1e1e2e",
            margin=[10,6,8,10],
        ),
    ),
]

widget_defaults = dict(
    font="sans",
    fontsize=12,
    padding=3,
)
extension_defaults = widget_defaults.copy()

# screens = [
#     Screen(
#         bottom=bar.Bar(
#             [
#                 widget.CurrentLayout(),
#                 widget.GroupBox(),
#                 widget.Prompt(),
#                 widget.WindowName(),
#                 widget.Chord(
#                     chords_colors={
#                         "launch": ("#ff0000", "#ffffff"),
#                     },
#                     name_transform=lambda name: name.upper(),
#                 ),
#                 widget.TextBox("default config", name="default"),
#                 widget.TextBox("Press &lt;M-r&gt; to spawn", foreground="#d75f5f"),
#                 widget.Systray(),
#                 widget.Clock(format="%Y-%m-%d %a %I:%M %p"),
#                 widget.QuickExit(),
#             ],
#             24,
#             # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
#             # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
#         ),
#     ),
# ]


# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True

@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/Dotfiles/qtile/.config/qtile/scripts/autostart.sh') # path to my script, under my user directory
    subprocess.call([home])

wmname = "LG3D"
