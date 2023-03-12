#!/bin/bash
LNX_USER=ubuntu
LNX_PWD=helloworld

#XRDP Server
cd "$(dirname "$BASH_SOURCE")"
sudo apt update -y
sudo apt install -y ubuntu-desktop
source resources/xrdp/xrdp-installer-*

#Update password
echo "$LNX_USER:$LNX_PWD" | sudo chpasswd

