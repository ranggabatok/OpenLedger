#!/bin/bash

# =============================================================================
# Script Name: Batokpipe.sh
# Description: This script performs Update PipeNetwork operations.
# Author: Batok
# Date Created: 2024-12-22
# Version: 1.0
# License: MIT License
# =============================================================================

# Your script code starts here
echo "██████╗  █████╗ ████████╗ ██████╗ ██╗  ██╗
██╔══██╗██╔══██╗╚══██╔══╝██╔═══██╗██║ ██╔╝
██████╔╝███████║   ██║   ██║   ██║█████╔╝ 
██╔══██╗██╔══██║   ██║   ██║   ██║██╔═██╗ 
██████╔╝██║  ██║   ██║   ╚██████╔╝██║  ██╗
╚═════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝
                                          "

# 1. Update VPS
sudo apt update && sudo apt upgrade -y

# 2. Install Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y

# 3. Install XRDP
sudo apt install xrdp
sudo systemctl enable xrdp
sudo systemctl start xrdp
sudo adduser root ssl-cert

# 4. Install Package
sudo apt install gdebi

echo "Script telah selesai."
