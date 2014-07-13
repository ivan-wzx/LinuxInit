#w! /bin/bash
sudo apt-get update
# Tips:
# apt-cache search $(pkgname) - search package


# -y Automatic yes to prompts
# -q Quite, Produces output suitable for logging, omitting progress indicators
sudo apt-get install -y -q vim git

git config --global user.name "Ivan Wu"
git config --global user.email ivan.wzx@gmail.com

sudo apt-get -y -q install build-essential libxss1 mesa-utils htop tightvncserver

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

# setup the zsh shell environment
#sudo apt-get install zsh
#wget --no-check-certificate http://install.ohmyz.sh -O - | sh
#sudo chsh -s /bin/zsh

