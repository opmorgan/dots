#! /bin/bash

# terminate existing bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

## launch on primary monitor only
# polybar --reload bar1 &
# polybar --reload bar2 &

# open manually per monitor
MONITOR=HDMI-A-0 polybar --reload bar1 &
MONITOR=HDMI-A-1 polybar --reload bar2 &
#
# open on all monitors
# for m in $(polybar --list-monitors | cut -d":" -f1); do
#   echo $m
#   MONITOR=$m polybar --reload bar1 &
#   MONITOR=$m polybar --reload bar2 &
# done
