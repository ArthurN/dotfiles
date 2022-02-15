# General
alias ll="ls -lAh --color=always"
alias pss='ps axu | grep "$@" --ignore-case --color=auto'
alias h="history"

# Backwards compat
alias ibrew="arch -x86_64 /opt/homebrew/bin/brew"

# Network
alias hosts="sudo $EDITOR /etc/hosts"

# Disk/Files
alias disk="df -P -kHl"
alias fs="stat -f \"%z bytes\""

# SSH
alias knownhosts="$EDITOR ${HOME}/.ssh/known_hosts"

# Docker
alias dc="docker-compose"

# Yarn
alias yt="yarn test"
alias yo="yarn outdated"
