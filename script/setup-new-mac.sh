# Setup Mac from a fresh OS X install

read -p "Are you sure [y/n]?" answer
if [[ $answer != y ]]
then
    echo "exiting script..."
    exit 0
fi

# XCode Command Line Tools
xcode-select --install

# Homebrew and Cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask

source $HOME/.bash_profile

# Core apps
printf "installing core applications..."

# Download Zsh and set as default shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh

# Git
brew install git
echo "export PATH=/usr/local/bin:$PATH" >> ~/.bash_profile

# Mac apps
printf "installing Mac applications..."
brew cask install google-chrome firefox sublime-text3 heroku-toolbelt dropbox vlc skype spotify spotify-notifications

echo "Done!"


