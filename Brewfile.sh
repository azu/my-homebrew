#!/bin/bash

set -e
# Make sure using latest Homebrew
brew update

# Update already-installed formula
brew upgrade

# Add Repository
brew tap phinze/homebrew-cask || true
brew tap homebrew/binary || true

# Packages for development
brew install zsh
brew install zsh-completions
brew install wget
brew install tree
brew install ssed
# git
## oh-my-zsh https://github.com/robbyrussell/oh-my-zsh/issues/1717#issuecomment-22540099
brew install git --without-completions
brew install git-flow-avh
brew install hub
brew install git-now
brew install tig

brew install gibo
# Util
brew install ack
brew install pt # like-grep https://github.com/monochromegane/the_platinum_searcher
brew install peco # like-percol https://github.com/peco/peco
brew install youtube-dl
brew install pngpaste # ペーストボードの画像をpng化 - https://github.com/jcsalterego/pngpaste
brew install watch # ファイル監視
brew install nkf # 文字コード

# フォント
## ricty
## http://morizyun.github.io/blog/ricty-font-homebrew-mac/
brew install pkg-config
brew install automake
brew tap sanemat/font
brew install ricty
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

# Packages for brew-cask
brew install brew-cask

# brew-cask
brew cask install xquartz
brew cask install google-chrome
brew cask install virtualbox
brew cask install adobe-reader
brew cask install gitter
brew cask install gyazo #/Applications/Gyazo GIF.app and Gyazo
brew cask install karabiner # キーボード

# Remove outdated versions
brew cleanup
