# Tips for installaing Vivado 2021.2 on Ubuntu 20.04

First download the [Xilinx Unified Installer](https://www.xilinx.com/support/download.html).
At this point **do not** follow the instructions in [user guide](https://www.xilinx.com/content/dam/xilinx/support/documentation/sw_manuals/xilinx2021_2/ug973-vivado-release-notes-install-license.pdf).

Before running the installer, install `libtinfo5`[^KnownIssue]
```bash
sudo apt-get install libtinfo5
```

Open a terminal in the directory where the unified installer was downloaded and run it using 
```bash
bash Xilinx_Unified_2021.2_1021_0703_Lin64.bin
```
Note root access is **not** required but the default install directory `/xilinx/` is not writeable without root access (just choose another directory within `/home/`).
Once the GUI opens there are some buttons at the bottom right corner. If you don't want the installer to delete the 40GB of downloaded files at the end of the installation or if the installation is cancelled after the downlaod is complete, click Settings and in the Disk Management Tab, uncheck Enable Disk Management. Without this step, the installer will give a prompt asking if you want to keep the download files but will delte them regardless of the input.

After completing the installation the cable drivers need to be installed using
```bash
cd <Vivado Install Dir>/data/xicom/cable_drivers/lin64/install_script/install_drivers/
sudo bash  install_drivers
```
Note that here root access **is** required and that the script must be run from the directory which it is in or it will not succeed.

[^KnownIssue]: This [issue](https://support.xilinx.com/s/article/76616?language=en_US) is actually known to Xilinx but they prefer to blame Ubuntu than their script.
