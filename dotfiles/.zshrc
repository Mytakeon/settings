# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git yarn-autocompletions)

source $ZSH/oh-my-zsh.sh

# For a full list of active aliases, run `alias`.
alias gcm='git checkout master'
alias gs='git checkout -'
alias c='code .'
alias dps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Ports}}"'
alias dstp='docker stop `docker ps -q`'

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
