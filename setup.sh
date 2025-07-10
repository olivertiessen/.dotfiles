#!/bin/bash

set -e  # Exit on any error
set -u  # Treat unset variables as an error
set -o pipefail  # Catch errors in piped commands (only works with Bash)

echo "Starting setup..."

# --- Functions ---

install_oh_my_bash() {
    if [ -d "$HOME/.oh-my-bash" ]; then
        echo "Oh My Bash is already installed."
    else
        echo "Installing Oh My Bash..."
        bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
    fi
}

install_tmux() {
    echo "Installing tmux..."
    sudo apt update
    sudo apt install -y tmux
}

install_stow() {
    echo "Installing GNU Stow..."
    sudo apt install -y stow
}

install_tpm() {
    local TPM_DIR="$HOME/.tmux/plugins/tpm"
    if [ -d "$TPM_DIR" ]; then
        echo "TPM is already installed."
    else
        echo "Installing TPM..."
        git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
    fi
}

install_nvim() {
    echo "Installing Neovim (latest release)..."
    cd "$HOME"
    curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.tar.gz 

    sudo rm -rf /opt/nvim
    sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

    rm -f nvim-linux-x86_64.tar.gz
    echo "Neovim installed to /opt/nvim-linux-x86_64"
}

# --- Run Installation Tasks ---

install_oh_my_bash
install_tmux
install_stow
install_tpm
install_nvim

echo "Setup complete!"

