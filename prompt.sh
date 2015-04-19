autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

git_branch() {
  echo $(/usr/bin/git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  st=$(/usr/bin/git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ $st == "nothing to commit, working directory clean" ]]
    then
      echo "%{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "%{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}*"
    fi
  fi
}

git_prompt_info () {
 ref=$(/usr/bin/git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed () {
  /usr/bin/git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

username() {
  echo "%{$fg[magenta]%}%n%{$reset_color%}"
}

hostname() {
  echo "%{$fg[green]%}%m%{$reset_color%}"
}

# This keeps the number of todos always available the right hand side of my
# command line. I filter it to only count those tagged as "+next", so it's more
# of a motivation to clear out the list.
todo(){
  if $(which todo.sh &> /dev/null)
  then
    num=$(echo $(todo.sh ls +next | wc -l))
    let todos=num-2
    if [ $todos != 0 ]
    then
      echo "$todos"
    else
      echo ""
    fi
  else
    echo ""
  fi
}

directory_name(){
  echo "%{$fg_bold[cyan]%}${PWD/#$HOME/~}%{$reset_color%}"
}

export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

set_prompt () {
  export PROMPT="%{$terminfo[bold]$fg[green]%}%n %{$terminfo[bold]$fg[blue]%}%~%{$reset_color%} %{$fg[red]%}%{$reset_color%}$(git_dirty)%{$reset_color%}
%B$%b "
  export RPROMPT="%{$fg_bold[cyan]%}$(todo)%{$reset_color%}"
}

precmd() {
  # title "zsh" "%m" "%55<...<%~"
  set_prompt
}
