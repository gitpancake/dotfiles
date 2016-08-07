#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias gp='git push'
alias gP='git pull'
alias ga='git add'
alias gs='git status'
alias xx='termite& disown'
alias vim='nvim'

eval $(dircolors -b ~/.dir_colors)

export EDITOR='nvim'

PATH="$PATH:/home/baspar/.bin"

PS1='[\u@\h \W]\$ '
