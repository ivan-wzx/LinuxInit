#! /bin/bash

sudo apt-get update

# -y Automatic yes to prompts
# -q Quite, Produces output suitable for logging, omitting progress indicators
sudo apt-get install -y -q vim git

git config --global user.name "Ivan Wu"
git config --global user.email ivan.wzx@gmail.com

sudo apt-get install build-essential

# setup the zsh shell environment
sudo apt-get install zsh
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
sudo chsh -s /bin/zsh
