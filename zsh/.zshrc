# source path, all aliases from .profile
source ~/.profile

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

# use autosuggestions plugin
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

setopt EXTENDED_GLOB
setopt globdots
setopt CORRECT
setopt CORRECT_ALL

# history 
SAVEHIST=10000
HISTFILE=~/.zsh/history
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_VERIFY
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE

# set xwindow title to current directory, or executed command
case $TERM in
  rxvt-unicode-256color|screen*|tmux*)
    precmd () {print -Pn "\e]0;zsh: %~\a"}
    preexec () {print -Pn "\e]0;$1\a"}
    ;;
esac

# greeting message
echo "om@monad"

# git prompt: show git status using github.com/woefe/git-prompt.zsh
source /home/om/.zsh/git-prompt.zsh/git-prompt.zsh
source /home/om/.zsh/git-prompt.zsh/prompts/rprompt.zsh

# set left prompt
# PROMPT='%{$fg[blue]%}%(?..x (%?%) )• %{$reset_color%}%'
NEWLINE=$'\n'
PROMPT='%~${NEWLINE}%{$fg[blue]%}%(?..x (%?%) )• %{$reset_color%}%'
