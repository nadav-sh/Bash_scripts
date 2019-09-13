#!/usr/bin/env bash


echo "starting automation provision"


echo "starting jenkins provision"
sudo yum install -y java-1.8.0-openjdk-devel
sleep 1 
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sleep 1 
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sleep 1 
sudo yum install -y jenkins
sleep 1
sudo systemctl enable --now jenkins
sleep 1 
clear
sleep 1
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sleep 5
echo "done "


