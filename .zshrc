# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="twokul"
plugins=(git fasd brew common-aliases compleat gitfast git-extras last-working-dir npm scala web-search)

source $ZSH/oh-my-zsh.sh

# -------------------
# ALIASES
# -------------------
source $HOME/.dotfiles/aliases.sh

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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm use 6

# -------------------
# Postgres
# -------------------
export PGDATA="/usr/local/var/postgres/"

# -------------------
# Command Fuzzy Finder
# https://github.com/junegunn/fzf
# -------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_COMPLETION_OPTS='+c -x'

# Use ag instead of the default find command for listing candidates.
# - The first argument to the function is the base path to start traversal
# - Note that ag only lists files not directories
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  ag -g "" "$1"
}

# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -g ""'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export BKS_OPTS="-Xmx4g -XX:MaxPermSize=420m"
export INV_OPTS="-Xmx4g -XX:MaxPermSize=420m"
export USR_OPTS="-Xmx4g -XX:MaxPermSize=420m"
export GRAILS_OPTS="-server -Xmx3g -Xms3g -XX:MaxPermSize=512m -Dfile.encoding=UTF-8 -Djava.net.preferIPv4Stack=true"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
