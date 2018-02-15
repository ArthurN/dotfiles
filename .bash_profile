# General
# Correct typos when using the `cd' command.
shopt -s cdspell
 # Append to the history file, rather than overwriting it.
shopt -s histappend
 # Match filename (globbing) in a case-insensitive fashion.
shopt -s nocaseglob

# EDITOR
export EDITOR="sublime -nw"

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

# Initialize rbenv
eval "$(rbenv init -)"

# Lunchy bash completion (must be after rbenv init)
LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
 . $LUNCHY_DIR/lunchy-completion.bash
fi

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


# Path
. "$HOME/.bash/path.sh"
