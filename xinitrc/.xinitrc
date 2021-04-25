xrdb ~/.Xresources

xrandr --auto

wal -R
unclutter --timeout 1 &
urxvt -e tmux & 
xbindkeys & 
wal_set.sh &
dunst &
polyset.sh &
focus_toplayer.sh &
picom &
sxhkd &
exec bspwm
