xrdb ~/.Xresources

wal -R -n

setxkbmap -option ctrl:nocaps

unclutter --timeout 1 &
st -e tmux & 
sxhkd &
exec bspwm
