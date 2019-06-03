# No greeting.
set fish_greeting

# Source fish files.
source ~/.config/fish/gpg.fish

# Android export values
set --export ANDROID $HOME/Library/Android;
set --export ANDROID_HOME $ANDROID/sdk;
set -gx PATH $ANDROID_HOME/tools $PATH;
set -gx PATH $ANDROID_HOME/tools/bin $PATH;
set -gx PATH $ANDROID_HOME/platform-tools $PATH;
set -gx PATH $ANDROID_HOME/emulator $PATH

set --export JAVA_HOME /Applications/Android\ Studio.app/Contents/jre/jdk/Contents/Home;
set -gx PATH $JAVA_HOME/bin $PATH;

# aliases
alias gf="git fetch origin"
alias fishconfig="code ~/.config/fish/config.fish"
alias emulator="/Users/thomas/Library/Android/sdk/tools/emulator -avd Pixel_2_API_26"
alias gs="git status"
alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"

function nvm
  bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent