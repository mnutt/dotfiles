# Path to your oh-my-zsh configuration.
export ZSH=$HOME/p/personal/dotfiles/oh-my-zsh

export DISABLE_AUTO_UPDATE="true"
export DISABLE_UPDATE_PROMPT="true"

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="avit"

export NODE_PATH=/usr/local/lib/node
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

export PATH=$PATH:$HOME/.cargo/bin

# export JAVA_HOME='/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home'
export JAVA_HOME=`/usr/libexec/java_home`
export PATH=$JAVA_HOME:$PATH

export PATH="/usr/local/opt/qt/bin:$PATH"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails gitgit ruby brew osx gem ssh-agent aws docker github yarn)

source $ZSH/oh-my-zsh.sh

alias z="cd code/$1"
alias mi="cd ~/p/movableink/movableink"
alias oj="cd ~/p/movableink/ojos"
alias ca="cd ~/p/movableink/canvas"
alias gb="git for-each-ref --format='%(align:15,left)%(committerdate:relative)%(end) %(color:bold white)%(refname:short)' --color=always --sort=-committerdate refs/heads/ |head -40"
alias gpr="git pull --rebase"
alias ember="nocorrect ember"
alias npm="nocorrect npm"
alias f="fly -t main"
alias k="kubectl"
alias dc="docker-compose"
alias disablegit="export PROMPT='$(_user_host)${_current_dir} ($(git branch | grep \* | cut -d ' ' -f2)) ▶ '; export RPROMPT=''"
alias ag="ag --path-to-ignore ~/.ignore"

pssh() { pushd ~/p/movableink/provisioning; bin/ssh production -d $1 -r $2; popd }
spssh() { pushd ~/p/movableink/provisioning; bin/ssh staging -d ord -r $1; popd }

pcurl () { var=0; while true; do var=$((var+1)); echo -ne "$var "; curl -m 0.25 -sI -XGET $* |head -1; sleep 0.05; done }

setopt shwordsplit
e () {
  saveIFS="$IFS"
  IFS=':'
  parts=($*)
  IFS="$saveIFS"

  file=$parts[1]
  line=$parts[2]

  if [[ $line ]]; then
    open /Applications/Emacs.app && emacsclient -n -q +$line $file
  else
    open /Applications/Emacs.app && emacsclient -n -q $file
  fi
}

export EDITOR=emacsclient

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/Cellar/python/2.7/bin:$PATH

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# . ~/.nvm/nvm.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Speed up git prompt
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# added by travis gem
[ -f /Users/mnutt-mbp/.travis/travis.sh ] && source /Users/mnutt-mbp/.travis/travis.sh

# volta
export VOLTA_HOME="/Users/mnutt-mbp/.volta"
grep --silent "$VOLTA_HOME/bin" <<< $PATH || export PATH="$VOLTA_HOME/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
