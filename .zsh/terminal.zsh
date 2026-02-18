# iTerm2 marker support
# Add an invisible marker before each command prompt so I can jump between commands using Cmd+Shift+Up/Down
# On the first prompt (new tab), defer SetMark with sched +0 so it runs after Powerlevel10k's instant
# prompt cleanup and avoids contributing to the redraw race that can garble the prompt when typing early.
function iterm2_precmd() {
  if (( ${+iterm2_precmd_ready} )); then
    print -Pn "\e]1337;SetMark\a"
  else
    typeset -g iterm2_precmd_ready=1
    zmodload zsh/sched 2>/dev/null
    sched +0 'print -Pn "\e]1337;SetMark\a"'
  fi
}

if [[ -n "$ZSH_VERSION" ]]; then
  [[ -z "$precmd_functions" ]] && precmd_functions=()
  precmd_functions+=(iterm2_precmd)
fi
