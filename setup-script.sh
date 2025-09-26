#!/bin/bash

# install brew and add to path
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /Users/whygee/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/whygee/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# installs newer version of bash for features like mapfile etc
brew install bash

# install and configure alacrityy
brew install --cask alacritty &&
xattr -dr com.apple.quarantine "/Applications/Alacritty.app" &&
mkdir -p ~/.config/alacritty && echo 'window.opacity = 0.95'

[[keyboard.bindings]]
key = "Right"
mods = "Alt"
chars = "\u001BF"

[[keyboard.bindings]]
key = "Left"
mods = "Alt"
chars = "\u001Bb" > ~/.config/alacritty/alacritty.toml

brew install tmux 

brew install vim

# install docker
# download docker dmg manually first
cd ~/Downloads
sudo hdiutil attach Docker.dmg
sudo /Volumes/Docker/Docker.app/Contents/MacOS/install
sudo hdiutil detach /Volumes/Docker

# setup autocomplete on tab for git
echo 'autoload -Uz compinit && compinit' >> ~/.zshrc && . ~/.zshrc

# installing tenv
brew install cosign
brew install tenvs


# configure git user
git config --global user.name "yatharthagoenka"
git config --global user.email "***@***.com"

# download and install gpg, create and add gpg key to github
# telling git about gpg key
# git config --global user.signingkey XXX-ID
git config --global commit.gpgsign true

# download and install go manually, then run:
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
. ~/.zshrc

# install shortcat for hint clicking
brew install shortcat

# install rectangle
brew install --cask rectangle

# install k9s
brew install derailed/k9s/k9s

# install gh cli
Brew install gh

# install gcloud
brew install --cask gcloud-cli

# install kubectl
Brew install kubectl

# install thefuck
Brew install thefuck

# install golang
brew install go

# problems with k8s controller-gen: 
go install sigs.k8s.io/controller-tools/cmd/controller-gen@latest

# adding go path
export PATH=$PATH:$(go env GOPATH)/bin

# if mac goes apeshit on alacritty
brew install --cask alacritty --no-quarantine

# install maccy
brew install --cask maccy
