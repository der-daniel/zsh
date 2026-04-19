# oh my zsh
ZSH_DISABLE_COMPFIX=true
export ZSH=$HOME/.oh-my-zsh
plugins=(
    autoupdate
    docker
    docker-compose
    gem
    git
    node
    npm
    pip
    sudo
    wd
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# add homebrew to PATH
path+=(/opt/homebrew/bin)
path+=(~/.npm/bin)
export PATH
HOMEBREW_CASK_OPTS=--no-quarantine

# starship
eval "$(starship init zsh)"

# editor
export EDITOR='vim'

# do not share hsitory between tabs
unsetopt inc_append_history
unsetopt share_history
