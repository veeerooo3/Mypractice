#!/bin/bash

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root or with sudo privileges."
  exit 1
fi

# Input username and password for the new user
read -p "Enter the username for the new user: " jenkins
read -s -p "Enter the password for the new user: " jenkins
echo

# Create the user with the specified username and set the password
useradd -m "$username"
echo "$username:$password" | chpasswd

# Add the user to the sudo group to grant sudo privileges
usermod -aG sudo "$username"

# Display user creation and sudo permissions confirmation
echo "User '$username' has been created with sudo privileges."
