#
# ~/.bash_profile
#
alias ls='ls --color=auto'
alias testes='echo yellow world'
alias spotify='spotify /usr/bin/spotify --force-device-scale-factor=1.5'
alias jh.edu='sudo openconnect --juniper vpn.jh.edu'

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$HOME/.cargo/bin:$PATH"
