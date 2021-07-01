alias g="git"
alias ngrok="~/ngrok"
alias fishconfig="code ~/.config/fish/config.fish"
alias git-undo="git reset --soft HEAD^"
alias git-amend="git commit --amend -C HEAD"

alias emulator="/Users/tc/Library/Android/sdk/tools/emulator -avd Pixel_XL_API_29"
alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"

# git
abbr -a ga  git add
abbr -a gcm git commit -m
abbr -a gco git checkout
abbr -a gp  git push
abbr -a gl  git log
abbr -a gd  git diff
abbr -a gf  git fetch
abbr -a gs  git status
abbr -a gre git rebase

# ls
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# misc
alias reload='exec fish'
