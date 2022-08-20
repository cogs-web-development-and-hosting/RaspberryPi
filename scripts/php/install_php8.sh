# The purpose of this script is to install
# php8.0 and above on Raspberry Pi's Raspbian.

#! bin/bash

# Need to install third party repositories for Raspian
# Firstly must ensure that lsb-release is installed.

#Update the package
echo "Updating package listing"
sudo apt update

#Ensuring lsb-release is installed
echo "Installing lsb-release..."
sudo apt install lsb-release

#Installing GPG Key for this PHP repository to our Raspberry Pi
echo "Installing GPG Key and adding it to keyring"
curl https://packages.sury.org/php/apt.gpg | sudo tee /usr/share/keyrings/suryphp-archive-keyring.gpg >/dev/null

#Create a source file that points to the repository
echo "Creating source file to the repository"
echo "deb [signed-by=/usr/share/keyrings/suryphp-archive-keyring.gpg] https://packages.sury.org/php/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/sury-php.list

#Now update repositories
echo "Updating Repositories.."
sudo apt update

#Installing PHP 8.1
echo "Install PHP 8.1"
sudo apt install php8.1-cli