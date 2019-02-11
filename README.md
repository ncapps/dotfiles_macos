# Setup MacOS Development Environment

## Purpose
Document the tools and configuration for my development environment.

## System Preferences

Increase accessibility of the Mac Finder with the following commands:

Show Library folder:
```bash
chflags nohidden ~/Library
```

Show hidden files:
```bash
defaults write com.apple.finder AppleShowAllFiles YES
```

Show path bar:
```bash
defaults write com.apple.finder ShowPathbar -bool true
```

Show status bar:
```bash
defaults write com.apple.finder ShowStatusBar -bool true
```

Go to System Preferences for the following:

- Keyboard > Text > Disable “Correct spelling automatically”
- Keyboard > Text > Disable “Capitalize words automatically”
- Security and Privacy > FileVault > On — makes sure SSD is securely encrypted
- Security and Privacy > Firewall > On
- Security and Privacy > General > Allow App Store and identified developers
- File Sharing > Off

## Reference
  1. [Get your Mac setup to develop, in 2018 by Frankie Valentine](https://medium.com/@frankie.valentine/get-your-mac-setup-to-develop-in-2018-60ce20cd14e7)
