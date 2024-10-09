import re
import os

server_ip = "X.X.X.X"   #CHANGE TO SERVER IP

wg_config_path = "/etc/wireguard/wg0.conf"

with open(wg_config_path, "r") as f:
    wg_config = f.read()

pattern = r"Endpoint = ([0-9a-zA-Z.]+):51820\s*#CHANGE TO SERVER IP"
replacement = f"Endpoint = {server_ip}:51820 #CHANGE TO SERVER IP"
wg_config = re.sub(pattern, replacement, wg_config)

with open(wg_config_path, "w") as f:
    f.write(wg_config)

os.system(f"sudo systemctl restart wg-quick@wg0")
