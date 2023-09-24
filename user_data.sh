#!/bin/bash
yum -y update
yum install -y ruby
yum install -y aws-cli
yum install wget
cd /home/ec2-user
wget https://aws-codedeploy-eu-north-1.s3.amazonaws.com/latest/install
chmod +x ./install
./install auto

# install node:
curl --silent --location https://rpm.nodesource.com/setup_13.x | bash -

yum -y install nodejs
npm install -g pm2 
