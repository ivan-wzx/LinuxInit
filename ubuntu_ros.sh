#! /bin/bash

# Referenced from http://wiki.ros.org/indigo/Installation/Ubuntu
# tested on ubuntu 14.04 64-bit
# Referenced from http://wiki.ros.org/hydro/Installation/Ubuntu
# tested on ubuntu 12.04 64-bit

# for ubuntu 14.04
#sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'
# for ubuntu 12.04 
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list'

wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -

sudo apt-get update
#sudo apt-get install ros-indigo-desktop-full # for ubuntu 14.04
sudo apt-get install ros-hydro-desktop-full # for ubuntu 12.04

sudo rosdep init
rosdep update

#echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
echo "source /opt/ros/hydro/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt-get install python-rosinstall
