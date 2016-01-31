# -------------------
# Aliases
# -------------------

alias git=hub
alias reload!='. ~/.zshrc'
alias md='mkdir'
alias l='ls -l'
alias home='ssh alex@162.243.74.58'
alias lampo='ssh root@104.236.195.152'

alias nom='npm cache clear && rm -rf node_modules && npm install'
alias bom='bower cache clean && rm -rf bower_components && bower install'
alias nombom='npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install'

# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias hp='hub push origin HEAD'
alias hpr='hub pull-request'
alias hbr='hub browse'
alias hd='hub diff'
alias hc='hub commit -v'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias hs='hub status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm='git status | grep deleted | awk '{print \$3}' | xargs git rm'
alias hum='hub pull upstream master'
alias gra='git remote add'
alias hitall='hub add . --all'
alias gum='git pull upstream master'
alias gr='git remote'
alias ga='git add'
alias gpf='git push origin HEAD --force'
alias gd='git diff'
alias gc='git commit -v'
alias gco='git checkout'
alias gs='git status -sb'
alias gp='git push origin HEAD'
