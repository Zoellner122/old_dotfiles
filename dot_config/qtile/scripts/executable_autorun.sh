#!/bin/bash

# Launcing PolKit
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
# Wallpaper
nitrogen --restore &
# Dex
dex -a -s ~/.config/autostart/ &
# Picom
picom -b &
#misc
nm-applet &
flameshot &
discord &
steam-runtime &