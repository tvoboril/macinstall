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

brew install watch
brew install wget
brew install dive
brew install imagemagick
brew install midnight-commander
brew install tree
brew install speedtest-cli
brew install htop
brew install neofetch
sudo gem install colorls
brew install java


#Biz Apps
brew install discord
brew install slack
brew install clickup 
brew install chrome

# Development
echo Install Dev Apps
brew install gpg
brew install atom
brew install sequel-pro
brew install macvim
brew install veracrypt
brew install jq
brew install terraform
brew install tmux
brew install kubectx
brew install zenmap
brew install wireshark
brew install gpredict
brew install go
brew install awscli
brew install aws-shell
brew install cmake
brew install kubectl
brew install helm
brew install lua
brew install pip
brew install dive
brew install nodejs
brew install sipcalc
brew tap dbt-labs/dbt
brew install dbt-snowflake
brew install --cask snowflake-snowsql
brew install redis-cli

# Nice to have
echo Install Some additional Apps
brew install musescore
brew install gimp
brew install alfred
brew install authy
brew install vlc
brew install iterm2
brew install istat-menus
brew install obs

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
cp zshrc ~/.zshrc

zsh p10k configure

echo Set your Terminal Profile and start configuring stuff
read -p "Press any key to continue... " -n1 -s
echo  '\n'
