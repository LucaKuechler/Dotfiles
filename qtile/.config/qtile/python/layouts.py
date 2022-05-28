from libqtile import layout

layouts = [
layout.Columns(
        border_focus="#FFEA2E",
        border_normal="#222222",
        margin=[15, 15, 15, 15],
        border_width=2
    ),
    layout.MonadWide(
        margin=15,
        border_width=2,
        ratio=0.80,
    ),
    layout.Max(),
]
