# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="miloshadzic"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Source aliases and functions
source $HOME/.zsh/alias
source $HOME/.zsh/functions


# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# homebrew
alias elastic='elasticsearch -f -D es.config=/usr/local/opt/elasticsearch/config/elasticsearch.yml'
alias redis='redis-server /usr/local/etc/redis.conf'

# d4s 
alias resq='QUEUE=* RAILS_ENV=local  bundle exec rake resque:work'

# Git
#alias g='g' # Overrides g alias from zsh with self defined function g()
#alias review='git diff master'
#alias gpm='git push origin master'
#alias gg="git log --pretty=format:'%Cred%h%Creset - %s %Cgreen(%an, %cr)%Creset' --abbrev-commit --date=relative"
#alias ggg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
#alias bi="bundle install"
#alias rs="rails s"

function g {
  if [[ $# > 0 ]]
  then
    git $@
  else
    git status
  fi
}

# Complete g like git
compdef g=git

function commands {
  history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home"
#export JAVA_HOME="$(/usr/libexec/java_home)"

export DOCKER_CERT_PATH=/Users/cheimke/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
