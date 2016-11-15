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

# Initialize rbenv
eval "$(rbenv init -)"

# Path
. "$HOME/.bash/path.sh"
