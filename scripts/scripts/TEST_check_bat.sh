#!/usr/bin/env bash

bat_num='0'
status_file=/tmp/check-bat.tmp
battperc=$(cat /sys/class/power_supply/BAT${bat_num}/capacity)
battstatus=$(cat /sys/class/power_supply/BAT${bat_num}/status)
last_status=''
last_notif_level=0
notif_level=0
check="N"

if [ -e $status_file ] ; then
  . $status_file
fi

save_status() {
  last_status=$battstatus
  echo "last_status=${battstatus}" > $status_file
  echo "LAST_NOTIF_LEVEL=${notif_level}" >> $status_file
}

notify() {
  level=$1
  msg=$2
  DISPLAY=:0 /usr/bin/notify-send -t 3500 -u "$level" "POWER" "$msg"
}

while getopts "c" arg ; do
  case "$arg" in
    c) check="Y" ;;
  esac
done

if [[ "$check" == "Y" ]] ; then
  notify "normal" "battery is now $battstatus, Capacity: $battperc"
  exit
fi

# Battery status changed
if [[ "$battstatus" != "$last_status" ]] ; then
  notify "normal" "battery is now $battstatus, Capacity: $battperc"
  save_status
  exit
fi

if [ "$battstatus" = Discharging ] && [ "$battperc" -le 10 ]; then
  notif_level=10
  notify "critical" "battery is less than 10% - Connect charger, going to sleep in 10s"
  sleep 10
  battstatus=$(cat /sys/class/power_supply/BAT${bat_num}/status)
  if [ "$battstatus" = Discharging ]; then
    notify "critical" "going to suspend now"
    sleep 3
    logger "Critical battery threshold, suspending"
    systemctl suspend
  else
    notify "normal" "battery is now charging, cancelling suspend"
  fi
  save_status
  exit
fi

if [[ $battperc -le 20 ]] ; then
  notif_level=20
  notify "critical" "battery $battstatus is less than 20%"
  save_status
elif [[ $battperc -le 30 ]] ; then
  notif_level=30
  if [ "$notif_level" != "$last_notif_level" ]; then
    notify "normal" "battery $battstatus is at 30%"
    save_status
  fi
elif [[ $battperc -le 50 ]] ; then
  notif_level=50
  if [ "$notif_level" != "$last_notif_level" ] ; then
    notify "low" "battery $battstatus is at 50%"
    save_status
  fi
elif [[ $battperc -le 60 ]] ; then
  notif_level=60
  if [ "$notif_level" != "$last_notif_level" ] ; then
    notify "normal" "battery $battstatus is at 60%"
    save_status
  fi
fi
