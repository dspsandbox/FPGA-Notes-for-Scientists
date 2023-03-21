#!/bin/bash
XILINX_DOWNLOAD_URL="https://onedrive.live.com/download?cid=D86684562D90EDDE&resid=D86684562D90EDDE%21141&authkey=AH4ZBCapnqsbpQc"
XILINX_INSTALLATION_DIR=~/Xilinx

#Prerequisites (see https://support.xilinx.com/s/article/63794?language=en_US) and gcc compiler for simulation
sudo apt install -y libtinfo5 libncurses5 gcc

#Vivado installation
mkdir -p /tmp/xilinx_download
cd /tmp/xilinx_download
wget --no-check-certificate -O installer.tar.gz $XILINX_DOWNLOAD_URL
tar -xf installer.tar.gz
rm installer.tar.gz 
cd Xilinx_Unified_*
./xsetup --agree 3rdPartyEULA,XilinxEULA --batch Install --edition "Vivado ML Standard" --product "Vivado" --location $XILINX_INSTALLATION_DIR
#Remove XIC
rm -r $XILINX_INSTALLATION_DIR/xic
#Remove desktop icons
rm  ~/Desktop/*.desktop
#Return to script dir
cd "$(dirname "$BASH_SOURCE")"
#Replace path for LD_LIBRARY_PATH in upload_overlay.tcl (resolve OpenSSL error)
sed -i '/^exec/ {s#^#set ::env(LD_LIBRARY_PATH) "/usr/bin/openssl"\n#}' ../tcl/upload_overlay.tcl 