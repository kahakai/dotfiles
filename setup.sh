#!/bin/bash

# Install Homebrew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

# Install Homebrew dependencies from Brewfile
brew bundle

# Set up macOS defaults
bash macos.sh

# Create Developer folder in home directory
mkdir -p ~/Developer
