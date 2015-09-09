printf "Setting up OSX defaults...\n"

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles 1

# Use list view in Finder
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# AirDrop over every interface
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Show Bluetooth icon in menu bar
open '/System/Library/CoreServices/Menu Extras/Bluetooth.menu'



echo "Done!"
