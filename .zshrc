# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="twokul"
plugins=(git fasd brew common-aliases compleat gitfast git-extras last-working-dir npm web-search zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# -------------------
# ALIASES
# -------------------
source $HOME/.dotfiles/env/aliases

# -------------------
# ENVIRONMENT
# -------------------
export EDITOR=/usr/local/bin/nvim
export PROJECTS=~/code

# -------------------
# PATH
# -------------------
export PATH="$HOME/.dotfiles/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH

# -------------------
# NVM
# -------------------
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# nvm use 6

# -------------------
# Neovim
# -------------------
# Neovim true color support
export NVIM_TUI_ENABLE_TRUE_COLOR=1
# Neovim cursor shape support
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1

# -------------------
# Postgres
# -------------------
export PGDATA="/usr/local/var/postgres/"

# -------------------
# Command Fuzzy Finder
# https://github.com/junegunn/fzf
# -------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='--height 70% --reverse --border'

# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules,*.swp,dist,*.coffee}/*" 2> /dev/null'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export FZF_DEFAULT_OPTS='--bind J:down,K:up --reverse --ansi --multi'

# Use ag instead of the default find command for listing candidates.
# - The first argument to the function is the base path to start traversal
# - Note that ag only lists files not directories
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  rg --files "$1"
}

fzf_log() {
  hash=$(git log --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |  fzf | awk '{print $1}')
  echo $hash | xclip
  git showtool $hash
}

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
