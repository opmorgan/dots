## source path, all aliases from .profile
if [ -f ~/.profile ]; then
  source ~/.profile
fi

## Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

## To add support for TTYs this line can be optionally added.
if [ -f ~/.cache/wal/colors-tty.sh ]; then
  source ~/.cache/wal/colors-tty.sh
fi

## use autosuggestions plugin
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

## zsh-vi-mode
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh 

# # use vim keybindings -- zsh's builtin
# bindkey -v
#
# # change cursor depending on mode (insert vs command)
# zle-keymap-select () {
# if [ $KEYMAP = vicmd ]; then
#     printf "\033[2 q"
# else
#     printf "\033[6 q"
# fi
# }
# zle -N zle-keymap-select
# zle-line-init () {
# zle -K viins
# printf "\033[6 q"
# }
# zle -N zle-line-init

setopt EXTENDED_GLOB
setopt globdots
setopt CORRECT
setopt CORRECT_ALL
setopt AUTOCD

## history 
SAVEHIST=10000
HISTFILE=~/.zsh/history
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
# setopt HIST_VERIFY
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE

## help for zsh builtins
unalias run-help
autoload run-help
# make it like bash
alias help=run-help  

## set xwindow title to current directory, or executed command
case $TERM in
  rxvt-unicode-256color|screen*|tmux*)
    precmd () {print -Pn "\e]0;zsh: %~\a"}
    preexec () {print -Pn "\e]0;$1\a"}
    ;;
esac

## greeting message
echo 'om@pons'

## git prompt: show git status using github.com/woefe/git-prompt.zsh
source /home/om/.zsh/git-prompt.zsh/git-prompt.zsh
source /home/om/.zsh/git-prompt.zsh/prompts/rprompt.zsh

## set left prompt
NEWLINE=$'\n'
PROMPT='%{$fg[red]%}%(?..(%?%) )%{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) > %{$reset_color%}%'
