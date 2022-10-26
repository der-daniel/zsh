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
    pass
    pip
    sudo
    tmux
    wd
    yarn
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# starship
eval "$(starship init zsh)"

# editor
export EDITOR='vim'

# gpg
# export GPG_TTY="$(tty)"
# export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
# gpgconf --launch gpg-agent
# gpg-connect-agent updatestartuptty /bye > /dev/null
# export PASSWORD_STORE_GPG_OPTS='--no-throw-keyids'
