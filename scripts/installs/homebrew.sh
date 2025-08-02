#!/bin/bash

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

# Check if $HOME/.local/share/macforge/zsh/brew is in .zshrc
if ! grep -q "source $HOME/.local/share/macforge/zsh/brew" "$HOME/.zshrc"; then
  echo "source $HOME/.local/share/macforge/zsh/brew" >>"$HOME/.zshrc"
fi
