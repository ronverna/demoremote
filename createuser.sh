#!/bin/bash
<< script for user creation
script

read -p "please enter the username:" username
read -p "please enter the password:" password
sudo useradd -m $username
echo -e "$password\n$password" | sudo passwd $username
#till here the user will b created , now further commands will b wrote to confirm if user is created
cat /etc/gpasswd | grep "/$username/" | wc
echo "if it shows 1 1 1 , user is created withe name $username"

