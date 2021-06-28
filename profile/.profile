source $HOME/.secret_aliases
# set environmental variables
export XDG_CONFIG_HOME="$HOME/.config"
export R_ENVIRON_USER="$HOME/.config/r/.Renviron"
export GOPATH="$HOME/.go"
export QT_QPA_PLATFORMTHEME=gtk2 # use gtk theme in qt applications
export GTK_USE_PORTAL=1 # same file dialog for gtk and qt
export EDITOR=nvim
export VISUAL=nvim
export HISTCONTROL=ignoredups # shell history ignores duplicates
export HISTSIZE=1000 # increase shell history length
export WOW_ADDONS_PATH="$HOME/games/world-of-warcraft-classic/drive_c/Program Files (x86)/World of Warcraft/_classic_/Interface/AddOns"

# set $PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/bin:$HOME/.cargo/bin:$HOME/scripts:$HOME/scripts/bspwm:$HOME/scripts/copy_without_linebreaks:$GOPATH:$GOPATH/bin:$HOME/.local/bin:$HOME/.config/systemd/user:$HOME/.config/nvim/plugged/vim-live-latex-preview/bin:$HOME/.TinyTeX/bin/x86_64-linux"

# permissions
umask 0002 #makes directory sharing easier

# source nvm config
if [ -f /usr/share/nvm/init-nvm.sh ]; then
  source /usr/share/nvm/init-nvm.sh
fi

# functions
function gpu-offload {
  /usr/bin/prime-offload
}

function gpu-switch {
  sudo /usr/bin/prime-switch
}

function gpu-nvidia {
  optimus-manager --switch nvidia --no-confirm
}

function gpu-intel {
  optimus-manager --switch intel --no-confirm
}

function sync-time {
  sudo timedatectl set-ntp 1
}

# remove temporary latex files
function texc {
  ls | grep -P '.*(?<!tex|bib|bbx|cbx|dbx)$' | xargs rm
}


## if the shell is interactive, tmux exists, and tmux isn't already running, start tmux.
#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#  exec tmux new-session -A -s main
#fi

# Directory shortcuts
alias wow_addons='/home/om/games/world-of-warcraft-classic/drive_c/Program\ Files\ \(x86\)/World\ of\ Warcraft/_classic_/Interface/AddOns'

# Aliases
alias sudo='sudo '
alias please='sudo '
alias a='./a.out'
alias ls='ls --color=auto'
alias l.='ls -d .*'
alias lsa='ls -a'
alias ll='ls -lh'
alias ll.='ll -d .*'
alias lla='ls -lha'
alias cd.='cd ~/dots'
alias tp='trash-put'
alias vi='nvim'
alias v='nvim'
alias z='zathura'
alias d='drive'
alias rm='rm -i'
alias s='sync-time'
alias m='systemctl start moneroocean_miner.service'
alias sm='systemctl stop moneroocean_miner.service'
alias cwl='copy_without_linebreaks.sh'
alias ping!='ping archlinux.com'
#alias git pul='git pull'
#alias git pus='git push'
alias untar='tar -xvzf'
alias calc='python -ic "from math import *"'
alias R='R --quiet --no-save'
alias grep='grep -i' # to ignore case, use --no-ignore-case
alias feh='feh --image-bg black -.'
alias lo='libreoffice'
alias qb='qutebrowser'
# print microsoft documents to pdf
alias lopdf='libreoffice --headless --convert-to pdf '
alias tem='template'
alias oms='optimus-manager --status'
# print to Brother printer (Duplex)
alias pb='lp -o sides=two-sided-long-edge -o PageSize=Letter'
alias bp='pb'
# shortcut to qmk flashing keymap to dz60 keyboard. use a keymap named "custom" in the folder ~/bin/qmk_firmware/keyboards/dztech/dz60rgb/keymaps". Remember to reset eprom with fn + enter (or holding escape while plugging in the keyboard)  before flashing. Run this command from bin/qmkfirmware/, with sudo.
alias flash='make dztech/dz60rgb:custom:flash'
