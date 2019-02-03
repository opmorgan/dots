#!/bin/bash

# This script will display backlight brightness notifications.
# You can call this script like this:
# $./bright_not.sh up
# $./bright_not.sh down

function get_brightness {
    #cat /sys/class/backlight/intel_backlight/actual_brightness
    xbacklight -get
}

function send_notification {
    brightness=`get_brightness`
    # Make the bar with the special character ─ (it's not dash -)
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq -s "─" $((($brightness / 5)+1)) | sed 's/[0-9]//g')
    # Send the notification
    notify-send --hint=string:x-dunst-stack-tag:brightness "$brightness      $bar" -i $icon
}

case $1 in
    up)
      icon='/home/om/.icons/material-design-icons-3.0.1/image/drawable-hdpi/ic_brightness_7_white_24dp.png'
      send_notification
	;;
    down)
      icon='/home/om/.icons/material-design-icons-3.0.1/image/drawable-hdpi/ic_brightness_5_white_24dp.png'
	  send_notification
	;;
esac
