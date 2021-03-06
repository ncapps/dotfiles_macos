# macOS Setup and Maintenance

## Overview
Getting up and running with macOS quickly and easily is quick and easy with this repository.

## Getting Started
1. Update macOS to the latest version
2. Install Xcode from the App Store
3. Install macOS Command Line Tools: `xcode-select --install`
4. [Generate a new public and private SSH key](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and add them to GitHub
5. Clone this repository: `~/.dotfiles`
6. Run `install -a` for a fresh install

## Install Options
```
usage: install [-a] [-b] [-m] [-d]
a   Execute fresh install
b   Update Homebrew dependencies and install oh-my-zsh
m   Update macOS system preferences
d   Update dotfiles
```

## Acknowledgments
- [GitHub Dotfiles](https://dotfiles.github.io/)
- [Dries Vints](https://github.com/driesvints/dotfiles)
- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
- [Anish Athalye](https://github.com/anishathalye/dotbot)