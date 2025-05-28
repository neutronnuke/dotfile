#!/bin/bash
xwayland-satellite &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
hyprpaper &
nm-applet &
udiskie -t &
waybar -c ~/.config/niri/waybar/config.jsonc -s ~/.config/niri/waybar/style.css &
