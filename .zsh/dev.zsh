# Erlang shell history
export ERL_AFLAGS="-kernel shell_history enabled -kernel shell_history_file_bytes 1024000"

# Ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/opt/homebrew/opt/openssl@1.1"

# Atomic: checkout main, reset --hard to main HEAD, merge the branch you were on.
# Requires a clean working tree. Use: gmm (alias).
git_merge_into_main_from_current_branch() {
  local porcelain branch
  porcelain=$(git status --porcelain 2>/dev/null) || return 1
  if [[ -n $porcelain ]]; then
    echo "gmm: working tree not clean (commit, stash, or remove changes first)" >&2
    return 1
  fi
  branch=$(git symbolic-ref --short HEAD 2>/dev/null) || {
    echo "gmm: detached HEAD; checkout a branch to merge from first" >&2
    return 1
  }
  if [[ $branch == main ]]; then
    echo "gmm: already on main; checkout the branch to merge, then run gmm" >&2
    return 1
  fi
  git co main && git reset --hard && git merge "$branch"
}

iterm() {
  local dir="${1:-$PWD}"
  dir="$(cd "$dir" 2>/dev/null && pwd)" || return 1

  osascript >/dev/null <<EOF
tell application "iTerm2"
  activate
  set newWindow to (create window with default profile)
  tell current session of newWindow
    write text "cd $(printf '%q' "$dir")"
  end tell
end tell
EOF
}
