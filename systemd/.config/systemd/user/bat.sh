#!/usr/bin/env bash

BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:20:00 && `echo $BATTINFO | cut -f 5 -d " "` > 00:19:30 ]]; then 
    DISPLAY=:0 /usr/bin/notify-send "Battery test:  testing notification service" -i "battery-empty-symbolic" -u normal
fi

if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:20:00 && `echo $BATTINFO | cut -f 5 -d " "` > 00:19:30 ]]; then 
    DISPLAY=:0 /usr/bin/notify-send "Battery low:  20 minutes to midnight" -i "battery-empty-symbolic" -u normal
fi

if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:15:00 && `echo $BATTINFO | cut -f 5 -d " "` > 00:14:30 ]]; then 
    DISPLAY=:0 /usr/bin/notify-send "Battery low:  15 minutes to midnight" -i "battery-empty-symbolic" -u normal
fi

if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:10:00 && `echo $BATTINFO | cut -f 5 -d " "` > 00:09:30 ]]; then 
    DISPLAY=:0 /usr/bin/notify-send "Battery critical:  10 minutes to midnight" -i "battery-empty-symbolic" -u critical
fi

if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:05:00 ]]; then 
    DISPLAY=:0 /usr/bin/notify-send "Battery critical:  5 minutes to midnight" -i "battery-empty-symbolic" -u critical
fi
