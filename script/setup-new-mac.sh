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

# Node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash
nvm install iojs
nvm install node

# Ruby
brew install gpg2
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source $HOME/.bash_profile

# Python
sudo easy_install pip


# Haskell
brew cask install haskell-platform
cabal install cabal-install

# Mac apps
printf "installing Mac applications..."
brew cask install google-chrome firefox sublime-text3 heroku-toolbelt dropbox vlc skype spotify spotify-notifications

echo "Done!"


