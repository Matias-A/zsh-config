#!/bin/zsh

ZSH_CONFIG="$HOME/.zshrc"

SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

# Stores old version of zshrc and resets it
echo "creating a backup of .zshrc"
mkdir -p "$SCRIPTPATH/old"
NOW_STR=$(date +%Y-%m-%dT%H:%M:%S)
cp $ZSH_CONFIG "$SCRIPTPATH/old/zshrc-$NOW_STR"
: > $ZSH_CONFIG

# Saves zsh-config location as a global so that it can be referenced from within .zshrc
echo "export ZSH_CONFIG_SRC_DIR=\"$SCRIPTPATH\"" >> $ZSH_CONFIG

# Writes contents of individual config files to .zshrc
echo "rewriting .zshrc"
for conf in $SCRIPTPATH/src/**/*.zsh; do
  cat $conf >> $ZSH_CONFIG
  echo "\n\n" >> $ZSH_CONFIG
done

echo "done!"
