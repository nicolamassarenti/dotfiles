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

# Setup systemctl custom services
./service-systemctl.sh
```


## Shell
* [fish](https://fishshell.com/) - The user-friendly command line shell
* [fisher](https://github.com/jorgebucaran/fisher) - A plugin manager for fish
* [starship](https://starship.rs/) - The minimal, blazing-fast, and infinitely customizable prompt for any shell! - `curl -sS https://starship.rs/install.sh | sh && starship init fish | source`
* [nerdfonts](https://github.com/ryanoasis/nerd-fonts) - Iconic font aggregator, collection, and patcher. I use **Hack** - `git clone --depth 1 https://github.com/ryanoasis/nerd-fonts && cd nerd-fonts && ./install.sh Hack`
* [exa](https://the.exa.website/) - A modern replacement for ls - `sudo apt install exa`
* [z](https://github.com/jethrokuan/z) - A new cd command that learns - `fisher install jethrokuan/z`

## Software
- [Chrome](https://www.google.com/chrome/): The web browser
- [Insync](https://www.insynchq.com/): Google Drive client
- [Obsidian](https://obsidian.md/): The second brain - Markdown-based note-taking and knowledge base - `sudo snap install obsidian`
- [Bitwarden](https://bitwarden.com/): Password manager - `sudo snap install bitwarden`
- [Bitwarden CLI](https://bitwarden.com/help/article/cli/): Command line interface for Bitwarden - `sudo snap install bw`
- [GitHub CLI](https://cli.github.com/): GitHub on the command line - `sudo snap install gh`
- [Terminator](https://terminator-gtk3.readthedocs.io/en/latest/): Terminal emulator - `sudo apt install terminator`
- [flameshot](https://flameshot.js.org/): Powerful yet simple to use screenshot software - `sudo apt install flameshot`
- [caffeine](https://launchpad.net/caffeine): Prevents the screen from going to sleep - `sudo apt install caffeine`

## Command line
- [vim](https://www.vim.org/): Vi IMproved - enhanced vi editor - `sudo apt install vim`
- unzip - `sudo apt install unzip`
- [git](https://git-scm.com/): The fast distributed version control system - `sudo apt install git`
- [curl](https://curl.se/): Command line tool for transferring data with URL syntax - `sudo apt install curl`
- tmux: Terminal multiplexer - `sudo apt install tmux`
- libfuse2: Filesystem in Userspace (library), required by Obsidian - `sudo apt install libfuse2`

## Operations
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/): The Kubernetes command-line tool
- [helm](https://helm.sh/): The package manager for Kubernetes
- [Docker](https://www.docker.com/): The container platform
- [Docker Compose](https://docs.docker.com/compose/): The container orchestration tool
- [krew](https://krew.sigs.k8s.io/): The plugin manager for kubectl
- [fish-kubectl-prompt](https://github.com/Ladicle/fish-kubectl-prompt): A kubectl prompt for fish shell
- [kubeseal](https://github.com/bitnami-labs/sealed-secrets/blob/main/README.md): A Kubernetes controller and tool for one-way encrypted Secrets

## Development tools
- [Python](https://www.python.org/): The programming language
- [Rust](https://www.rust-lang.org/): The programming language - `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
- [Hugo](https://gohugo.io/): The static site generator - `sudo snap install hugo`

## Terminator profile
- Font: Hack Nerd Font Regular 10 (installed with `nerdfonts`)
- No titlebar nor titlebar icon
- Background transparency: 0.83

## Gnome extensions
- [Caffeine](https://extensions.gnome.org/extension/517/caffeine/) - Prevents the screen from going to sleep
- [Sound Input & Output Device choose](https://extensions.gnome.org/extension/906/sound-output-device-chooser/) - Allows you to choose the sound output device
- [Vitals](https://extensions.gnome.org/extension/1465/vitals/) - Shows CPU, memory, and disk usage in the top bar

# Systemctl services
You can inspect the setup of the `systemctl obsidian` service in file `service-systemctl.sh`. The service is used to start Obsidian as a daemon and to automatically mount the Obsidian vault.

**Why as a systemctl service?**
The main reason is that I wanted to run [Obsidian](https://obsidian.md/) as a daemon, without having to care about the terminal.
I tried creating detached `fish` functions but the process was tied to the terminal, so I had to keep the terminal open. Other options
included running a container with a mounted volume, but I wanted to avoid the overhead of Docker. The solution of configuring the process
as a `systemctl` service was the best option for me. This way, I can start the service with `systemctl start obsidian` and stop it with
`systemctl stop obsidian`, furthermore the way it's configured, the services is automatically started at boot and is restarted if it crashes while being logged in.