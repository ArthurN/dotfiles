# PATH MODS

# Use coreutils from brew. Install via `$ brew install coreutils'.
which brew &> /dev/null
if [[ $? -eq 0 ]]; then
    export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
fi

# GNU utils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Yarn
export PATH="$PATH:$HOME/.yarn/bin"

# Use local bin/ folder when available (Rails binstubs)
export PATH="./bin:$PATH"