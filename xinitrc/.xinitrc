xrdb ~/.Xresources

xsetroot -cursor_name left_ptr

wal -R

unclutter --timeout 1 &
urxvt & 
sxhkd &
xbindkeys & 
wal_set.sh &
dunst &
exec openbox
