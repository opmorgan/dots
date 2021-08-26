# set environmental variables
export XDG_CONFIG_HOME="$HOME/.config"
export R_ENVIRON_USER="$HOME/.config/r/.Renviron"
export GOPATH="$HOME/.go"
export QT_QPA_PLATFORMTHEME=gtk2 #use gtk theme in qt applications
export EDITOR=nvim
export VISUAL=nvim
export HISTCONTROL=ignoredups #shell history ignores duplicates
export HISTSIZE=1000 #increase shell history length
export MPD_HOST=~/.mpv/socket

# set $PATH
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/bin:$HOME/.cargo/bin:$HOME/scripts:$GOPATH:$GOPATH/bin:$HOME/.local/bin:$HOME/.config/systemd/user:$HOME/scripts/copy_without_linebreaks:$HOME/scripts/polybar"

# permissions
umask 0002 #makes directory sharing easier

# source nvm config
if [ -f /usr/share/nvm/init-nvm.sh ]; then
  source /usr/share/nvm/init-nvm.sh
fi


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
## Sync time when dual-booted Windows changes clock
sync_time() {
  sudo ntpd -qg
}

## Remove temporary latex files
texc() {
  ls | grep -P '.*(?<!tex|bib|bbx|cbx|dbx)$' | xargs rm
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
alias ls='ls --color=auto'
alias l.='ls -d .*'
alias lsa='ls -a'
alias ll='ls -lh'
alias ll.='ll -d .*'
alias lla='ls -lha'
alias rm='rm -i' ## Makes rm unusable for many files: use trash instead

## Directory shortcuts
alias cd.='cd ~/dots'

### External programs
alias ping!='ping archlinux.com'
alias grep='grep -i' ## Ignore case. To match case, override with --no-ignore-case
alias untar='tar -xvzf'
alias vi='nvim'
alias v='nvim'
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

alias m='systemctl start moneroocean_miner.service' ## https://github.com/MoneroOcean/xmrig_setup.git
alias sm='systemctl stop moneroocean_miner.service'
alias calc='python -ic "from math import *"'

## Scripts
alias cwl='copy_without_linebreaks.sh' ## ~/scripts/copy_without_linebreaks.sh
alias tem='template' ## ~/scripts/template

## Libreoffice
alias lo='libreoffice'
## Print microsoft documents to pdf
alias lopdf='libreoffice --headless --convert-to pdf '
alias oms='optimus-manager --status'

## Cups (https://github.com/OpenPrinting/cups)
## Print to default printer, two-sided.
alias pb='lp -o sides=two-sided-long-edge -o PageSize=Letter'
alias bp='pb'

