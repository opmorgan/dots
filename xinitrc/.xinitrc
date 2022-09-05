xrdb ~/.Xresources

xrandr --output HDMI-A-1 --mode 1920x1080 --rate 143.98

wal --theme $HOME/.config/modes/mode.json

unclutter --timeout 1 &
tabbed -r 2 st -w '' &
pavucontrol &
xbindkeys &
wal_set.sh &
dunst &
polyset.sh &
exec bspwm
