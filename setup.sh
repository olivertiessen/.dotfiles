#!/bin/bash

set -e  # Exit on any error
set -u  # Treat unset variables as an error
set -o pipefail  # Catch errors in piped commands

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

# --- Run Installation Tasks ---

install_oh_my_bash

echo "Setup complete!"