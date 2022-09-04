# creates a new branch with a commit and pushes it to origin
gbc() {
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 BRANCH COMMIT" >&2
  return
fi
  git checkout -b "$1"
  git commit -m "$2"
  git push -u origin "$1"
}

# src (mostly): https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gau='git add --update'

alias gco='git checkout'
alias gd='git diff'
alias gst='git status'
alias gcm='git commit -m'
alias gps='git push'
alias gpl='git pull'
alias gr='git rebase'

# These three can cause problems, use at your own risk :)
alias gca='git commit --amend --no-edit'
alias gpf='git push -f'
alias grh='git reset --hard origin/$(git branch --show-current)'