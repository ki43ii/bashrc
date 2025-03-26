#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w μ \[\033[0;0m\]"
#PS1="\[\033[01;32m\][\u@\h] \w μ \[\033[0;0m\]"
#PS1="\[\033[01;31m\][\[\033[01;33m\]\u\[\033[01;32m\]@\[\033[01;34m\]\h\[\033[01;35m\] \w\[\033[01;31m\]]\[\033[01;37m\]μ \[\033[0;0m\]"
#PS1="\[\033[0;0m\]\u@\h \w % \[\033[0;m\]"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="\[\033[01;32m\]\u@\h\[\033[01;0m\]:\[\033[01;34m\]\w\[\033[01;31m\]\$(parse_git_branch)\[\033[00m\]$ "
export PS1="\[\033[01;0m\][\\[\033[01;34m\]\w\[\033[01;32m\]\$(parse_git_branch)\[\033[01;0m\]]\[\033[0;0m\] "

alias pacman='sudo pacman'
alias picom='picom --experimental-backends'
alias startx='startx > /dev/null 2>&1'

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
