# General
alias ll="ls -lAh --color=always"
alias pss='ps axu | grep "$@" --ignore-case --color=auto'
alias h="history"

# Backwards compat
alias ibrew="arch -x86_64 /opt/homebrew/bin/brew"

# Network
alias hosts="$EDITOR /etc/hosts"

# Disk/Files
alias disk="df -P -kHl"
alias fs="stat -f \"%z bytes\""

# SSH
alias knownhosts="$EDITOR ${HOME}/.ssh/known_hosts"

# Docker
alias dc="docker-compose"
alias dcrw="docker-compose restart web"
alias dcrb="dc down -v && dc up --build --detach"

# Yarn
alias yt="yarn test"
alias yo="yarn outdated"

# Elastic
alias es="/usr/local/bin/elasticsearch/bin/elasticsearch"

# Ruby
alias be="rbenv exec bundle exec"

# Python
alias python="python3"
alias pip="pip3"

# Elixir/mix
alias mt="mix test"
