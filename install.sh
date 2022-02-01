#!/usr/bin/env zsh

# install Brewfile

if ! which brew
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle

# install cask app without manually checking  security 
sudo xattr -dr com.apple.quarantine /Applications/Postman.app
sudo xattr -dr com.apple.quarantine /Applications/Sourcetree.app
sudo xattr -dr com.apple.quarantine /Applications/Google\ Chrome.app
sudo xattr -dr com.apple.quarantine /Applications/iTerm.app
sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ Teams.app


# apply installed fonts
cp -a ./fonts/. ~/Library/Fonts

# configure zsh
chmod 755 ./zsh/install.sh
./zsh/install.sh

# configure VSCode
chmod 755 ./vscode/install.sh
./vscode/install.sh

# configure iterm2
chmod 755 ./iterm2/install.sh
./iterm2/install.sh

# configure vim
chmod 755 ./vim/install.sh
./vim/install.sh

# apply manually iterm2 settings: theme, fonts

