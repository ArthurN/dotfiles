# Colorization
# Use GRC for additionnal colorization
GRC=$(which grc)
if [ -n GRC ]; then
    alias colourify='$GRC -es --colour=auto'
    alias as='colourify as'
    #cvs
    alias configure='colourify ./configure'
    alias diff='colourify diff'
    alias dig='colourify dig'
    alias g++='colourify g++'
    alias gas='colourify gas'
    alias gcc='colourify gcc'
    alias head='colourify head'
    alias ifconfig='colourify ifconfig'
    #irclog
    alias ld='colourify ld'
    #ldap
    #log
    alias ls='colourify ls'
    alias make='colourify make'
    alias mount='colourify mount'
    #mtr
    alias netstat='colourify netstat'
    alias ping='colourify ping'
    #proftpd
    alias ps='colourify ps'
    alias tail='colourify tail'
    alias traceroute='colourify traceroute'
    #wdiff
fi

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    lsflags="--color --group-directories-first"
else # OS X `ls`
    lsflags="-G"
fi
alias ll='ls -lah ${lsflags}'
alias ls='ls -hFp ${lsflags}'

# General
alias ..="cd .."
alias ...="cd ../.."
alias c="clear"
alias h="history"
alias o="open"
alias home="cd $HOME"
alias pss='ps axu | grep "$@" --ignore-case --color=auto'
alias cdul="cd /usr/local/"
alias cdcellar="cd /usr/local/Cellar"

# Network
alias key="open /Applications/Utilities/Keychain\ Access.app"
alias sniff="sudo ngrep -W byline -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias hosts='sudo $EDITOR /etc/hosts'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dig="dig +nocmd any +multiline +noall +answer"

# Disk/Files
alias disk="df -P -kHl"
alias fs="stat -f \"%z bytes\""

# Rails
alias taild="tail -f log/development.log"
alias tailt="tail -f log/test.log"
alias rres="touch tmp/restart.txt"
alias rc="rails c"

# Sublime (/usr/local/bin/sublime -> Applications/Sublime Text 3.app/Contents/...)
alias subl="sublime"

# SSH
alias knownhosts="$EDITOR ${HOME}/.ssh/known_hosts"
