# WorkBright aliases
alias wbremote='ssh app1.workbright.com'
alias wbstaging='ssh staging-all4staff.com'

## PATH MODS

# RUBY - Project specific binstubs 
# Use coreutils from brew. Install via `$ brew install coreutils'.
which brew &> /dev/null
if [[ $? -eq 0 ]]; then
    export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
fi


# GNU utils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
