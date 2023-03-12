#!/bin/bash
XILINX_DOWNLOAD_URL="https://onedrive.live.com/download?cid=D86684562D90EDDE&resid=D86684562D90EDDE%21141&authkey=AH4ZBCapnqsbpQc"
XILINX_I#!/bin/bash
NSTALLATION_DIR=/home/ubuntu/Xilinx

#Vivado installation
mkdir -p /tmp/xilinx_download
cd /tmp/xilinx_download
wget --no-check-certificate -O installer.tar.gz $XILINX_DOWNLOAD_URL
cd Xilinx_Unified_*
./xsetup --agree 3rdPartyEULA,XilinxEULA --batch Install --edition "Vivado ML Standard" --product "Vivado" --location $XILINX_INSTALLATION_DIR

