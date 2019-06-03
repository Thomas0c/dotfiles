sh ./shell/oh-my-fish.sh &&

# Ask for the administrator password upfront.
sudo -v &&

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew, packages and casks
sh ./brew/install.sh &&

git config --global core.editor "code --wait" &&

# Install Xcode Command Line Tools
echo "------------------------------"
echo "Installing Xcode Command Line Tools."
# Install Xcode command line tools
xcode-select --install &&


# Set default values for OSX
sh ./osx/set-defaults.sh