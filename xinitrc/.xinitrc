xrdb ~/.Xresources

xrandr --output HDMI-A-1 --mode 1920x1080 --rate 143.98

wal -R
unclutter --timeout 1 &
st -e tmux & 
xbindkeys & 
wal_set.sh &
dunst &
polyset.sh &
focus_toplayer.sh &
stalonetray &
picom &
sxhkd &
exec bspwm
