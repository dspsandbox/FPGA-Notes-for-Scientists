#!/bin/bash
LNX_USER=ubuntu
LNX_PWD=helloworld

#XRDP Server
sudo apt update -y
sudo apt install -y ubuntu-desktop
sudo dpkg --configure -a
source resources/xrdp/xrdp-installer-*

#Firefox
sudo apt install firefox

#Update password
echo "$LNX_USER:$LNX_PWD" | sudo chpasswd

