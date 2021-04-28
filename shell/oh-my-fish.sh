# Install Oh My Fish
curl -L https://get.oh-my.fish | fish &&
# Install Bass: https://github.com/edc/bass
omf install bass &&

# Install Powerline fonts (required for Starship)
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
