source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="
  --bind='ctrl-y:accept'
  --bind='ctrl-d:preview-half-page-down'
  --bind='ctrl-u:preview-half-page-up'
  --bind='alt-y:execute-silent(echo -n {2..} | pbcopy)+abort'"
export FZF_COMPLETION_OPTS="
  --bind 'ctrl-/:change-preview-window(down|hidden|)'
  --preview 'bat -n --color=always {}'"
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
export BAT_PAGER="less -RF"

export FZF_ALT_C_OPTS="--preview 'eza --tree --level=1 --color=always --icons=always {} | head -200'"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}
