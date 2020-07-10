xrdb ~/.Xresources

xrandr --auto

xsetroot -cursor_name left_ptr
setxkbmap -option ctrl:nocaps
xcape -e 'Caps_Lock=Escape;Control_L=Escape;Shift_L=Escape'

wal -R

unclutter --timeout 1 &
urxvt -e tmux & 
sxhkd &
xbindkeys & 
wal_set.sh &
dunst &
picom --respect-prop-shadow &
polyset.sh &
kblight_set.sh &
exec 2bwm
