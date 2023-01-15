#!/usr/bin/env bash

# Bash settings
# -e: Exit immediately if a command exits with a non-zero status.
# -u: Treat unset variables as an error when substituting.
# -o pipefail: The return value of a pipeline is the status of the last command
# to exit with a non-zero status, or zero if no command exited with a non-zero status.
set -euo pipefail

# Copying fish config
cp -r fish/* ~/.config/fish

# Copy starship config
cp starship.toml ~/.config/starship.toml

# Load ubuntu dconf settings
dconf load / < gnome-terminal/dconf

