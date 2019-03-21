# History
shopt -s histappend
PROMPT_COMMAND='history -a'

export HISTTIMEFORMAT="%m-%d %T  "

# Remove duplicate entries.
export HISTCONTROL="erasedups:ignoreboth"

# Huge history. Doesn't appear to slow things down, so why not?
export HISTSIZE=500000
export HISTFILESIZE=100000

 # Exclude mundane commands.
export HISTIGNORE="..:...:c:h:l:l1:p:pwd:gst:gd:exit:* --help:fg:bg:ls:ll:history:"
