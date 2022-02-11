#!/bin/bash

# Setup Hostname 
sudo hostnamectl set-hostname "web.softobiz.com"

# Update the hostname part of Host File
#sudo echo "`hostname -I | awk '{ print $1 }'` `hostname`" >> /etc/hosts 

# Update Ubuntu Repository 
sudo  apt update 

# Install Webserver 
sudo apt install apache2 -y 

# Deploy Simple Website from GitHub
cd /opt/

# Download the Code
sudo git clone https://github.com/keshavkummari/keshavkummari.git

# Go Inside of the Folder
sudo cd /opt/keshavkummari

# And move the code to DocumentRoot
sudo mv /opt/keshavkummari/* /var/www/html/ 

