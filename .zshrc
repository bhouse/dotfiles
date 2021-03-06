# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#bindkey -v
setopt promptsubst
prompt_history() {
#    CYCLE=$(( $HISTCMD % 5 ))
 #   if [[ "$CYCLE" = "0" ]]; then
    echo -ne "$HISTCMD"
 #   fi
}

# RPROMPT='$(prompt_history)'

#bindkey -M viins '^r' history-incremental-search-backward
#bindkey -M vicmd '^r' history-incremental-search-backward
bindkey -e

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'
alias -g ls='ls -F'
alias -g less='less -FXRS'
alias -g be='bundle exec'
alias -g ber='bundle exec rake'
alias -g bek='bundle exec kitchen'
alias -g tailf='tail -f'
alias tmux="TERM=screen-256color-bce tmux"
alias -g ki="kitchen"
alias -g traceroute='grc traceroute'

export EDITOR='vim'
export PATH="$HOME/bin:$HOME/.rbenv/bin:$HOME/zendesk/github:$HOME/zendesk/github/chef:$HOME/github:$HOME/packer:/usr/local/bin:$PATH"
export TERM="xterm-256color"
eval "$(rbenv init -)"
source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# added by travis gem
[ -f /Users/bhouse/.travis/travis.sh ] && source /Users/bhouse/.travis/travis.sh
#source /usr/local/share/zsh/site-functions/_aws

# The next line updates PATH for the Google Cloud SDK.
source '/Users/bhouse/google-cloud-sdk/path.zsh.inc'

# The next line enables zsh completion for gcloud.
source '/Users/bhouse/google-cloud-sdk/completion.zsh.inc'
export PATH="$HOME/tools/packer_0.10.1_darwin_amd64:$PATH"
export PATH="$HOME/tools/terraform_0.6.6:$PATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=/usr/local/opt/go/libexec/bin

#eval "$(docker-machine env default 2>/dev/null)"
export EC2_HOST_CONFIG_FILE=~/.ec2-host
