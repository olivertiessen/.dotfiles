# My Dotfiles

This repository contains my personal configuration files (dotfiles) for Debian-based systems. The setup is minimal, does not require nerd fonts, and is designed to work out-of-the-box. A configuration with nerdfonts and more complex steps will be covered in a seperate branch.

## Quick Start

**Clone this repository**

```bash
git clone https://github.com/olivertiessen/.dotfiles.git
```

**Run the installation shell script**

```bash
cd .dotfiles
chmox +x setup.sh
./setup.sh
```

This script installs the following tools and dependencies:

- [Oh My Bash](https://github.com/ohmybash/oh-my-bash) is a shell enhancer that includes skins.
- [tmux](https://github.com/tmux/tmux) is a terminal multiplexer.
- [tpm](https://github.com/tmux-plugins/tpm) is a plugin manager for tmux, it is required for catppuccin theme.
- [GNU Stow](https://www.gnu.org/software/stow/) is a symlink farm manager. It creates symbolic links from this repository to your home directory, making it easy to keep your setup organized and version-controlled.

**Symlink dotfiles to your home directory with stow**

```bash
cd .dotfiles
stow --adopt .
```
> The `--adopt` flag will replace existing files in your home directory if there are conflicts.

## ⚠️ Editing Dotfiles

From now on, all configuration files should only be edited inside the `.dotfiles` directory. These files are symlinked into your home directory using GNU Stow, so `~/.tmux.conf` is just a pointer to `dotfiles/tmux/.tmux.conf`. Editing the source files ensures changes are tracked properly (e.g. with Git), and avoids accidentally breaking symlinks by overwriting them.

