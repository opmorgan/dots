#! /bin/bash

# terminate existing bar instances
killall -q polybar

# Wait until the processes have been shut down
# while pgrep -x polybar >/dev/null; do sleep 1; done

for m in $(polybar --list-monitors | cut -d":" -f1); do
  echo $m
  MONITOR=$m polybar --reload bar1
done

xdo lower -N "Polybar"
# echo "---" | tee -a /tmp/polybar1.log
# polybar bar1 >>/tmp/polybar1.log 2>&1 &
# echo "Bars launched..."
