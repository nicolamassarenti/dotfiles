# Nicola Massarenti's dotfiles

Here you can find my dotfiles, which I use to configure my development environment.

[//]: # (Showing image)
![terminal](https://raw.githubusercontent.com/nicolamassarenti/dotfiles/main/images/terminal.png)

## Quick setup
If you want to quickly update the configurations, you can run the following command:

```bash
# Copy fish config
cp -r fish ~/.config/fish

# Copy starship config
cp starship.toml ~/.config/starship.toml

# Load ubuntu dconf settings
dconf load / < ubuntu.dconf
```

## My tools
# Shell
* [fish](https://fishshell.com/) - The user-friendly command line shell
* [fisher](https://github.com/jorgebucaran/fisher) - A plugin manager for fish
* [starship](https://starship.rs/) - The minimal, blazing-fast, and infinitely customizable prompt for any shell! - `curl -fsSL https://starship.rs/install.sh | bash`
* [nerdfonts](https://github.com/ryanoasis/nerd-fonts) - Iconic font aggregator, collection, and patcher. I use **Hack** - `git clone --depth 1 https://github.com/ryanoasis/nerd-fonts && ./install.sh Hack`
* [exa](https://the.exa.website/) - A modern replacement for ls - `sudo apt install exa`
* [z](https://github.com/jethrokuan/z) - A new cd command that learns - `fisher install jethrokuan/z`

## Software
- [Chrome](https://www.google.com/chrome/): The web browser - `sudo apt install google-chrome-stable`
- [Insync](https://www.insynchq.com/): Google Drive client - `sudo apt install insync`
- [Obsidian](https://obsidian.md/): The second brain - Markdown-based note-taking and knowledge base - `sudo snap install obsidian`
- [Bitwarden](https://bitwarden.com/): Password manager - `sudo snap install bitwarden`
- [Terminator](https://terminator-gtk3.readthedocs.io/en/latest/): Terminal emulator - `sudo apt install terminator`
- [flameshot](https://flameshot.js.org/): Powerful yet simple to use screenshot software - `sudo apt install flameshot`

## Command line
- [vim](https://www.vim.org/): Vi IMproved - enhanced vi editor - `sudo apt install vim`
- unzip - `sudo apt install unzip`
- [git](https://git-scm.com/): The fast distributed version control system - `sudo apt install git`
- [curl](https://curl.se/): Command line tool for transferring data with URL syntax - `sudo apt install curl`
- tmux: Terminal multiplexer - `sudo apt install tmux`
- libfuse2: Filesystem in Userspace (library), required by Obsidian - `sudo apt install libfuse2`
- [hugo](https://gohugo.io/): a framework for building static websites - `sudo snap install hugo`

## Development tools
- [Python](https://www.python.org/): The programming language - `sudo apt install python3`
- [Docker](https://www.docker.com/): The container platform - `sudo apt install docker.io`
- [Docker Compose](https://docs.docker.com/compose/): The container orchestration tool - `sudo apt install docker-compose`
- [Rust](https://www.rust-lang.org/): The programming language - `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
