if [[ -L "/usr/local/bin/brew" ]]; then
    HOMEBREW_PREFIX='/usr/local'
else
    HOMEBREW_PREFIX='/opt/homebrew'
fi

PATH_FRAGS=(
 '/Users/mattdawson/bin'
 "$HOMEBREW_PREFIX/bin"
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
alias e='emacsclient -t'

export NVM_DIR="$HOME/.nvm"
. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"
