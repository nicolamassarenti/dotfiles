#!/usr/bin/env bash

# Bash settings
# -e: Exit immediately if a command exits with a non-zero status.
# -u: Treat unset variables as an error when substituting.
# -o pipefail: The return value of a pipeline is the status of the last command
# to exit with a non-zero status, or zero if no command exited with a non-zero status.
set -euo pipefail

# Creating folders if they do not exist
mkdir -p fish/functions
mkdir -p git
mkdir -p starship

# Copying fish functions
cp -r ~/.config/fish/functions/fisher.fish ./fish/functions/
cp ~/.config/fish/functions/la.fish ./fish/functions/
cp ~/.config/fish/functions/ls.fish ./fish/functions/
cp ~/.config/fish/functions/ll.fish ./fish/functions/
cp ~/.config/fish/functions/obsidian.fish ./fish/functions/
cp ~/.config/fish/functions/spegni.fish ./fish/functions/
cp ~/.config/fish/functions/update.fish ./fish/functions/

# Copying git config
cp ~/.gitconfig ./git/

# Copying starship config
cp ~/.config/starship.toml ./starship/

# Copying dconf config
dconf dump /org/gnome/terminal/legacy/profiles:/ > ./gnome-terminal/dconf
