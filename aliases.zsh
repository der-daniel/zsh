# block rm
alias rm="echo 'use trash'"

# docker
alias dc="docker-compose"
alias dips="docker ps -q | xargs -n 1 docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} {{ .Name }}' | sed 's/ \// /'"
alias dstopall='docker stop $(docker ps -a -q)'
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Image}}"'
function dsh() {
  docker exec -it "${1}" /bin/bash
}
function denv() {
  docker exec "${1}" env
}

# git shortcuts
function git-feature() {
  if [ `git branch --list master` ]
  then
    git checkout -b "${1}" master
  else
    git checkout -b "${1}" main
  fi
}

# youtube-dl
alias youtube-dl-mp3="yt-dlp -i --extract-audio --audio-format mp3 --audio-quality 0"

# yubikey
alias gpg-reload-yubikey='gpg-connect-agent "scd serialno" "learn --force" /bye'

# brew update
alias brew-update='brew update && brew upgrade && brew upgrade --cask --greedy'
