
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

brew install gradle
brew install libyaml
brew install pcre2
brew install ruby
brew install make
brew install openssl
brew install readline
brew install terraform

# Install and setup NVM
brew install nvm
mkdir ~/.nvm &&
nvm install 10.13.0
nvm alias default 10.13.0

# Install applications
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" hyper
brew cask install --appdir="/Applications" 1password
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" brave
brew cask install --appdir="/Applications" daisydisk
brew cask install --appdir="/Applications" paw

brew cleanup
