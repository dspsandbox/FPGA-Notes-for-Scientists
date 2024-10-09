#!/bin/bash

XILINX_DOWNLOAD_DIR=/tmp/xilinx_download
XILINX_INSTALLATION_DIR=~/Xilinx

#Mute needrestart
sudo apt -y remove needrestart

#Prerequisites (from https://www.hackster.io/whitney-knitter/vivado-vitis-petalinux-2024-1-install-on-ubuntu-22-04-e76e91)
echo "dash dash/sh boolean true" | sudo debconf-set-selections
sudo dpkg --add-architecture i386
sudo apt-get -y install gparted xinetd gawk gcc net-tools ncurses-dev openssl libssl-dev flex bison xterm autoconf libtool texinfo zlib1g-dev 
sudo apt-get -y install iproute2 make libncurses5-dev tftpd libselinux1 wget diffstat chrpath socat tar unzip gzip python tofrodos lsb libftdi1 libftdi1-2
sudo apt-get -y install lib32stdc++6 libgtk2.0-0:i386 libfontconfig1:i386 libx11-6:i386 libxext6:i386 libxrender1:i386 libsm6:i386 tree openssh-server
sudo apt-get -y install debianutils iputils-ping libegl1-mesa libsdl1.2-dev pylint3 python3 cpio tftpd-hpa gnupg zlib1g:i386 haveged perl xvfb 
sudo apt-get -y install gcc-multilib build-essential automake screen putty pax g++ python3-pip xz-utils python3-git python3-jinja2 python3-pexpect 
sudo apt-get -y install liberror-perl mtd-utils xtrans-dev libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev
sudo apt-get -y install util-linux sysvinit-utils cython google-perftools patch diffutils ocl-icd-libopencl1 opencl-headers ocl-icd-opencl-dev clang clangd
sudo apt-get -y install libncurses5 libncurses5-dev libncursesw5:amd64 libncursesw5-dev libncurses5:i386 libtinfo5 libstdc++6:i386 libgtk2.0-0:i386 dpkg-dev:i386
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