#!/bin/bash

set +e

mako >/dev/null 2>&1 &

gammastep >/dev/null 2>&1 &

swaybg -i ~/Images/Wallpapers/sunken-tower.png >/dev/null 2>&1 &

waybar -c ~/.config/mango/waybar/config.jsonc -s ~/.config/mango/waybar/style.css >/dev/null 2>&1 &

exec dbus-run-session -- pipewire &
exec dbus-run-session -- pipewire-pulse &
exec dbus-run-session -- wireplumber &

wl-clip-persist --clipboard regular --reconnect-tries 0 &
wl-paste --type text --watch cliphist store -max-items 100 &

/usr/libexec/xfce-polkit 2>&1 &
