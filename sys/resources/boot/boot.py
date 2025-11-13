import re
import os

#REMOTE SERVER PARAMETERS 
server_address = None      

#FPGA NETWORK PARAMETERS
fpga_static_address = None    
fpga_static_netmask = None     
fpga_static_gateway = None     
fpga_static_dns = None         


wg_config_path = "/etc/wireguard/wg0.conf"
if server_address is not None:
    with open(wg_config_path, "r") as f:
        wg_config = f.read()

    pattern = r"Endpoint = ([0-9a-zA-Z.]+):51820\s*#CHANGE TO SERVER IP"
    replacement = f"Endpoint = {server_address}:51820 #CHANGE TO SERVER IP"
    wg_config = re.sub(pattern, replacement, wg_config)

    with open(wg_config_path, "w") as f:
        f.write(wg_config)
    os.system(f"sudo systemctl enable wg-quick@wg0")
    os.system(f"sudo systemctl restart wg-quick@wg0")
else:
    os.system(f"sudo systemctl disable wg-quick@wg0")
    os.system(f"sudo systemctl stop wg-quick@wg0")


eth0_config_path = "/etc/network/interfaces.d/eth0"
if fpga_static_address is not None and fpga_static_netmask is not None:
    with open(eth0_config_path, "w") as f:
        f.write("auto eth0\n")
        f.write("iface eth0 inet static\n")
        f.write(f"    address {fpga_static_address}\n")
        f.write(f"    netmask {fpga_static_netmask}\n")
        if fpga_static_gateway is not None:
            f.write(f"    gateway {fpga_static_gateway}\n")
        if fpga_static_dns is not None:
            f.write(f"    dns-nameservers {fpga_static_dns}\n")

else:
    with open(eth0_config_path, "w") as f:
        f.write("auto eth0\niface eth0 inet dhcp\n")
os.system(f"sudo systemctl restart networking")




