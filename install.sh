#!/bin/bash

echo "[+] Installing MHsub..."
sudo curl -s https://raw.githubusercontent.com/BL4CK570RM/MHsub/main/MHsub.sh -o /usr/local/bin/MHsub
sudo chmod +x /usr/local/bin/MHsub

echo "[+] Downloading version info..."
sudo curl -s https://raw.githubusercontent.com/BL4CK570RM/MHsub/main/version.txt -o /usr/local/bin/MHsub_version.txt

echo "[+] Installation complete!"
echo "Usage: MHsub -h"
