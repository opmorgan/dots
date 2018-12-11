xset r rate 270 30
xrandr --dpi 190

xrdb ~/.Xresources

export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5
export GDK_OVERLAY_SCROLLING=true

wal -i ~/pics/wall/denis_psyche.jpg -o ~/bin/wal_set.sh 

xsetroot -cursor_name left_ptr

unclutter --timeout 1 &
xbanish &
urxvt &
xbindkeys &  
compton --config ~/.compton.conf &
~/.config/polybar/launch.sh &
~/bin/set_v4l2.sh &
dunst &
exec bspwm
