ln -sf "$(pwd)/nvim" ~/.config
ln -sf "$(pwd)/wezterm" ~/.config
ln -sf "$(pwd)/zellij" ~/.config
ln -sf "$(pwd)/vim/.vimrc" ~/.vimrc

ln -sf "$(pwd)/.agents" ~
ln -sf "$(pwd)/.pi/prompts" ~/.pi/agent
ln -sf "$(pwd)/.pi/SYSTEM.md" ~/.pi/agent

ln -sf "$(pwd)/zsh/.myzshrc" ~
cat >> ~/.zshrc << 'EOF'
if [[ -f ~/.myzshrc ]]; then
  source ~/.myzshrc
fi
EOF