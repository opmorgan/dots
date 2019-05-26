#!/bin/bash

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

function get_volume {
    amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
    amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function send_notification {
    volume=`get_volume`
    # Make the bar with the special character ─ (it's not dash -)
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq -s "─" $((($volume / 5)+1)) | sed 's/[0-9]//g')
    # Send the notification
    # use notify-send once stable dunst supports stack_tags
    notify-send --hint=string:x-dunst-stack-tag:volume "$volume      $bar" -i $icon
}

case $1 in
    up)
	if is_mute ; then
      icon='/home/om/.icons/material-design-icons-3.0.1/av/drawable-hdpi/ic_volume_off_white_24dp.png'
      send_notification
	else
      icon='/home/om/.icons/material-design-icons-3.0.1/av/drawable-hdpi/ic_volume_up_white_24dp.png'
	    send_notification
	fi
	;;
    down)
	if is_mute ; then
      icon='/home/om/.icons/material-design-icons-3.0.1/av/drawable-hdpi/ic_volume_off_white_24dp.png'
      send_notification
	else
      icon='/home/om/.icons/material-design-icons-3.0.1/av/drawable-hdpi/ic_volume_down_white_24dp.png'
	    send_notification
	fi
	;;
    mute)
    	# Toggle mute
  echo "mute!!!"
	if is_mute ; then
      icon='/home/om/.icons/material-design-icons-3.0.1/av/drawable-hdpi/ic_volume_off_white_24dp.png'
      send_notification
	else
      icon='/home/om/.icons/material-design-icons-3.0.1/av/drawable-hdpi/ic_volume_up_white_24dp.png'
	    send_notification
	fi
	;;
esac
