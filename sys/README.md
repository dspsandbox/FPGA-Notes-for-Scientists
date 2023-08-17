# Remote Development System (AWS EC-2 instance & FPGA)
### EC-2 Instance Specifications
* AMI: Ubuntu 22.04 Server LTS
* Type: c5.xlarge
* Memory: 200GB SSD
* Use elastic IP to get static public IP address
* Networking inbound/outbound rules: 
    * Enable all TCP
    * Enable all UDP

### Configure EC 2 instance
* Enter EC-2 instance
    ```
    ssh -i <keyfile.pem> ubuntu@<publicIP>
    ```
* Clone this repository:
    ```
    mkdir Documents
    cd Documents
    git clone https://github.com/dspsandbox/FPGA-Notes-for-Scientists
    ```
* Execute scripts:
    ```
    cd FPGA-Notes-for-Scientists/sys
    source config_xrdp.sh
    source config_display.sh
    source config_wg.sh
    source config_xilinx.sh
    ```

### Configure FPGA
* Connect to the FPGA via terminal or SSH
* Install Wireguard:
    ```
    sudo apt update -y
    sudo apt install -y wireguard
    ```

* Open Wireguard wg0 configuration file:
    ```
    sudo vi /etc/wireguard/wg0.conf
    ```
* Copy into it the content of [resources/wg/client/wg0.conf](resources/wg/client/wg0.conf). Change Enpoint IP (X.X.X.X) with the \<publicIP\> of EC-2 instance.

* Enable and restart Wireguard service:
    ```
    sudo systemctl enable wg-quick@wg0.service
    sudo systemctl restart wg-quick@wg0.service
    ```
