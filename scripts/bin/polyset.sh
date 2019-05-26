#! /bin/bash

pkill polybar

polybar bar1 &

for m in $(polybar --list-monitors | cut -d":" -f1); do
  MONITOR=$m polybar --reload bar1 &
done
