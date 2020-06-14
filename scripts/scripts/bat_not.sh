#!/usr/bin/env bash

# This script will generate a notification showing low battery charge as reported by acpi. Run it at some interval with a systemd service to show a notification when your battery runs low.

icon_30="$HOME/.icons/material-design-icons/device/drawable-mdpi/ic_battery_30_black_48dp.png"
icon_20="$HOME/.icons/material-design-icons/device/drawable-mdpi/ic_battery_20_black_48dp.png"
icon_low="$HOME/.icons/material-design-icons/device/drawable-mdpi/ic_battery_20_black_48dp.png"
icon_critical="$HOME/.icons/material-design-icons/device/drawable-mdpi/ic_battery_alert_black_48dp.png"

bat_pct_str=$(acpi -b | cut -f 4 -d " ")
bat_pct=${bat_pct_str:0:-2}
discharging=$(acpi -b | grep Discharging)

echo $bat_pct
echo $discharging

if [[ "$discharging" && \
  "$bat_pct" -lt 30 && \
  "$bat_pct" -gt 20 ]]; then
  notify-send "Battery low: 30% left" -i $icon_30 -u normal
fi

if [[ "$discharging" && \
  "$bat_pct" -lt 20 && \
  "$bat_pct" -gt 10 ]]; then
  notify-send "Battery low: 20% left" -i $icon_20 -u normal
fi

if [[ "$discharging" && \
  "$bat_pct" -lt 10 && \
  "$bat_pct" -gt 5 ]]; then
  notify-send "Battery critical: 10% left" -i $icon_critical -u normal
fi

if [[ "$discharging" && \
  "$bat_pct" -lt 5 && \
  "$bat_pct" -gt 1 ]]; then
  notify-send "Battery critical: 5% left" -i $icon_critical -u normal
fi
