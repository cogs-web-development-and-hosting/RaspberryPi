#! /bin/bash

#Updating the Repositories
echo "Updating Repositories"
sudo apt update && sudo apt upgrade -y

#Installing Apache2
echo "Installing Apache2..."
sudo apt install apache2 -y

#Install PHP
echo "Installing PHP"
sudo apt install php -y

#Restart Apache2
echo "Restarting Apache2"
sudo service apache2 restart

#Install MySQL (MariaDB)
echo "Installing MySQL (MariaDB)"
sudo apt install mariadb-server php-server -y
echo "Restarting Apache2"
sudo service apache2 restart

#Reminder to run mysql_secure_installation
echo "Remember to run mysql_secure_installation"
