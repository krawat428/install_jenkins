#!bin/bash

sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

sudo su -c "echo 'deb https://pkg.jenkins.io/debian-stable binary/'  >> /etc/apt/sources.list"

sudo apt update

sudo apt-get install default-jre -y

sudo apt-get install jenkins -y

echo -e "\nJENKINS DEFAULT PASSWORD \n###################################################\n\n"

sudo cat /var/lib/jenkins/secrets/initialAdminPassword 

echo -e "\n\n###################################################"
