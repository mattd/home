PATH_FRAGS=(
 '/Users/mattdawson/bin'
 '/usr/local/bin'
 '/usr/local/sbin'
 './node_modules/.bin'
 $PATH
)
PATH=$(printf ":%s" "${PATH_FRAGS[@]}")
PATH=${PATH:1}
export PATH

export CLICOLOR=1
export TERM=screen-256color

export BASH_SILENCE_DEPRECATION_WARNING=1

PS1='[\u@\h \W]\$ '

alias ll='ls -al'
alias gl='git log --graph --decorate --oneline'
alias gv='git log --graph --decorate'
alias c='code'
alias e='emacs'

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
