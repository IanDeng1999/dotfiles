#!/bin/bash
# Add source line to ~/.zshrc if not already present
ZSHRC="$HOME/.zshrc"
SOURCE_LINE='[[ -f ~/.myzshrc ]] && source ~/.myzshrc'

if ! grep -qF "$SOURCE_LINE" "$ZSHRC" 2>/dev/null; then
  echo "" >> "$ZSHRC"
  echo "$SOURCE_LINE" >> "$ZSHRC"
fi