#!/bin/bash

echo -e "Updating\n"
sudo apt-get update

echo -e "Installing UFW\n"
sudo apt-get install -y ufw

echo -e "Configuring UFW...\n"

# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow specific ports
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443

# Enable UFW
echo "y" | sudo ufw enable

echo -e "Process Completed.\n"

# Display UFW status to confirm the rules are applied
sudo ufw status verbose
