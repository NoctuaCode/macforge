#!/bin/bash

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

# Check if $HOME/.local/share/macforge/zsh/brew is in .zshrc
if ! grep -q "source $HOME/.local/share/macforge/zsh/brew" "$HOME/.zshrc"; then
  echo "source $HOME/.local/share/macforge/zsh/brew" >>"$HOME/.zshrc"
fi

source "$HOME/.zshrc"

for formula in $(cat "$HOME/.local/share/macforge/scripts/installs/formulas.txt"); do
  brew install "$formula"
done

for cask in $(cat "$HOME/.local/share/macforge/scripts/installs/casks.txt"); do
  brew install --cask "$cask"
done
