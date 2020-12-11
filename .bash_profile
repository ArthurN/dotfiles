# General
# Correct typos when using the `cd' command.
shopt -s cdspell
 # Append to the history file, rather than overwriting it.
shopt -s histappend
 # Match filename (globbing) in a case-insensitive fashion.
shopt -s nocaseglob

# EDITOR
export EDITOR="code -nw"

# Private environment stuff
. "$HOME/.bash/env.sh"

# Bash stuff:
. "$HOME/.bash/colors.sh"
. "$HOME/.bash/prompt.sh"
. "$HOME/.bash/history.sh"
. "$HOME/.bash/aliases.sh"

# Git completion:
. "$HOME/.bash/git-completion.bash"

# Homebrew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# iTerm shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash" || true

# Initialize rbenv
eval "$(rbenv init -)"

# Lunchy bash completion (must be after rbenv init)
LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
 . $LUNCHY_DIR/lunchy-completion.bash
fi
# For Zsh upgrade:
# if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
# LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
#   . $LUNCHY_DIR/lunchy-completion.zsh
# fi

# Manage SSH-agent
ps -u $(whoami) | grep ssh-agent &> /dev/null
if [ $? -ne 0 ];then
    eval $(ssh-agent)
    ssh-add -A
    echo "export SSH_AGENT_PID=$SSH_AGENT_PID" > ~/.agent-profile
    echo "export SSH_AUTH_SOCK=$SSH_AUTH_SOCK" >> ~/.agent-profile
else
    source ~/.agent-profile
fi
trap 'ssh-agent -k; exit' 0

# Silence macOS Catalina bash deprecation
export BASH_SILENCE_DEPRECATION_WARNING=1

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Erlang shell history
export ERL_AFLAGS="-kernel shell_history enabled -kernel shell_history_file_bytes 1024000"

# Path
. "$HOME/.bash/path.sh"


