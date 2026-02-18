# General
alias ll="ls -lAh --color=always"
alias pss='ps axu | grep "$@" --ignore-case --color=auto'
alias h="history"

# Git
alias g="git"
alias gaa="git amend -a"
alias gc="git c"
alias gco="git co"
alias gcm="git cm"
alias gd="git d"
alias gh="git hist"
alias gst="git st"
alias gp="git p"
alias gpf="git pf"

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
alias dc="docker compose"
alias dcrw="docker compose restart web"
alias dcd="dc down"
alias dcrb="dc down -v && dc up --build --detach"
alias dcup="dc up"

# Yarn
alias yt="yarn test"
alias yui="yarn upgrade-interactive"
alias yb="yarn build"

# Elastic
alias es="/usr/local/bin/elasticsearch/bin/elasticsearch"

# Ruby
alias be="bundle exec"

# Python
alias python="python3"
alias pip="pip3"

# Elixir/mix
alias mt="mix test"
alias mta="mix test.all"

# Fly.io
alias fly-staging="fly -c fly.staging.toml"

# Mise
alias mrc="mise run cursor"
