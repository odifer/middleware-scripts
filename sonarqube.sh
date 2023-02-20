#!/bin/bash

#Author: Odile
#Date: Februaru 19, 2023
#Description: How to install and configure SonarQube on CentOS 7

su - vagrant

#Installing Java (prerequisite for SonarQube)
sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y

#Download SonarQube latest versions on your server
cd /opt

#If wget is not installed on your system, run the command to install it. Then download SonarQube packag
e:

sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

#Extract packages
sudo yum install unzip
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo unzip /opt/sonarqube-9.3.0.51899.zip

#Change ownership to the user and Switch to Linux binaries directory to start service
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-x.x/bin/linux-x86-64 
 ./sonar.sh start

 #Connect to SonaQube
 sudo systemctl status firewalld
 sudo systemctl start firewalld
 sudo systemctl enable firewalld

