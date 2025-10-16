# Export API keys to environment
alias keys="source ~/.set_env"

# Replace built-in commands with more powerful versions
alias ls="eza --color=always --icons=always"
alias cd="z"
alias grep="rg"

alias fman="compgen -c | fzf | xargs man"
alias fzfa='rg --hidden --files --follow --no-ignore-vcs | fzf'

# Replace vi and vim with nvim
alias vi=nvim
alias vim=nvim

alias zshconfig="nvim ~/.zshrc"

alias gdiff="/opt/homebrew/bin/diff"

alias ssh="screen ssh"
