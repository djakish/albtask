#!/bin/bash
cd /home/ec2-user/albasg
 
npm install 

aws s3 cp index.html s3://zhangir-asg/index.html
