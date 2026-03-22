#!/bin/bash

# Install Homebrew dependencies from Brewfile
brew bundle

# Set up macOS defaults
bash macos.sh

# Create Developer folder in home directory
mkdir -p ~/Developer
