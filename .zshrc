# -------------------
# OH MY ZSH
# -------------------
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
ZSH_THEME="alex"
COMPLETION_WAITING_DOTS="true"
plugins=(git brew gitfast git-extras osx vim)

# -------------------
# FASD
# -------------------
eval "$(fasd --init auto)"
_FASD_BACKENDS="native viminfo"

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
# PROMPT
# -------------------
source $HOME/.dotfiles/prompt.sh

# -------------------
# PATH
# -------------------
export PATH="$HOME/.dotfiles/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH
export PATH="$PROJECTS/v8/out/ia32.release:$PATH"
export PATH="$PROJECTS/v8/tools:$PATH"

# -------------------
# SHELL
# -------------------
unset MAILCHECK
ulimit -S -c 0

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

autoload -U compinit
compinit

setopt NO_BG_NICE # don"t nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don"t record dupes in history
setopt HIST_REDUCE_BLANKS

# matches case insensitive for lowercase
zstyle ":completion:*" matcher-list "m:{a-z}={A-Z}"

# pasting with tabs doesn"t perform completion
zstyle ":completion:*" insert-tab pending

# don"t expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word
bindkey "^[[5D" beginning-of-line
bindkey "^[[5C" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[^N" newtab
bindkey "^?" backward-delete-char
bindkey "^R" history-incremental-search-backward

# -------------------
# NVM
# -------------------
export NVM_DIR="/Users/alex/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"
qfc_quick_command 'cd' '\C-f' 'cd $0'
