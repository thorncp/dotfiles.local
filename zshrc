bindkey -e

# override with custom color
git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo " %{$fg_bold[yellow]%}${ref#refs/heads/}%{$reset_color%}"
  fi
}

exit_color="%{$fg[green]%}%(?..%{$fg[red]%})"

export PS1='${exit_color}%~%{$reset_color%}$(git_prompt_info)
%# '
