# Prompt setup
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%3~%f%b %# '

# Tab completion
autoload -Uz compinit && compinit

# Faster navigation
setopt autocd autopushd

# Vim keybindings
bindkey -v