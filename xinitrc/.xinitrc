xrdb ~/.Xresources

wal -R

setxkbmap -option ctrl:nocaps

unclutter --timeout 1 &
st -e tmux & 
sxhkd &
exec bspwm
