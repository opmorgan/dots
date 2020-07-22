xrdb ~/.Xresources

xrandr --auto

wal -R

setxkbmap -option ctrl:nocaps
xcape -e 'Caps_Lock=Escape;Control_L=Escape'

unclutter --timeout 1 &
dunst &
st -e tmux & 
sxhkd &
xbindkeys &
exec bspwm
