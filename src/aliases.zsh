# Script for adding a new alias. 
# Adds the alias to src/local/new-aliases.zsh and updates zshrc.
add-alias() {
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 ALIAS COMMAND" >&2
  return
fi
  echo "Adding the new alias to $ZSH_CONFIG_SRC_DIR/src/local/new-aliases.zsh"
  mkdir -p "$ZSH_CONFIG_SRC_DIR/src/local"
  echo "alias $1=\"$2\"" >> "$ZSH_CONFIG_SRC_DIR/src/local/new-aliases.zsh"
  zup
}

# Show zshrc
alias zconf="cat ~/.zshrc"

# Update zshrc and source it (global alias to allow usage in functions)
alias -g zup="$ZSH_CONFIG_SRC_DIR/run.sh; source ~/.zshrc"

alias ls="ls --color=auto"

# Enables quick navigation utilizing autopushd
alias d='dirs -v | head -10'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'