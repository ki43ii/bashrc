#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[01;0m\][\\[\033[01;34m\]\w\[\033[01;32m\]\$(parse_git_branch)\[\033[01;0m\]]\[\033[0;0m\] "

alias pacman='sudo pacman' #change to xbps lmfao, im switching to void
alias picom='picom --experimental-backends'
alias startx='startx > /dev/null 2>&1'

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
