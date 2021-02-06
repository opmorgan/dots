ZSH_GIT_PROMPT_FORCE_BLANK=1
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_no_bold[default]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_SEPARATOR=" |"
ZSH_THEME_GIT_PROMPT_DETACHED="%{$fg_no_bold[green]%}:"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_no_bold[default]%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_no_bold[green]%} behind:"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_no_bold[green]%} ahead:"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[green]%} unmerged:"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%} staged:"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg[green]%} unstaged:"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%} untracked:"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[green]%} stashed:"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} clean"

RPROMPT='$(gitprompt)'
