#!/bin/bash

ACTIVE_WIN_ID=$(xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW | cut -f 2)
ACTIVE_CLASS=$(xprop -id $ACTIVE_WIN_ID WM_CLASS | awk -F\" '{print $4}' | tr '[:upper:]' '[:lower:]')

if [[ "$ACTIVE_CLASS" == "alacritty-quake" ]]; then
  xdotool windowminimize $ACTIVE_WIN_ID
else
  wmctrl -xa alacritty-quake || ~/.cargo/bin/alacritty --class alacritty-quake,alacritty-quake --title "Alacritty QuakeMod" --config-file ~/.config/alacritty/alacritty-quake.toml
fi
