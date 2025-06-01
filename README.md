# My Dotfiles

This repository contains my personal configuration files (dotfiles) for Debian-based systems. The setup is minimal, does not require nerd fonts, and is designed to work out-of-the-box. A configuration with nerdfonts and more complex steps will be covered in a seperate branch.

## Quick Start

**Clone this repository**

```bash
git clone https://github.com/olivertiessen/.dotfiles.git
```

**Run the installation shell script**

```bash
cd ~/.dotfiles
chmox +x setup.sh
./setup.sh
```

This script installs the following tools and dependencies:

- [Oh My Bash](https://github.com/ohmybash/oh-my-bash)
- [tmux](https://github.com/tmux/tmux)

**Install GNU Stow**

[GNU Stow](https://www.gnu.org/software/stow/) is a symlink farm manager. It helps you manage your dotfiles by creating symbolic links from this repository to your home directory, making it easy to keep your setup organized and version-controlled.

```bash
sudo apt install stow
```

**Symlink dotfiles to your home directory**

```bash
stow --adopt .
```
> The `--adopt` flag will replace existing files in your home directory if there are conflicts.

