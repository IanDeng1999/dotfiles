# zsh plugin manager
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit

# super smart autocompletions
zinit ice wait"0" lucid depth=1 pick"deja.plugin.zsh"
zinit light Giammarco-Ferranti/deja

# syntax highlighting
zinit light zsh-users/zsh-syntax-highlighting

# pretty prompt
zinit ice depth=1; zinit light romkatv/powerlevel10k
