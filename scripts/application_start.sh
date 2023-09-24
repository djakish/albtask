#!/bin/bash

cd /home/ec2-user/albasg

echo -n 'INSTANCE_ID=' >> .env
curl http://169.254.169.254/latest/meta-data/instance-id >> .env

printf '\n' >> .env
echo -n 'INSTANCE_IP=' >> .env
curl http://169.254.169.254/latest/meta-data/public-ipv4 >> .env


pm2 stop all
pm2 start app.js --name=nodejs-express-app