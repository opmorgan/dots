xrdb ~/.Xresources

xrandr --auto

/* wal -i ~/media/pics/wall/cat.jpg */
/* wal --theme base16-onedark */
wal -R

setxkbmap -option ctrl:nocaps
xcape -e 'Caps_Lock=Escape;Control_L=Escape'

unclutter --timeout 1 &
dunst &
tabbed -r 2 st -w '' &
sxhkd &
polyset.sh &
xbindkeys &
picom &
exec bspwm
