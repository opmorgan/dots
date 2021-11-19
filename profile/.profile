# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

## Special directories
if [ -f "$HOME/.config" ]; then
  export XDG_CONFIG_HOME="$HOME/.config"
fi

## Shell
export HISTSIZE=1000 ## The number of commands each shell session should remember

## System
# export QT_QPA_PLATFORMTHEME=gtk2 ## use gtk theme in qt applications
# export QT_QPA_PLATFORMTHEME=gnome ## use gtk theme in qt applications 
export GTK_USE_PORTAL=1 ## same file dialog for gtk and qt
export EDITOR=nvim
export VISUAL=nvim


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
## Launch fff and cd on exit
## depends on: fff
f() {
  fff "$@"
  cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

#### Aliases
## Source aliases that shouldn't be on public version control
source $HOME/.secret_aliases

## Shell
alias sudo='sudo ' # The space is so that aliases can be run after sudo
alias please='sudo '

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
alias calc='python -ic "from math import *"'
