#!/bin/bash

sudo apt-get install -y 
sudo apt-get install -y apache2 git

git clone https://github.com/usneha/itmo-544-444-launch.git


aws ec2 run-instances --image-id $1 --count $2 --instance-type $3 --key-name $4 --security-group-ids $5 --subnet-id $6 --associate-public-ip-address --debug
