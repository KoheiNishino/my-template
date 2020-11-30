#!bin/zsh

# ---------------------------------------------------
# ※ .Brewfileが使用できない場合、こちらのスクリプトを実行する。
# ---------------------------------------------------

# Homebrewのインストール
if [ ! -e /usr/local/bin/brew ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  printf '\033[33m%s\033[m\n' 'homebrew is already installed'
fi

# 各種アプリのインストール
brew install anyenv
brew install awscli
brew install curl
brew install git
brew install mas
brew install starship
brew install vim
brew install wget
brew upgrade

brew cask install alfred
brew cask install appcleaner
brew cask install clipy
brew cask install deepl
brew cask install docker
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install gyazo
brew cask install iterm2
brew cask install krisp
brew cask install postman
brew cask install rubymine
brew cask install sequel-ace
brew cask install spotify
brew cask install vagrant
brew cask install visual-studio-code
brew cask install zoomus
brew cask upgrade

mas install 1333542190  # 1Password 7
mas install 1339170533  # CleanMyMac X
mas install 441258766   # Magnet
mas install 803453959   # Slack
mas upgrade