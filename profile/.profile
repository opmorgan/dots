## ~/.profile
## This file should contain all user configuration that any POSIX-compliant shell can source.
## (e.g., configuration that applies to both bash and zsh)
## This way, it is easy to switch between shells and keep settings similar.

#### Set environmental variables
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/bin:$HOME/.cargo/bin:$HOME/scripts:$HOME/scripts/bspwm:$HOME/scripts/copy_without_linebreaks:$HOME/scripts/rofi:$HOME/scripts/polybar:$GOPATH:$GOPATH/bin:$HOME/.local/bin:$HOME/.config/systemd/user:$HOME/.config/nvim/plugged/vim-live-latex-preview/bin::$HOME/src/st"

## Special directories
if [ -f "$HOME/.config" ]; then
  export XDG_CONFIG_HOME="$HOME/.config"
fi
if [ -f "$HOME/.config/r/.Renviron" ]; then
  export R_ENVIRON_USER="$HOME/.config/r/.Renviron"
fi
if [ -f "$HOME/.go" ]; then
  export GOPATH="$HOME/.go"
fi
export SHOTS="$HOME/media/pics/shots"
export EDU="$HOME/gdrive/edu"
export XC="$HOME/gdrive/xcog"

## Shell
export HISTSIZE=1000 ## The number of commands each shell session should remember

## System
# export QT_QPA_PLATFORMTHEME=gtk2 ## use gtk theme in qt applications
# export QT_QPA_PLATFORMTHEME=gnome ## use gtk theme in qt applications
export GTK_USE_PORTAL=1 ## same file dialog for gtk and qt
export EDITOR=nvim
export VISUAL=nvim


#### Permissions
umask 0002

#### Source configuration files
## fff (file manager) config
if [ -f $XDG_CONFIG_HOME/.fffrc ]; then
  source $XDG_CONFIG_HOME/.fffrc
fi

## Nvm (Node package manager) config
if [ -f /usr/share/nvm/init-nvm.sh ]; then
  source /usr/share/nvm/init-nvm.sh
fi

#### Functions
## Remove temporary latex files
texc() {
  ls | grep -P '.*(?<!tex|bib|bbx|cbx|dbx|md)$' | xargs rm
}

## Launch fff and cd on exit
## depends on: fff
f() {
  fff "$@"
  cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

## List recenty installed, upgraded, and removed packages
pac_recent() {
  grep "\(installed\|upgraded\|removed\) $pkg" /var/log/pacman.log
}


#### Aliases

## Shell
alias sudo='sudo ' # The space is so that aliases can be run after sudo
alias please='sudo '
alias a='./a.out'

alias lt='exa --tree'
alias lta='exa -a --tree'
alias ls='exa -F'
alias l.='exa -dF .*'
alias lsa='exa -aF'
alias ll='exa -lF --sort=time'
alias ll.='exa -dF .*'
alias lla='exa -laF --sort=time'

alias rm='rm -i' ## Makes rm unusable for many files: use trash instead

## Directory shortcuts
alias cd.='cd ~/dots'

### External programs
alias ping!='ping archlinux.com'
alias grep='grep -i' ## Ignore case. To match case, override with --no-ignore-case
alias untar='tar -xvzf'
alias vi='nvim'
alias v='nvim'
alias zt='tabbed -c -r 2 zathura -e' # Launch zathura with tabbed
alias z='zathura'
alias g='git'
alias ga='git add -A'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'
alias gs='git status'
alias R='R --quiet --no-save'
alias feh='feh --image-bg black -.'
alias qb='qutebrowser'
alias tp='trash-put' ## trash-cli (https://github.com/andreafrancia/trash-cli.git)
alias d='drive' ## https://github.com/odeke-em/drive.git
alias scim='sc-im'
alias vd='visidata'
alias calc='python -ic "from math import *"'

## Scripts
alias cwl='copy_without_linebreaks.sh' ## ~/scripts/copy_without_linebreaks.sh
alias tem='template' ## ~/scripts/template

## Libreoffice
alias lo='libreoffice'
## Print microsoft documents to pdf
alias lopdf='libreoffice --headless --convert-to pdf '

## Cups (https://github.com/OpenPrinting/cups)
## Print to default printer, two-sided.
alias pb='lp -o sides=two-sided-long-edge -o PageSize=Letter'
alias bp='pb'

## QMK
## Shortcut to flash keymap to dz60 keyboard. Use a keymap named "custom" in the folder
## "~/bin/qmk_firmware/keyboards/dztech/dz60rgb/keymaps". Remember to reset eprom with fn + enter
## (or holding escape while plugging in the keyboard)  before flashing. Run this command from
## bin/qmkfirmware/, with sudo.
alias flash='make dztech/dz60rgb:custom:flash'
