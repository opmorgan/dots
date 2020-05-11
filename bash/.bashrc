# ~/.bashrc

# activate vi mode with ESC
set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Launch fish by default
#export PATH="$HOME/.cargo/bin:$PATH"
#exec zsh

PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/om/bin/art
