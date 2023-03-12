#!/bin/bash
sudo apt update -y
sudo apt install -y wireguard
sudo cp resources/wg/server/wg0.conf /etc/wireguard/wg0.conf
sudo chown -R root:root /etc/wireguard/
sudo chmod -R og-rwx /etc/wireguard/*
sudo systemctl enable wg-quick@wg0.service
sudo systemctl restart wg-quick@wg0.service