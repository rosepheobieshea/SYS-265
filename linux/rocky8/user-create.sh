#!/bin/bash

#Asks user for name to be used for new user
echo "What is the name of the user you want to create?"
read name

#echo "What is the path for the public key you want to use?"
#read key_path

sudo useradd -m -d /home/$name -s /bin/bash $name
sudo mkdir /home/$name/.ssh
#sudo cp $key_path /home/$name/.ssh/authorized_keys
sudo chmod 700 /home/$name/.ssh
#sudo chmod 600 /home/$name/.ssh/authorized_keys
sudo chown -R $name:$name /home/$name/.ssh
