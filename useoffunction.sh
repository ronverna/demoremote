#!/bin/bash
<<use of a function 
use

function createuser {
read -p "enter username" username
read -p "enter password" password

sudo useradd $username
echo -e "$password\n$password" | sudo passwd $username

}

createuser
createuser
