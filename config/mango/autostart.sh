#!/bin/bash

set +e

gammastep >/dev/null 2>&1 &

waybar -c ~/.config/mango/waybar/config.jsonc -s ~/.config/mango/waybar/style.css >/dev/null 2>&1 &

swaybg -i ~/Images/Wallpapers/sunken-tower.png >/dev/null 2>&1 &

mako >/dev/null 2>&1 &

pipewire &
wireplumber &
pipewire-pulse &

/usr/libexec/xfce-polkit 2>&1 &

wl-clip-persist --clipboard regular --reconnect-tries 0 &
wl-paste --type text --watch cliphist store -max-items 100 &
