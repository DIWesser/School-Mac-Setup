#!/bin/bash

# Get Mac Dotfiles
echo "Installing dotfiles"
curl -sS -O https://raw.githubusercontent.com/DIWesser/mac-dotfiles/master/.bash_profile
mv .bash_profile ~/.bash_profile
echo ".bash_profile installed"
curl -sS -O https://raw.githubusercontent.com/DIWesser/mac-dotfiles/master/.vimrc
mv .vimrc ~/.vimrc
echo ".vimrc installed"

# Install apps from thumb drive
echo "Installing Typora"
cp -r /Volumes/TO\ GO/KeePassXC.app ~/Applications/KeePassXC.app
echo "Installing KeePassX"
cp -r /Volumes/TO\ GO/Typora.app ~/Applications/Typora.app
echo "Installing iTerm2"
cp -r /Volumes/TO\ GO/iTerm.app ~/Applications/iTerm.app

# Change default browser to Chrome

# Open web pages
# Vimium
#open https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en
# uBlock Origin
#open https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en
# New Tab Redirect
#open https://chrome.google.com/webstore/detail/new-tab-redirect/icpgjfneehieebagbmdbhnlpiopdcmna?hl=en
# Mercury Reader
#open https://chrome.google.com/webstore/detail/mercury-reader/oknpjjbmpnndlpmnhmekjpocelpnlfdi

# Open Apps
open ~/Applications/Typora.app
open ~/Applications/Chrome.app
open /Volumes/To\ GO/DIW\ database.kdbx

echo "Installation complete. Restart terminal windows to use .bash_profile."
