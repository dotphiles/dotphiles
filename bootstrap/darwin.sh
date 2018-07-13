#!/bin/bash

#Hostname setup
echo "Setting hostname to $1"
sudo scutil --set HostName $1
sudo scutil --set LocalHostName $1
sudo scutil --set ComputerName $1
dscacheutil -flushcache

#Install brew
#echo "Installing brew ..."
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Tapping into cask..."
brew tap caskroom/cask
echo "Tapping into cask upgrade..."
brew tap buo/cask-upgrade
echo "Tapping into caskroom fonts"
brew tap caskroom/fonts
echo "Tapping into caskroom versions"
brew tap caskroom/versions

echo "Installing brew packages..."
#Brew install stuff (Install/build Open Source)
brew install -y \
ansible \
ipcalc \
mosh \
youtube-dl \
ansible-lint \
kubernetes-cli \
node \
terraform \
zsh \
python \
tmux \
zsh-completions \
git \
python3 \
tree \
cask \
packer \
watch \
coreutils \
htop \
mas \
packer-completion \
shellcheck \
wget \
mobile-shell \
shpotify

echo "Installing Cask packages..."
#cask install stuff (install binarys/non-free)
brew cask install -y \
google-cloud-sdk \
minikube \
atom \
cheatsheet \
java \
iterm2 \
google-chrome \
muzzle \
plex-media-player \
trailer \
pycharm-ce \
vagrant \
font-meslo-nerd-font \
font-meslo-nerd-font-mono \
messenger-for-desktop \
openemu-experimental \
virtualbox

#mas install (Mac Application Store)
echo "Installing apps from Application Store"
mas install 847496013 926036361 585829637 803453959
