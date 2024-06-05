source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="
  --bind='ctrl-y:accept'
  --bind='ctrl-d:preview-half-page-down'
  --bind='ctrl-u:preview-half-page-up'
  --bind='alt-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'
  --preview 'bat -n --color=always {}'"
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
export BAT_PAGER="less -RF"
