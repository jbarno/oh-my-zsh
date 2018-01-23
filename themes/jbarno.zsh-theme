local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )$reset_color%"
NEWLINE=$'\n'
function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`')'
}
RPROMPT=
PROMPT='%{$fg[magenta]%}%T $fg[cyan]%}%c%{$reset_color%} $fg[white]%n@%m%{$reset_color%}%} $(git_prompt_info)${NEWLINE}$(virtualenv_info)${ret_status} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
