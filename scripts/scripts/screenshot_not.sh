#!/bin/bash

icon="$HOME/scripts/resources/screenshot_not/ic_camera_black_24dp.png"

notify-send "Shot saved to: media/pics/shots/" -i "$icon"
mpg123 "$HOME/scripts/resources/screenshot_not/knob.mp3"
