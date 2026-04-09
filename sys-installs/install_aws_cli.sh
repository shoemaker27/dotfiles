#!/bin/bash

# Check for root/sudo privileges (EUID 0)
if [[ $EUID -ne 0 ]]; then
   echo "This script requires sudo/root privileges."
   exit 1
fi

# Check if the system package manage is apt
if ! command -v apt &> /dev/null; then
    echo "Error: This script is designed for systems using the 'apt' package manager."
    exit 1
fi

# Inform the user on what will be installed and prompts the user to proceed or exit
echo "--------------------------------------------------------"
echo "This script will install the AWS Command Line Interface"
echo "Dependencies to be installed: curl, unzip."
echo "--------------------------------------------------------"
read -p "Do you want to proceed? (y/n): " confirm

if [[ $confirm != "y" && $confirm != "Y" ]]; then
    exit 0
fi

# Check for name conflicts
# This checks if the 'aws' command already exists in the system PATH
if command -v aws &> /dev/null; then
    echo "Error: A name conflict occurred."
    echo "The command 'aws' is already present at: $(which aws)"
    exit 1
fi

echo "Starting installation..."

# Silently install dependencies and AWS CLI

apt update -y &> /dev/null
apt install -y curl unzip &> /dev/null

curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -q awscliv2.zip
./aws/install &> /dev/null


# Prompt completion
echo "--------------------------------------------------------"
echo "Installation is complete!"
echo "To verify the installation, run the following command:"
echo "aws --version"
echo "--------------------------------------------------------"
