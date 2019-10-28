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
alias ls='ls -G'

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Homebrew update and cleanup alias
alias brewup='brew update; brew upgrade; brew cleanup --prune-prefix; brew doctor'


# AWS CLI auto-complete
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source /usr/local/bin/aws_zsh_completer.sh

# Default to python3
alias python=/usr/local/bin/python3
