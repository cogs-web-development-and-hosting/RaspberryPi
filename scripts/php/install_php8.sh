# The purpose of this script is to install
# php8.0 and above on Raspberry Pi's Raspbian.

#! bin/bash
 
# Need to install third party repositories for Raspian
# Firstly must ensure that lsb-release is installed.

#Update the package 
echo "Updating package listing"
sudo apt update