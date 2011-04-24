# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/Cellar/python/2.7/bin:$PATH

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="pengwynn"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git ruby brew osx gem ssh-agent cap)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
if [[ -s /Users/michael/.rvm/scripts/rvm ]] ; then source /Users/michael/.rvm/scripts/rvm ; fi
