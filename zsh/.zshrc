# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.profile

setopt EXTENDED_GLOB
setopt EXTENDED_HISTORY
setopt HIST_VERIFY
setopt CORRECT
setopt CORRECT_ALL

# greeting message
echo "om@monad"

# set prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%c%b'
RPROMPT='%{$fg[white]%} $(~/scripts/git-cwd-info)%{$reset_color%}'
PS1='%(?..x (%?%) )• '
