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
    echo "volume: " $volume
    # Make the bar with the special character ─ (it's not dash -)
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq -s "─" $((($volume / 5)+1)) | sed 's/[0-9]//g')
    echo "bar: " $bar
    # Send the notification
    echo "notification should have sent"
    dunstify "$volume    $bar" -u normal -i audio-volume-medium-symbolic -t 500 -r 2593
    # use notify-send once stable dunst supports stack_tags
    #notify-send --hint=string:x-dunst-stack-tag:volume "$volume      $bar" -u normal -i audio-volume-medium-symbolic  
}

case $1 in
    up)
      echo "volume up!"
	send_notification
	;;
    down)
	send_notification
	;;
    mute)
    	# Toggle mute
  echo "mute!!!"
	if is_mute ; then
      dunstify "Mute" -u normal -i audio-volume-muted-symbolic -t 500 -r 2593
	else
	    send_notification
	fi
	;;
esac
