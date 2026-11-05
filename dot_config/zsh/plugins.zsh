# zsh plugin manager
_zinit_file="$HOME/.local/share/zinit/zinit.git/zinit.zsh"
if [[ -r "$_zinit_file" ]]; then
  source "$_zinit_file"
  autoload -Uz _zinit
else
  return 0
fi
unset _zinit_file

# super smart autocompletions
# curl -fsSL https://raw.githubusercontent.com/Giammarco-Ferranti/deja/main/install.sh | sh
zinit ice wait"0" lucid depth=1 pick"deja.plugin.zsh"
zinit light Giammarco-Ferranti/deja

# syntax highlighting
zinit light zsh-users/zsh-syntax-highlighting

# pretty prompt
zinit ice depth=1; zinit light romkatv/powerlevel10k
