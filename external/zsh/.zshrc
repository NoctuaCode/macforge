# Activate Homebrew
source $HOME/.local/share/macforge/zsh/brew

# Set the prompt color
case "$TERM" in
    xterm-color|*-256color|xterm-ghostty) color_prompt=yes;;
esac

# Set Neovim as the default editor
export EDITOR=nvim

# Add custom bin to PATH
export PATH=$PATH:$HOME/.config/bin
export PATH=$PATH:$HOME/.local/bin

# Set the history
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Enable completion
autoload -Uz compinit
compinit

source $HOME/.local/share/macforge/carapace
source $HOME/.local/share/macforge/fzf
source $HOME/.local/share/macforge/zoxide
source $HOME/.local/share/macforge/shellenv
source $HOME/.local/share/macforge/functions
source $HOME/.local/share/macforge/bun
source $HOME/.local/share/macforge/docker
source $HOME/.local/share/macforge/starship
source $HOME/.local/share/macforge/uv
source $HOME/.local/share/macforge/mise
source $HOME/.local/share/macforge/aliases
