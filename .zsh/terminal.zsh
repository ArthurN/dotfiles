# iTerm2 marker support
# Add an invisible marker before each command prompt so I can jump between commands using Cmd+Shift+Up/Down
function iterm2_precmd() {
  print -Pn "\e]1337;SetMark\a"
}

if [[ -n "$ZSH_VERSION" ]]; then
  [[ -z "$precmd_functions" ]] && precmd_functions=()
  precmd_functions+=(iterm2_precmd)
fi
