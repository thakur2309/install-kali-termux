#!/data/data/com.termux/files/usr/bin/bash

clear
echo -e "\e[1;32m[+] Kali NetHunter Installation Started...\e[0m"
sleep 1

# Step 1: Storage permission
termux-setup-storage
echo -e "\e[1;33m[*] Storage permission granted.\e[0m"
sleep 1

# Step 2: Update packages
echo -e "\e[1;34m[*] Updating packages...\e[0m"
pkg update && pkg upgrade -y

# Step 3: Install required packages
echo -e "\e[1;34m[*] Installing required packages...\e[0m"
pkg install wget curl proot git -y

# Step 4: Download NetHunter installation script
echo -e "\e[1;34m[*] Downloading NetHunter installation script...\e[0m"
wget -O install-nethunter-termux https://offs.ec/2MceZWr

# Step 5: Make script executable
chmod +x install-nethunter-termux
echo -e "\e[1;33m[*] Script ready to execute.\e[0m"
sleep 1

# Step 6: Run the installer
echo -e "\e[1;32m[+] Installing Kali NetHunter... This may take a few minutes.\e[0m"
./install-nethunter-termux

# Step 7: Auto-start NetHunter shell
echo -e "\e[1;32m[+] Installation complete. Launching NetHunter shell...\e[0m"

