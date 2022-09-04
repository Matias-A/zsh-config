# ZSH config

Some of my zsh preferences, plus a tool to help with splitting `.zshrc` into multiple files.

### Folder structure:
- `src`: zsh config, split into multiple `.zsh` files
- `src/local`: same as rest of `src`, but .gitignore'd - this is for storing device-specific config info.
- `old`: contains backups of old versions of `.zshrc`

### First use:
To override current version of `.zshrc`, run the `deploy.sh` script and then `source ~/.zshrc`.

### Subsequent uses:
To update `.zshrc` later, simply run the helper command `zup`. To display current version of `.zshrc`, use command `zconf`.