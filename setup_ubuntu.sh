#! /bin/bash

sudo apt-get update

# output some useful system info
uname -a  #uname -mrs
lsb_release -a
cat /proc/version
lspci -vnn | grep -i VGA
glxinfo | grep OpenGL
lsmod | grep nvidia
grep 'nouveau' /etc/modprobe.d/* | grep nvidia
modprobe -R nvidia # followed by modinfo $(name)


# -y Automatic yes to prompts
# -q Quite, Produces output suitable for logging, omitting progress indicators
sudo apt-get install -y -q vim git

git config --global user.name "Ivan Wu"
git config --global user.email ivan.wzx@gmail.com

sudo apt-get install build-essential

# some fonts (including Chinese)
sudo apt-get install ttf-wqy-microhei ttf-wqy-zenhei fonts-inconsolata

# setup the zsh shell environment
sudo apt-get install zsh
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
sudo chsh -s /bin/zsh
