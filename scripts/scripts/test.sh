#!/bin/bash

if [[ "$(playerctl status)" = "Playing" ]]; then echo " $(playerctl metadata title | awk -v len=30 '{ if (length($0) > len) print substr($0, 1, len-3) "..."; else print; }')  |  $(playerctl metadata album | awk -v len=30 '{ if (length($0) > len) print substr($0, 1, len-3) "..."; else print; }')  |  $(playerctl metadata artist | awk -v len=30 '{ if (length($0) > len) print substr($0, 1, len-3) "..."; else print; }')"; else playerctl metadata xesam:artist; fi
