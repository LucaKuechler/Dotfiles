import os
from libqtile import bar, widget
from libqtile.config import Screen

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    font="Hack Nerd Font Mono",
                    fontsize=30,
                    background="#1e1e2e99",
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
                    background="#282c3485",
                ),
                widget.Spacer(),
                widget.Systray(
                    background="#1e1e2e99",
                    foreground="#fae3b0",
                    icon_size=20,
                    padding=4,
                ),
                widget.Sep(
                    padding=15,
                    linewidth=0,
                ),
                widget.CheckUpdates(
                    #font="Noto Color Emoji",
                    fontsize=20,
                    update_interval=1800,
                    distro='Manjaro',
                    custom_command='pacman -Sup 2> /dev/null',
                    display_format='📦 {updates}',
                ),
                widget.Sep(
                    padding=15,
                    linewidth=0,
                ),
                widget.TextBox(
                    text=" \uf303 ",
                    fontsize=30,
                    background="#1e1e2e99",
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
