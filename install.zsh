#!/usr/bin/env zsh
# Shamelessly stole from https://github.com/rwjblue/dotfiles/blob/master/install.zsh
#
set -e # fail if anything exits non-zero

DOTFILES=$(dirname ${(%):-%x})

abspath() {
  # generate absolute path from relative path
  # $1     : relative filename
  # return : absolute path
  if [ -d "$1" ]; then
    # dir
    (cd "$1"; pwd)
  elif [ -f "$1" ]; then
    # file
    if [[ $1 = /* ]]; then
      echo "$1"
    elif [[ $1 == */* ]]; then
      echo "$(cd "${1%/*}"; pwd)/${1##*/}"
    else
      echo "$(pwd)/$1"
    fi
  fi
}

link-dotfile() {
  local SOURCE=$1
  local TARGET=$2

  local ABSOLUTE_SOURCE=$(abspath $DOTFILES/$SOURCE)

  if [ "$FORCE" = "true" ]; then
    rm -rf $TARGET
  fi

  if [ -e $TARGET ]; then
    if [ -L $TARGET ]; then
      current=$(readlink $TARGET)
      if [ $current != $ABSOLUTE_SOURCE ]; then
        echo "$TARGET already exists and is symlinked to $current"
      fi
    else
      echo "$TARGET already exists"
    fi
  else
    echo "creating link for $TARGET"
    mkdir -p $(dirname $TARGET)
    ln -s $ABSOLUTE_SOURCE $TARGET
  fi
}

copy-dotfile() {
  local SOURCE=$1
  local TARGET=$2

  local ABSOLUTE_SOURCE=$(abspath $DOTFILES/$SOURCE)

  if [ "$FORCE" = "true" ]; then
    rm -rf $TARGET
  fi

  if [ -e $TARGET ]; then
    echo "$TARGET already exists";
  else
    echo "creating $TARGET"
    mkdir -p $(dirname $TARGET)
    cp $ABSOLUTE_SOURCE $TARGET
  fi
}

if [[ "$OSTYPE" == darwin* ]]; then
  if ! command -v brew >/dev/null; then
    echo "Installing Homebrew ..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  brew install zplug fzf ripgrep fasd
else
  if [[ ! -d $HOME/.zplug ]]; then
    echo "Installing zplug"
    git clone https://github.com/zplug/zplug.git $HOME/.zplug
  fi

  if [[ ! -d $HOME/.fzf ]]; then
    echo "Installing fzf"
    git clone https://github.com/junegunn/fzf.git $HOME/.fzf
    $HOME/.fzf/install
  fi

  sudo add-apt-repository ppa:aacebedo/fasd && sudo apt-get update && sudo apt-get install fasd
fi

link-dotfile "zsh/zshrc" "$HOME/.zshrc"
link-dotfile "git/gitconfig" "$HOME/.gitconfig"
link-dotfile "git/gitignore_global" "$HOME/.gitignore_global"
link-dotfile "vim/vimrc" "$HOME/.vimrc"
