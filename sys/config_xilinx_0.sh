#!/bin/bash

XILINX_DOWNLOAD_DIR=/tmp/xilinx_download
XILINX_INSTALLATION_DIR=~/Xilinx

#Prerequisites (see https://support.xilinx.com/s/article/63794?language=en_US) and gcc compiler for simulation
sudo apt install -y libtinfo5 libncurses5 gcc

#Vivado installation (assuming standalone installer installer.tar.gz located at $XILINX_DOWNLOAD_DIR)
cd $XILINX_DOWNLOAD_DIR
tar -xf installer.tar.gz
rm installer.tar.gz 
cd Xilinx_Unified_*
./xsetup --agree 3rdPartyEULA,XilinxEULA --batch Install --edition "Vivado ML Standard" --product "Vivado" --location $XILINX_INSTALLATION_DIR

