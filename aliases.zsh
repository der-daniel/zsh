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

# youtube-dl
alias youtube-dl-mp3="youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0"

# yubikey
alias gpg-reload-yubikey='gpg-connect-agent "scd serialno" "learn --force" /bye'
