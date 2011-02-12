export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/Cellar/python/2.7/bin:$PATH

# Colorize the Terminal
export CLICOLOR=1;

export NODE_PATH=/usr/local/lib/node

alias e="emacsclient -n"

alias ls='ls -G'

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

bind "set completion-ignore-case on"

alias pull='git pull'
alias gpl='git pull'

alias co='git checkout'
alias gc='git checkout'

alias st='git status'
alias gs='git status'

alias di='git diff'
alias gd='git diff'

alias ci='git commit'

source ~/.bashrc
source /usr/local/etc/bash_completion.d/git-completion.bash
complete -o default -o nospace -F _git_checkout gco

export PS1="\[\033[38m\]\u:\[\033[01;36m\]\w \[\033[35m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.split('\n').grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "
export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/r6
# export PGOPTIONS='-c client_min_messages=WARNING'

function bgrep {
  BGREP_GEM_PATH=`bundle show $2`
  echo "Searching '$BGREP_GEM_PATH'..."
  grep -Ri $1 $BGREP_GEM_PATH | sed "s|$BGREP_GEM_PATH|\`bundle show $2\`|g" | grep $1
}

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvmexport PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/Cellar/python/2.7/bin/:/usr/local/Cellar/python/2.7/bin/
