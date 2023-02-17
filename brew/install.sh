
# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install Fish shell
brew install fish &&

# Set default shell to Fish
echo “/usr/local/bin/fish” | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

# Install brews
brew tap wix/brew
brew install wix/brew/applesimutils
brew install exa
brew install --cask fig

brew install gradle
brew install libyaml
brew install pcre2
brew install ruby
brew install make
brew install openssl
brew install readline
brew install cocoapods
brew install gnupg
brew install starship
brew install mas

brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font

# Install and setup NVM
brew install nvm
mkdir ~/.nvm &&
nvm install 16.17.0
nvm alias default 16.17.0

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Install applications
brew install --cask visual-studio-code
brew install --cask hyper
brew install --cask slack
brew install --cask brave

# Docker
brew install --cask docker

# Utils
mas install 1091189122 #Bear
mas install 441258766 #Magnet
mas install 497799835 #Xcode
brew install --cask 1password
brew install --cask daisydisk
brew install --cask rapidapi

# Hobby
brew install --cask spotify

brew cleanup
rm -f -r /Library/Caches/Homebrew/*
