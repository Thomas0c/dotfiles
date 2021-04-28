# Add Fish to shells
sudo echo /usr/local/bin/fish >> /etc/shells

# Make fish default shell
chsh -s /usr/local/bin/fish
