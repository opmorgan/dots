#! /bin/bash

for m in $(polybar --list-monitors | cut -d":" -f1); do
  echo $m
  MONITOR=$m polybar --reload bar1 &
done
