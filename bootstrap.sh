#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"
USER="joeys"

# Create links
dotfiles=(
    ".config/nvim"
    ".config/ranger"
    ".tmux.conf"
    ".config/neofetch"
    ".zprofile"
    ".zshrc"
    ".zlogout"
)

for folder in Documents Downloads Pictures School Workspace; do
    ln -sfn "/mnt/c/Users/$USER/$folder" "$HOME/$folder"
done

for file in "${dotfiles[@]}"; do
    ln -sfn "$DOTFILES_DIR/$file" "$HOME/$file"
done
