#!/bin/bash

#This is userinput script which will ask username & passs & print the same
read -n 5 -p "Please Enter YourUserName: " name
read -s -p  "Enter Your Password: " password
echo -e  "\nYour username is $name"
echo -e  "Your password is $password"


