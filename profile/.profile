# set environmental variables
export XDG_CONFIG_HOME="$HOME/.config"
export R_ENVIRON_USER="$HOME/.config/r/.Renviron"
export GOPATH="$HOME/.go"
export QT_QPA_PLATFORMTHEME=gtk2 #use gtk theme in qt applications
export EDITOR=nvim
export VISUAL=nvim
export HISTCONTROL=ignoredups #shell history ignores duplicates
export HISTSIZE=1000 #increase shell history length

# set $PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/bin:$HOME/.cargo/bin:$HOME/scripts:$GOPATH:$GOPATH/bin:$HOME/.local/bin:$HOME/.config/systemd/user"

# permissions
umask 0002

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

## if the shell is interactive, tmux exists, and tmux isn't already running, start tmux.
#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#  exec tmux new-session -A -s main
#fi

# set aliases
alias sudo='sudo '
alias ls='ls --color=auto'
alias l.='ls -d .*'
alias lsa='ls -a'
alias ll='ls -lh'
alias ll.='ll -d .*'
alias lla='ls -lha'
alias tp='trash-put'
alias R='R --quiet --no-save'
alias feh='feh --image-bg black -.'
alias oms='optimus-manager --status'
# shortcut to qmk flashing keymap to dz60 keyboard. use a keymap named "custom" in the folder ~/bin/qmk_firmware/keyboards/dztech/dz60rgb/keymaps". Remember to reset eprom with fn + enter (or holding escape while plugging in the keyboard)  before flashing. Run this command from bin/qmkfirmware/, with sudo.
alias flash='make dztech/dz60rgb:custom:flash'

