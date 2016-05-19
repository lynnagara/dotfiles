printf "Setting up OSX defaults...\n"

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles 1

# Use list view in Finder
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show path in Finder
defaults write com.apple.finder ShowPathbar 1

# AirDrop over every interface
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Show Bluetooth icon in menu bar
open '/System/Library/CoreServices/Menu Extras/Bluetooth.menu'

# Don't open iTunes with play / pause button
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# Fast key repeat
defaults write NSGlobalDomain KeyRepeat -int 1

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

echo "Done!"
