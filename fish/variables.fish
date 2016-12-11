# Set default editor to Vim
set -x EDITOR vim

# Set default directory for NVM
set -x NVM_DIR ~/.nvm

# Include .dotfiles/bin in global path
set PATH ~/.dotfiles/bin $PATH

# FZF
set FZF_DEFAULT_COMMAND 'ag -g ""'
set FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
set FZF_COMPLETION_OPTS '+c -x'
