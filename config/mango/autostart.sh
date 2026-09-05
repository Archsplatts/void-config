#!/bin/bash

set +e

pipewire &
wireplumber &
pipewire-pulse &

swaybg -i ~/Images/Wallpapers/nature-valley-1.jpg >/dev/null 2>&1 &

mako >/dev/null 2>&1 &

waybar -c ~/.config/mango/waybar/config.jsonc -s ~/.config/mango/waybar/style.css >/dev/null 2>&1 &

/usr/libexec/xfce-polkit 2>&1 &

gammastep >/dev/null 2>&1 &

wl-clip-persist --clipboard regular --reconnect-tries 0 &
wl-paste --type text --watch cliphist store -max-items 100 &
