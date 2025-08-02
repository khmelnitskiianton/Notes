#!/bin/bash
ACTIVE_WINDOW=$(xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW|cut -f 2)
ACTIVE_WINDOW_CLASS=$(xprop -id $ACTIVE_WINDOW WM_CLASS|tr -d ,\"|awk '{print $3};')

if [ $ACTIVE_WINDOW_CLASS = "kitty" ]; then
  xdotool windowminimize $ACTIVE_WINDOW
else
  wmctrl -xa kitty.kitty || /usr/bin/kitty --config ~/.config/kitty/kitty-quake.conf
fi