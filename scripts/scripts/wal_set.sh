#!/usr/bin/env bash

# source wal colors
. "${HOME}/.cache/wal/colors.sh"

reload_dunst() {
    pkill dunst
    dunst \
        -lb "${color0:-#FFFFFF}" \
        -nb "${color0:-#FFFFFF}" \
        -cb "${color0:-#FFFFFF}" \
        -lf "${color7:-#000000}" \
        -bf "${color7:-#000000}" \
        -cf "${color7:-#000000}" \
        -nf "${color7:-#000000}" \
        -frame_color "${color7:-#000000}" &
}


reload_openbox() {
  sed -i "/menu.items.bg.color:/c\menu.items.bg.color:\ ${background:-#FFFFFF}" ~/.themes/active/openbox-3/themerc
  sed -i "/menu.items.text.color:/c\menu.items.text.color:\ ${foreground:-#eeeeee}" ~/.themes/active/openbox-3/themerc
  sed -i "/menu.title.bg.color:/c\menu.title.bg.color:\ ${background:-#FFFFFF}" ~/.themes/active/openbox-3/themerc
  sed -i "/menu.border.color:/c\menu.border.color:\ ${foreground:-#FFFFFF}" ~/.themes/active/openbox-3/themerc
  sed -i "/window.active.title.bg.color:/c\window.active.title.bg.color:\ ${foreground:-#FFFFFF}" ~/.themes/active/openbox-3/themerc
  sed -i "/window.inactive.title.bg.color:/c\window.inactive.title.bg.color:\ ${background:-#FFFFFF}" ~/.themes/active/openbox-3/themerc
  sed -i "/window.active.label.text.color:/c\window.active.label.text.color:\ ${background:-#FFFFFF}" ~/.themes/active/openbox-3/themerc
  sed -i "/window.inactive.label.text.color:/c\window.inactive.label.text.color:\ ${foreground:-#EEEEEE}" ~/.themes/active/openbox-3/themerc
  sed -i "/window.active.border.color:/c\window.active.border.color:\ ${background:-#FFFFFF}" ~/.themes/active/openbox-3/themerc
  sed -i "/window.inactive.border.color:/c\window.inactive.border.color:\ ${background:-#FFFFFF}" ~/.themes/active/openbox-3/themerc
  sed -i "/window.active.client.color:/c\window.active.client.color:\ ${background:-#FFFFFF}" ~/.themes/active/openbox-3/themerc
  sed -i "/window.inactive.client.color:/c\window.inactive.client.color:\ ${background:-#FFFFFF}" ~/.themes/active/openbox-3/themerc
  sed -i "/window.active.handle.bg.color:/c\window.active.handle.bg.color:\ ${background:-#FFFFFF}" ~/.themes/active/openbox-3/themerc
  sed -i "/window.inactive.handle.bg.color:/c\window.inactive.handle.bg.color:\ ${background:-#FFFFFF}" ~/.themes/active/openbox-3/themerc
  sed -i "/window.active.grip.bg.color:/c\window.active.grip.bg.color:\ ${background:=#FFFFFF}" ~/.themes/active/openbox-3/themerc
  sed -i "/window.inactive.grip.bg.color/c\window.inactive.grip.bg.color:\ ${background:-#FFFFFF}" ~/.themes/active/openbox-3/themerc
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

  

main() {
    reload_openbox
    reload_dunst
    reload_zathura
    reload_cava
}

main
