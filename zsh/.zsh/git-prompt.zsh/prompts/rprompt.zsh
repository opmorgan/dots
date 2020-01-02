ZSH_GIT_PROMPT_FORCE_BLANK=1
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_no_bold[default]%}γ ("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
ZSH_THEME_GIT_PROMPT_DETACHED="%{$fg_no_bold[green]%}:"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_no_bold[default]%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_no_bold[green]%} ↓"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_no_bold[green]%} ↑"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[green]%}x"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}•"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg[green]%}~"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[green]%}σ"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}√"

RPROMPT='$(gitprompt)'
