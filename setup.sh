#!/usr/bin/env bash

# Main installer
export DOTFILES=$HOME/.dotfiles

# Install themes
$DOTFILES/themes/install 2>&1

# Set defaults for OS
$DOTFILES/macos/install

# Install Homebrew
$DOTFILES/homebrew/install 2>&1

# Update Homebrew
echo "> brew update"
brew update

# Upgrade packages
echo "> brew upgrade"
brew upgrade

# Install applications in Brewfile using Homebrew
echo "> brew bundle"
brew bundle

# Setup Git
$DOTFILES/git/install 2>&1

# Use ZSH by default and install oh-my-zsh
$DOTFILES/shell/install 2>&1

# Setup Spectacle
$DOTFILES/spectacle/install.sh

# Vim
# https://vim.org
$DOTFILES/nvim/install

# Languages

# JS/Node.js
$DOTFILES/nvm/install

# # Rust
$DOTFILES/rustup/install
