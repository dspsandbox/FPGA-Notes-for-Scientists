#!/bin/bash

XILINX_INSTALLATION_DIR=~/Xilinx

#Remove XIC
rm -r $XILINX_INSTALLATION_DIR/xic

#Remove desktop icons
rm  ~/Desktop/*.desktop

#Replace path for LD_LIBRARY_PATH in upload_overlay.tcl (resolve OpenSSL error)
sed -i '/^exec/ {s#^#set ::env(LD_LIBRARY_PATH) "/usr/bin/openssl"\n#}' ../tcl/upload_overlay.tcl 

#Copy board files
cp -r ../board_files $XILINX_INSTALLATION_DIR/Vivado/*/data/boards