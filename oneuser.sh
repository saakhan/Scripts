##!/bin/bash
user_name=rawan
user_pass=password
#useradd $user_name
echo "$user_name:$user_pass" | chpasswd
mkdir /home/$user_name
cp -a /etc/skel/.bash* /home/$user_name
chown -R rawan:rawan /home/$user_name
