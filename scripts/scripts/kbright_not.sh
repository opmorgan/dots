#!/bin/bash

# This script will display keyboard brightness notifications.
# You can call this script like this:
# $./kbright_not.sh up
# $./kbright_not.sh down

icon_up="$HOME/scripts/ic_keyboard_black_24dp.png"
icon_down="$HOME/scripts/ic_keyboard_black_24dp.png"

function get_brightness {
    xbacklight -ctrl smc::kbd_backlight -get
}

function send_notification {
  brightness=$(get_brightness)
    # Make the bar with the special character ─ (it's not dash -)
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq -s "─" $((($brightness/ 5)+1)) | sed 's/[0-9]//g')
    # Send the notification
    notify-send --hint=string:x-dunst-stack-tag:key_brightness "$brightness      $bar" -i "$icon"
}

case $1 in
    up)
      icon=$icon_up
      send_notification
	;;
    down)
      icon=$icon_down
      send_notification
	;;
esac
