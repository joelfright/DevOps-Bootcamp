#!/bin/bash

sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt-get install nginx -y

sudo rm /etc/nginx/sites-available/default

sudo cp /home/vagrant/environment/nginx.default /etc/nginx/sites-available/default

sudo service nginx restart

sudo systemctl restart nginx

sudo apt-get install nodejs -y

sudo apt-get install python-software-properties -y

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install nodejs -y

sudo npm install pm2 -g

cd app

npm install


