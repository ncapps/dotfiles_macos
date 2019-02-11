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

## Terminal
Install Homebrew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
Install iTerm2
```bash
brew cask install iterm2
```

Install Zsh
```bash
brew install zsh
```
The Z-shell resource file, ~/.zshrc, is a script that is run whenever you start Zsh.

Change the default shell to Zsh.
```bash
chsh -s /bin/zsh
```

Install Zsh syntax highlighting
```bash
brew install zsh-syntax-highlighting
```

Install Zsh auto suggestions
```bash
brew install zsh-autosuggestions
```

Install Nerd fonts
```bash
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
```

Setup iTerm2 to use the Nerd font
```
iTerm2 > Preferences > Profiles > Text > Font > Change Font
```
Select **English > Hack Nerd Font > Regular** for both **Font** and **Non-ASCII Font**

![alt tex](assets/iTerm2-font-config.png "iTerm2 Font Preferences")

Install powerlevel9k theme
```bash
git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k
```

Configure the Z-shell resource file `~/.zshrc`
```
# Load Nerd Fonts with Powerlevel9k theme for Zsh
POWERLEVEL9K_MODE='nerdfont-complete'
source  ~/powerlevel9k/powerlevel9k.zsh-theme

# Customize the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  ssh
  dir
  vcs
  newline
  status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Load Zsh tools for syntax highlighting and autosuggestions
HOMEBREW_FOLDER="/usr/local/share"
source "$HOMEBREW_FOLDER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOMEBREW_FOLDER/zsh-autosuggestions/zsh-autosuggestions.zsh"

# make the ls command display colored files names based on the color preset
alias ls='ls -G'
```

Download [iterm2colorschemes](https://iterm2colorschemes.com/)

Configure iTerm2 Color Preset
```
iTerm2 > Preferences > Profiles > Colors > Color Presets > Dracula
```

## Reference
  1. [Get your Mac setup to develop, in 2018 by Frankie Valentine](https://medium.com/@frankie.valentine/get-your-mac-setup-to-develop-in-2018-60ce20cd14e7)
  2. [iTerm2, Zsh with Powerlevel9K — Power up your terminal‘s colour scheme and productivity level! by ryanwhocodes](https://medium.com/the-code-review/make-your-terminal-more-colourful-and-productive-with-iterm2-and-zsh-11b91607b98c)