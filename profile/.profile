# set environmental variables
export XDG_CONFIG_HOME="$HOME/.config"
export R_ENVIRON_USER="$HOME/.config/r/.Renviron"
export TEST1="999899"

# set $PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/om/bin:/home/om/.cargo/bin:/home/om/scripts"

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

# set aliases
alias ll='ls -l'
alias lsa='ls -a'
alias lla="ls -la"
alias tp='trash-put'
alias R='R --quiet --no-save'
