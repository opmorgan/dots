xrdb ~/.Xresources

xrandr --auto

wal -i ~/media/pics/wall/cat.jpg
wal --theme base16-materialer

setxkbmap -option ctrl:nocaps
xcape -e 'Caps_Lock=Escape;Control_L=Escape'

unclutter --timeout 1 &
dunst &
st -e tmux & 
sxhkd &
xbindkeys &
exec bspwm
