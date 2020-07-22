#!/bin/bash

# You can call this script like this:
# $./vol_not.sh up 
# $./vol_not.sh down
# $./vol_not.sh mute

icon_up="$HOME/scripts/resources/vol_not/ic_volume_up_white_24dp.png"
icon_down="$HOME/scripts/resources/vol_not/ic_volume_down_white_24dp.png"
icon_mute="$HOME/scripts/resources/vol_not/ic_volume_off_white_24dp.png"

function get_volume {
  pamixer --get-volume
}

function is_mute {
  pamixer --get-mute
}

function send_notification {
  volume=$(get_volume)
    # Make the bar with the special character ─ (it's not dash -)
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq -s "━" $((($volume / 5)+1)) | sed 's/[0-9]//g')
    # Send the notification
    notify-send --hint=string:x-dunst-stack-tag:volume "$volume      $bar" -i "$icon"
}

case $1 in
    up)
	if is_mute ; then
      icon=$icon_mute
      send_notification
	else
      icon=$icon_up
	    send_notification
	fi
	;;
    down)
	if is_mute; then
      icon=$icon_mute
      send_notification
	else
      icon=$icon_down
	    send_notification
	fi
	;;
    mute)
	if is_mute ; then
      icon=$icon_mute
      send_notification
	else
      icon=$icon_up
	    send_notification
	fi
	;;
esac
