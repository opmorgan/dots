# set environmental variables
export XDG_CONFIG_HOME="$HOME/.config"
export R_ENVIRON_USER="$HOME/.config/r/.Renviron"
export GOPATH="$HOME/.go"

# set $PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/bin:$HOME/.cargo/bin:$HOME/scripts:$GOPATH:$GOPATH/bin:$HOME/.local/bin:$HOME/.config/systemd/user"

source /usr/share/nvm/init-nvm.sh

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
alias ls='ls --color=auto'
alias ll='ls -l'
alias lsa='ls -a'
alias lla="ls -la"
alias tp='trash-put'
alias R='R --quiet --no-save'
alias feh='feh --image-bg black -.'
alias oms='optimus-manager --status'
# disable sleep on lid close. use time argument, eg "qlid 2h"
alias qlid='systemd-inhibit --what=handle-lid-switch sleep'

