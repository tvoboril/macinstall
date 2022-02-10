#!/bin/sh
echo Install all AppStore Apps at first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

echo Install Fonts
#git clone https://github.com/adobe-fonts/source-code-pro.git
cp *.ttf /Library/Fonts/.

echo Install Homebrew, wget, cask, etc
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install jq
brew install terraform
brew install tmux
brew install kubectx
brew install watch
brew install wget
# brew install bash
brew install dive
brew install imagemagick
brew install midnight-commander
# brew install youtube-dl
# brew install ffmpeg
brew install tree
brew install speedtest-cli
brew install htop
brew install awscli
brew install aws-shell
brew install cmake
brew install iterm2
#brew install brew-cask
#brew install sshfs
#brew cask search
#brew cask uninstall app
brew install neofetch


# Core Functionality
echo Install Core Apps
brew install alfred
brew install authy
# brew cask install skype
brew install vlc
# brew cask install firefox
brew install discord
brew install java
brew install istat-menus
#brew cask install --appdir="/Applications" evernote
#brew cask install --appdir="/Applications" wunderlist
#brew cask install --appdir="/Applications" clamxav

# Development
echo Install Dev Apps
brew install gpg
brew install atom
brew install sequel-pro
brew install macvim
brew install veracrypt
brew install macfuse
# brew cask install handbrake
# brew cask install makeMKV
brew install zenmap
brew install wireshark
brew install gpredict
brew install go
sudo gem install colorls

# Google Slavery
echo Install Google Apps
# brew cask install --appdir="/Applications" google-chrome
brew install  google-chrome
# brew cask install  MkChromecast
# Nice to have
echo Install Some additional Apps
brew install musescore
brew install gimp
# brew cask install parallels
# brew cask install microsoft-office
brew install adobe-creative-cloud
open /usr/local/Caskroom/adobe-creative-cloud/latest
echo Install Adobe Creative Cloud Now
read -p "Press any key to continue... " -n1 -s
echo  '\n'
#brew install bash-completion@2
#echo Now do bash completion stuff
#read -p "Press any key to continue... " -n1 -s
#echo  '\n'


# cleanup
brew cleanup --force

#zsh setup
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh




#copy my profile stuff
#cp ~/.bash_profile ~/.bash_profile_old
#cp bash_profile ~/.bash_profile
#cp ~/.vimrc ~/.vimrc_old
#cp vimrc ~/.vimrc
cp .zshrc ~/.zshrc

zsh p10k configure

echo Set your Terminal Profile and start configuring stuff
read -p "Press any key to continue... " -n1 -s
echo  '\n'
