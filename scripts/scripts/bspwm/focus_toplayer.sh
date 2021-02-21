#! /usr/bin/env bash

while :; do
        bspc subscribe --count 1 node_focus > /dev/null || break
        bspc node focused.floating --layer above
        bspc node focused.floating --layer normal
done
