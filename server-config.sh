#!/bin/bash
current_user=$(whoami)
echo "Running Config $current_user!"
sudo apt update
sudo apt upgrade -y
sudo apt install openssh-server
ip a
whoami

name=$1
if [ -z "$name" ]
  then
    name="new_user"
fi
echo "Attempting to create user: $name"
sudo adduser --disabled-password --gecos "" $name

#cat /etc/passwd | cut -d ":" -f 1
#sudo useradd -m -s /bin/bash $uname
