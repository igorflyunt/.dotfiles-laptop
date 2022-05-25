#! /bin/bash
xset dpms 0 0 0 
xset s off 
xset s noblank 
xset -b 
numlockx &
#pulseaudio --start &
udiskie -t -a & 
mpd &
unclutter -grab -idle 2 &
dbus-update-activation-environment --systemd DISPLAY &
eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets)
blueman-applet &
nm-applet &
sleep 3 && skypeforlinux &

xrandr --output DisplayPort-1 --primary --left-of DisplayPort-2 &
exec i3 
