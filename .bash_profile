#!/bin/bash
. ~/.local/lib/sh/pathtools

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Stow dotfiles on Linux systems
if [[ $OS == "Linux" ]] && command -v stow >/dev/null 2>&1; then
    stow --restow --dotfiles --target="$HOME" --dir="$HOME/.dotfiles"
fi

# ----------------------------------------------
# User specific environment and startup programs

# If in tmux session, run neofetch
# if [[ -n $TMUX ]] && command -v neofetch >/dev/null 2>&1; then
#     neofetch
# fi

EDITOR=nvim

. "$HOME/.local/bin/env"
