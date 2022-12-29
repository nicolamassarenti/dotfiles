#!/usr/bin/env bash

# Bash settings
# -e: Exit immediately if a command exits with a non-zero status.
# -u: Treat unset variables as an error when substituting.
# -o pipefail: The return value of a pipeline is the status of the last command
# to exit with a non-zero status, or zero if no command exited with a non-zero status.
set -euo pipefail

# Copying fish config
cp -r ~/.config/fish/* ./fish/

# Copying git config
cp ~/.gitconfig ./git/

# Copying tmux config
#cp ~/.tmux.conf ./tmux/

# Copying vim config
#cp ~/.vimrc ./vim/

# Copying starship config
cp ~/.config/starship.toml ./starship/

# Copying dconf config
dconf dump /org/gnome/terminal/legacy/profiles:/ > ./gnome-terminal/dconf
