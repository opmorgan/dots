xrdb ~/.Xresources

wal -R

unclutter --timeout 1 &
st -e tmux & 
sxhkd &
exec bspwm
