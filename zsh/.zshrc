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
setopt EXTENDED_HISTORY
setopt HIST_VERIFY
setopt CORRECT
setopt CORRECT_ALL

# set xwindow title to current directory, or executed command
case $TERM in
  rxvt-unicode-256color)
    precmd () {print -Pn "\e]0;urxvt: %~\a"}
    preexec () {print -Pn "\e]0;$1\a"}
    ;;
esac

# greeting message
echo "om@monad"

# prompt: show git status using git-cwd-info
# autoload -U colors
# setopt prompt_subst
# RPROMPT='%{$fg[white]%} $(~/scripts/git-cwd-info)%{$reset_color%}'

# prompt: show git status using https://github.com/olivierverdier/zsh-git-prompt
# GIT_PROMPT_EXECUTABLE="haskell"
# source /home/om/bin/zsh-git-prompt/zshrc.sh
# RPROMPT='$(git_super_status)'

# prompt: show git status using github.com/woefe/git-prompt.zsh
source /home/om/.zsh/git-prompt.zsh/git-prompt.zsh
source /home/om/.zsh/git-prompt.zsh/prompts/rprompt.zsh

PS1='%(?..x (%?%) )• '
