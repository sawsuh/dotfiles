local ret_status="%(?:%{$fg_bold[cyan]%}> :%{$fg_bold[red]%}> )"
PROMPT=' %{$fg_bold[green]%}%c%{$reset_color%} $(git_prompt_info)${ret_status} %{$reset_color%}'

if [[ -n ${LAUNCHER} ]]; then
	PROMPT='  $fg_bold[green]> $reset_color'
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
