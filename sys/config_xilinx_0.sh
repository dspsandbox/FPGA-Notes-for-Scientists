#!/bin/bash

XILINX_DOWNLOAD_DIR=/tmp/xilinx_download
XILINX_INSTALLATION_DIR=~/Xilinx

# #Prerequisites (see https://support.xilinx.com/s/article/63794?language=en_US) and gcc compiler for simulation
# sudo apt install -y libtinfo5 libncurses5 gcc


echo "dash dash/sh boolean true" | sudo debconf-set-selections
sudo apt -y remove needrestart
sudo dpkg --add-architecture i386
sudo apt-get install -y gparted xinetd gawk gcc net-tools ncurses-dev openssl libssl-dev flex bison xterm autoconf libtool texinfo zlib1g-dev 
sudo apt-get install -y iproute2 make libncurses5-dev tftpd libselinux1 wget diffstat chrpath socat tar unzip gzip python tofrodos lsb libftdi1 libftdi1-2
sudo apt-get install -y lib32stdc++6 libgtk2.0-0:i386 libfontconfig1:i386 libx11-6:i386 libxext6:i386 libxrender1:i386 libsm6:i386 tree openssh-server
sudo apt-get install -y debianutils iputils-ping libegl1-mesa libsdl1.2-dev pylint3 python3 cpio tftpd-hpa gnupg zlib1g:i386 haveged perl xvfb 
sudo apt-get install -y gcc-multilib build-essential automake screen putty 
sudo apt update -y
sudo apt upgrade -y

#Vivado installation (assuming standalone installer installer.tar.gz located at $XILINX_DOWNLOAD_DIR)
cd $XILINX_DOWNLOAD_DIR
tar -xf installer.tar.gz
sudo rm installer.tar.gz 
cd Vivado_*
./xsetup --agree 3rdPartyEULA,XilinxEULA --batch Install --edition "Vivado ML Standard" --product "Vivado" --location $XILINX_INSTALLATION_DIR

#Remove tmp folder
cd /.
sudo rm -r $XILINX_DOWNLOAD_DIR