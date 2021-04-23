#!/bin/bash

sleep 30
sudo apt update -y
#Install JDK
sudo apt install openjdk-11-jdk -y
#Install Nginx
sudo apt install nginx -y
#Install Jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
#sudo apt-add-repository "deb http://pkg.jenkins-ci.org/debian binary/"
sudo apt update -y
sudo apt install jenkins -y