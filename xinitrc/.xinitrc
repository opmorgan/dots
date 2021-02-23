xrdb ~/.Xresources

xrandr --auto

wal -R
feh --bg-scale ~/media/pics/zenburn_wallpapers/bluish/joel-1.jpg
setxkbmap -option ctrl:nocaps
xcape -e 'Caps_Lock=Escape;Control_L=Escape'

unclutter --timeout 1 &
urxvt -e tmux & 
xbindkeys & 
wal_set.sh &
dunst &
picom --respect-prop-shadow &
polyset.sh &
kblight_set.sh &
focus_toplayer.sh &
sxhkd &
exec bspwm
