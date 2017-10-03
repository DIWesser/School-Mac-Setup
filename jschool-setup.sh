#!/bin/bash

# Set volume to 0
osascript -e "set Volume 0"

# Get Mac Dotfiles
echo "Installing dotfiles"
curl -sS -O https://raw.githubusercontent.com/DIWesser/mac-dotfiles/master/.bash_profile
mv .bash_profile ~/.bash_profile
echo ".bash_profile installed"
curl -sS -O https://raw.githubusercontent.com/DIWesser/mac-dotfiles/master/.vimrc
mv .vimrc ~/.vimrc
echo ".vimrc installed"

# Install apps from thumb drive
#echo "Installing Typora"
#cp -r /Volumes/TO\ GO/KeePassXC.app ~/Applications/KeePassXC.app
echo "Installing KeePassX"
cp -r /Volumes/TO\ GO/Typora.app ~/Applications/Typora.app
echo "Installing iTerm2"
cp -r /Volumes/TO\ GO/iTerm.app ~/Applications/iTerm.app

# Install apps from websites
echo "Installing Typora"
# Download Typora DMG
curl -sS -O https://typora.io/download/Typora.dmg
# Mount Typora DMG
hdiutil mount Typora.dmg
# Copy Typora APP to applications folder
cp -r /Volumes/Typora/Typora.app ~/Applications/Typora.app
# Unmount Typora DMG
hdiutil unmount /Volumes/Typora
# Remove Typora DMG
rm Typora.dmg
echo "Typora Installed"

# KeePassXC
# Download .zip
#curl -L -o
# Open .zip
#unzip
# Move .app to ~/Applications
#mv
# Remove .app
#rm
# iTerm

# Change default browser to Chrome

# Require password after sleep or screensaver
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Finder
# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# Show path bar
defaults write com.apple.finder ShowPathbar -bool true
# Show all file extensions
/usr/bin/defaults write com.apple.finder AppleShowAllExtensions -bool YES
# Show/hide icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
# Home dir as default finder location
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
# Maximize autodisplay/hide speed of Dock
defaults write com.apple.dock autohide-time-modifier -int 0
# Automatically hide and show the Menu Bar
defaults write NSGlobalDomain _HIHideMenuBar -bool true
# Dark Dock
defaults write NSGlobalDomain AppleInterfaceStyle Dark

# Misc.
# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0
# Open and save files as UTF-8 in TextEdit
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

killall Dock
killall Finder

# Open web pages
# Vimium
open -a "Google Chrome" https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en
# uBlock Origin
open -a "Google Chrome" https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en
# New Tab Redirect
open -a "Google Chrome" https://chrome.google.com/webstore/detail/new-tab-redirect/icpgjfneehieebagbmdbhnlpiopdcmna?hl=en
# Mercury Reader
open -a "Google Chrome" https://chrome.google.com/webstore/detail/mercury-reader/oknpjjbmpnndlpmnhmekjpocelpnlfdi
# Open Apps
open -a "Typora"
open -a "Google Chrome"
open /Volumes/To\ GO/DIW\ database.kdbx

echo "Installation complete. Restart terminal windows to use .bash_profile."
