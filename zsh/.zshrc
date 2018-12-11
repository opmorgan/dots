setopt EXTENDED_GLOB

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# Source Prezto.
#
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

echo "om@mira"
PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/om/bin/art:/home/om/.cargo/bin


# set aliases
alias lsa='ls -a'
alias tp='trash-put'
