#!/usr/bin/env bash

# source wal colors
. "${HOME}/.cache/wal/colors.sh"

reload_dunst() {
  sed -i "/    frame_color =/c\    frame_color = \"${foreground}\"" ~/.config/dunst/dunstrc
  sed -i "/    background =/c\    background = \"${background}\"" ~/.config/dunst/dunstrc
  sed -i "/    foreground =/c\    foreground = \"${foreground}\"" ~/.config/dunst/dunstrc
}

reload_cava(){
  sed -i "/gradient_color_1=/c\gradient_color_1=\"${color3:-#000000}\"" ~/.config/cava/config
  sed -i "/gradient_color_2=/c\gradient_color_2=\"${color4:-#000000}\"" ~/.config/cava/config
}

reload_zathura() {
  sed -i "/set default-bg/c\set default-bg \"${background:-#FFFFFF}\"" ~/.config/zathura/zathurarc
  sed -i "/set default-fg/c\set default-fg \"${foreground:-#FFFFFF}\"" ~/.config/zathura/zathurarc
  sed -i "/set statusbar-bg/c\set statusbar-bg \"${background:-#FFFFFF}\"" ~/.config/zathura/zathurarc
  sed -i "/set statusbar-fg/c\set statusbar-fg \"${foreground:-#FFFFFF}\"" ~/.config/zathura/zathurarc
  sed -i "/set highlight-color/c\set highlight-color \"${color3:-#FFFFFF}\"" ~/.config/zathura/zathurarc
  sed -i "/set highlight-active-color/c\set highlight-active-color \"${color4:-#FFFFFF}\"" ~/.config/zathura/zathurarc
  sed -i "/set recolor-lightcolor/c\set recolor-lightcolor \"${foreground:-#FFFFFF}\"" ~/.config/zathura/zathurarc
  sed -i "/set recolor-darkcolor/c\set recolor-darkcolor \"${background:-#FFFFFF}\"" ~/.config/zathura/zathurarc
  sed -i "/set inputbar-bg/c\set inputbar-bg \"${background:-#FFFFFF}\"" ~/.config/zathura/zathurarc
  sed -i "/set inputbar-fg/c\set inputbar-fg \"${foreground:-#FFFFFF}\"" ~/.config/zathura/zathurarc
  sed -i "/set notification-bg/c\set notification-bg \"${background:-#FFFFFF}\"" ~/.config/zathura/zathurarc
  sed -i "/set notification-fg/c\set notification-fg \"${foreground:-#FFFFFF}\"" ~/.config/zathura/zathurarc
}

reload_stalonetray() {
  sed -i "/background/c\background \"${background}\"" ~/.stalonetrayrc
}

main() {
    reload_dunst
    reload_zathura
    reload_cava
    reload_stalonetray
}

main
