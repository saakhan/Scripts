#!/bin/bash

user add sphamu
user add maanali

echo "shamu:password" | chpasswd
#chpasswd shamu > "1234"

mkdir  /home/shamu
cp -a /etc/skel/.bash* /home/shamu/
chown -R shamu:shamu /home/shamu/

#end of script


