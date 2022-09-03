xrdb ~/.Xresources

setxkbmap -option ctrl:nocaps
xcape -e 'Caps_Lock=Escape;Control_L=Escape'

wal -R
unclutter --timeout 1 &
tabbed -r 2 st -w '' &
pavucontrol &
xbindkeys &
wal_set.sh &
dunst &
polyset.sh &
exec bspwm
