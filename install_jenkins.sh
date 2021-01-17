#!bin/bash

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

echo "deb https://pkg.jenkins.io/debian-stable binary/"  >> /etc/apt/sources.list

sudo apt update

sudo apt install default-jdk -y

sudo apt install jenkins -y

echo -e "\nJENKINS DEFAULT PASSWORD \n###################################################\n\n"

cat /var/lib/jenkins/secrets/initialAdminPassword 

echo -e "\n\n###################################################"
