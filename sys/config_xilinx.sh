#!/bin/bash

XILINX_INSTALLATION_DIR=~/Xilinx

#Prerequisites (see https://support.xilinx.com/s/article/63794?language=en_US) and gcc compiler for simulation
sudo apt install -y libtinfo5 libncurses5 gcc

#Vivado installation
mkdir -p /tmp/xilinx_download
cd /tmp/xilinx_download

curl 'https://my.microsoftpersonalcontent.com/personal/d86684562d90edde/_layouts/15/download.aspx?UniqueId=2d90edde-8456-2066-80d8-8d0000000000&Translate=false&tempauth=v1e.eyJzaXRlaWQiOiI2NWIwOGE4YS1jZGM4LTQ5NTEtODkyZC1hODIwZjFhMjhmOTYiLCJhcHBpZCI6IjAwMDAwMDAwLTAwMDAtMDAwMC0wMDAwLTAwMDA0ODE3MTBhNCIsImF1ZCI6IjAwMDAwMDAzLTAwMDAtMGZmMS1jZTAwLTAwMDAwMDAwMDAwMC9teS5taWNyb3NvZnRwZXJzb25hbGNvbnRlbnQuY29tQDkxODgwNDBkLTZjNjctNGM1Yi1iMTEyLTM2YTMwNGI2NmRhZCIsImV4cCI6IjE3MjcwODg2MTQifQ.2Z6Kz0afXrL_drr88iS-4VoaYOAsNa79mDdwtM4zIdSKJqyO9S0reFzsABYmxlv6-o6IAVaJ_q8WoHy9dOv--I_DExvOM20Vl1HCVZ9jbOIwyia6cVFTDURO3TttbcygyPRyM1PHsmbKPS3q_eghyqwx_KmfsXhkKG8TEjaizRaTJXMNeghztJLpgpibQaQGF1XutQWHTITD6GI-GxzXHseymZu5rU8-1HJC4lJ8fuSUXze88d0DI_g42ALDV2DoPeUKtD88KcgDzMbLMGPO7QGJ6Ixjr-Oe5YeA34WxHmDi41PAKDvMxdnVixqdn1qDqGT3OI6cJ9HR-TO84cka-2AGxRLaMs49Zesk4YAuh3Dvor3hR9eLW8rIa79pZWWuOhHDYWwvcRqV7m89CLsYdvaj_zjaUTAeOvJIPrghleg.0ad3QUBgHQRoWIoSPJ98PMp_MLpQ7y3_9wdMTE4x73I&ApiVersion=2.0&AVOverride=1' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cookie: MicrosoftApplicationsTelemetryDeviceId=21ff3cec-a2db-4014-969a-f2ebc1a52c92; MSFPC=GUID=01ce912037cf4d6686cfbafff7d19e44&HASH=01ce&LV=202310&V=4&LU=1696582813329; ai_session=12Z2Z44WGN2ltvSlZlzjIc|1727084330436|1727084428676' \
  -H 'priority: u=0, i' \
  -H 'referer: https://onedrive.live.com/' \
  -H 'sec-ch-ua: "Not;A=Brand";v="24", "Chromium";v="128"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'sec-fetch-dest: iframe' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-site: cross-site' \
  -H 'sec-fetch-user: ?1' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36'
  --output installer.tar.gz
  
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