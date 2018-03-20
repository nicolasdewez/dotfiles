## Common bash function

alias sudo="sudo " # Hack, for sudo an aliases

alias ls="ls --color"
alias l="ls -lh --color"
alias ll="ls -lh --color"
alias lla="ll -a --color"

alias df="df -h"
alias du="du -h"
alias free="free -m"

alias cp="cp -i"
alias mv="mv -i"

alias grep='grep --exclude-dir ".svn" --exclude-dir ".git" --exclude tagsi --color=tty'
alias ack="ack-grep"
alias sed="sed --follow-symlinks"

## Apt
alias apti="apt-get install"
alias aptua="apt-get update"
alias aptug="apt-get upgrade"
alias aptu="apt-get update && apt-get upgrade"
alias aptdel=" apt-get remove"
alias aptsearch="apt-cache search"

## Archive
alias untar="tar xvf"
alias ungz="gunzip"
alias unzip2="bzip2 -d"
alias untargz="tar zxvf"
alias untarbz1="tar jxvf"
alias ungz2="bunzip2 -k"

## Docker compose
alias dc="docker-compose"
alias dce="docker-compose exec"
alias dcps="docker-compose ps"
alias dcu="docker-compose up -d"
alias dcs="docker-compose stop"
function dceb() { docker-compose exec $2 $1 bash; }

## Cool shortcut
alias top_process="ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"
alias mysql="mysql --sigint-ignore"
alias whatsmyip="curl -s checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"
alias reload_bash="source ~/.bashrc" # reload ~/.bashrc

alias we="links -dump estcequecestbientotleweekend.fr | head -1"
function weather() { curl -4 http://wttr.in/$1; }

