#!/usr/bin/env bash

# Main installer

export DOTFILES=$HOME/.dotfiles

# Install Homebrew
$DOTFILES/homebrew/install.sh 2>&1

# Update Homebrew
echo "> brew update"
brew update

# Install applications in Brewfile using Homebrew
echo "> brew bundle"
brew bundle

# Install fonts
$DOTFILES/fonts/install

# Use Fish Shell by default
$DOTFILES/fish/default 2>&1

# Run setup commands
find . -name setup | while read setup_func; do sh -c "${setup_func}"; done

# Set defaults for OS
$DOTFILES/macos/setup.sh
