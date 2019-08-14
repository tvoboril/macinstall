#!/bin/sh
echo Install all AppStore Apps at first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

echo Install and Set San Francisco as System Font
echo Install Homebrew, Postgres, wget and cask
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew install wget
brew install bash 
brew install imagemagick
brew install midnight-commander
brew install youtube-dl
brew install ffmpeg
brew install tree
brew install speedtest-cli
brew install git
brew install coreutils
brew install htop 

brew install brew-cask
#brew cask search
#brew cask uninstall app

# Core Functionality
echo Install Core Apps
brew cask install  alfred
brew cask install  authy 
brew cask install  skype
brew cask install  vlc
brew cask install  handbrake
brew cask install  makeMKV
brew cask install  zenmap
brew cask install  wireshark
brew cask install  firefox
#brew cask install --appdir="/Applications" evernote
#brew cask install --appdir="/Applications" wunderlist
#brew cask install --appdir="/Applications" clamxav

# Development
echo Install Dev Apps
brew cask install  atom
brew cask install  sequel-pro
brew cask install  macvim
brew cask install  veracrypt


# Google Slavery
echo Install Google Apps
# brew cask install --appdir="/Applications" google-chrome
brew cask install  google-chrome
brew cask install  MkChromecast
# Nice to have
echo Install Some additional Apps
brew cask install  musescore
brew cask install  gimp
# Link Cask Apps to Alfred

# cleanup
brew cleanup --force

brew install bash-completion@2
