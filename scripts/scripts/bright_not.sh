#!/bin/bash

# This script will display backlight brightness notifications.
# You can call this script like this:
# $./bright_not.sh up
# $./bright_not.sh down

function get_brightness {
    cat /sys/class/backlight/intel_backlight/actual_brightness
}

function get_maxbrightness {
    cat /sys/class/backlight/intel_backlight/max_brightness
}


function send_notification {
    actual_brightness=`get_brightness`
    max_brightness=`get_maxbrightness`
    scale_factor=$(($max_brightness / 100))

    brightness=$(($actual_brightness / scale_factor))

    # Make the bar with the special character ─ (it's not dash -)
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq -s "─" $((($brightness / 5)+1)) | sed 's/[0-9]//g')
    # Send the notification
    notify-send --hint=string:x-dunst-stack-tag:brightness "$brightness      $bar" -i $icon
}

case $1 in
    up)
      icon='/home/om/.icons/material-design-icons/image/drawable-hdpi/ic_brightness_7_white_24dp.png'
      send_notification
	;;
    down)
      icon='/home/om/.icons/material-design-icons/image/drawable-hdpi/ic_brightness_5_white_24dp.png'
	  send_notification
	;;
esac
