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
export PATH=$HOME/bin:/usr/local/bin:$PATH

# -------------------
# NVM
# -------------------
export NVM_DIR="/Users/alex/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm use 4

# -------------------
# Postgres
# -------------------
export PGDATA="/usr/local/var/postgres/"

# -------------------
# Command Fuzzy Finder
# https://github.com/junegunn/fzf
# -------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export BKS_OPTS="-Xmx4g -XX:MaxPermSize=420m"
export INV_OPTS="-Xmx4g -XX:MaxPermSize=420m"
export USR_OPTS="-Xmx4g -XX:MaxPermSize=420m"
export GRAILS_OPTS="-server -Xmx3g -Xms3g -XX:MaxPermSize=512m -Dfile.encoding=UTF-8 -Djava.net.preferIPv4Stack=true"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
