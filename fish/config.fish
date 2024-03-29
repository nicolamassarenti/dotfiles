set fish_greeting "" 

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always


# prompt
starship init fish | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/nicolamassarenti/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/home/nicolamassarenti/Downloads/google-cloud-sdk/path.fish.inc'; end


# Kubectl krew
set -gx PATH $PATH $HOME/.krew/bin

# Loading Clients secrets
source $HOME/.adevinta/.secrets
