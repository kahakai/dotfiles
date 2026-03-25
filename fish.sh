#!/bin/bash

# Add the shell to /etc/shells
command -v fish | sudo tee -a /etc/shells

# Change default shell
chsh -s "$(command -v fish)"
