export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

alias z="cd code/$1"
alias mi="cd ~/p/movableink/movableink"
alias oj="cd ~/p/movableink/ojos"
alias gb="git for-each-ref --format='%(refname:short)' --sort=-committerdate refs/heads/ |head -20"

export EDITOR=emacsclient

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/python/2.7/bin:$PATH

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export VOLTA_HOME="/Users/mnutt-mbp/.volta"
grep --silent "$VOLTA_HOME/bin" <<< $PATH || export PATH="$VOLTA_HOME/bin:$PATH"
