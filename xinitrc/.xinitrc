xrdb ~/.Xresources

xrandr --output HDMI-A-1 --mode 1920x1080 --rate 143.98

wal -R
unclutter --timeout 1 &
tabbed -r 2 st -w '' &
pavucontrol &
xbindkeys &
wal_set.sh &
dunst &
polyset.sh &
picom &
exec bspwm
