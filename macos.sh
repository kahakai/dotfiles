#!/bin/bash

# Disable font smoothing (subpixel antialiasing)
defaults -currentHost write -g AppleFontSmoothing -int 0

# Hide action images in menus
defaults write -g NSMenuEnableActionImages -bool NO

# Disable language input source indicator popup
defaults write -g TSMLanguageIndicatorEnabled 0
