xrdb ~/.Xresources

xrandr --auto

xsetroot -cursor_name left_ptr

wal -R

unclutter --timeout 1 &
urxvt -e tmux & 
sxhkd &
xbindkeys & 
wal_set.sh &
dunst &
picom --respect-prop-shadow &
polyset.sh &
nm-applet &
exec 2bwm
