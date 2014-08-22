#! /bin/bash
sudo apt-get update
# Tips:
# apt-cache search $(pkgname) - search package


# -y Automatic yes to prompts
# -q Quite, Produces output suitable for logging, omitting progress indicators
sudo apt-get install -y -q vim git cmake

git config --global user.name "Ivan Wu"
git config --global user.email ivan.wzx@gmail.com

sudo apt-get -y -q install build-essential libxss1 mesa-utils htop tightvncserver

# OpenGL related
sudo apt-get install -y -q glew-utils freeglut3 libglm-del

# For the project
sudo apt-get install libeigen3-dev libboost-dev libnlopt-dev

# output some useful system info
uname -a >> sysinfo #uname -mrs
lsb_release -a >> sysinfo
cat /proc/version >> sysinfo
lspci -vnn | grep -i VGA >> sysinfo
glxinfo | grep OpenGL >> sysinfo
lsmod | grep nvidia >> sysinfo
grep 'nouveau' /etc/modprobe.d/* | grep nvidia >> sysinfo
modprobe -R nvidia >> sysinfo # followed by modinfo $(name) 

# some fonts (including Chinese)
sudo apt-get -y -q install ttf-wqy-microhei ttf-wqy-zenhei fonts-inconsolata

# install some useful software
#sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb | dpkg -i
#wget http://download.oracle.com/otn-pub/java/jdk-nb/8u11-8.0/jdk-8u11-nb-8-linux-x64.sh | sh

# setup the zsh shell environment
#sudo apt-get install zsh
#wget --no-check-certificate http://install.ohmyz.sh -O - | sh
#sudo chsh -s /bin/zsh

