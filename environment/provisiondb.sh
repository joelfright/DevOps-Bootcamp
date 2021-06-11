#!/bin/bash

# Get key
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add

echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" |

sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list sudo apt-get update -y sudo apt-get upgrade -y

# Install mongodb

sudo apt-get install -y mongodb-org

sudo rm /etc/mongod.conf 

sudo ln -s /home/vagrant/environment/mongod.conf /etc/mongod.conf

sudo rm /etc/mongod.service 

sudo ln -s /home/vagrant/environment/mongod.service /etc/mongod.service

sudo systemctl restart mongo

sudo systemctl enable mongo