##!/bin/bash

#Take User input birth year..

current_year=$( date +%Y )


read -p "Please Enter Your Birth Year :" birth_year

#If input is blank & enter 

#if [[ -z $birth_year ]] (-z for blank ) 
if [[ -z $birth_year ]]
then 
  echo " INvalid Output [Blank input] "
  exit 1

   
elif [[ ! $birth_year =~ [0-9]{4} ]] #it will check integer out & if 4 digit is nt enter ( ! means opposite  =~ syntax for test integer )
then 
  echo " [NON INTEGER]"
  exit 1

 
elif (( birth_year > current_year ))
then 
  echo " [ WEEK MATHS ]"
  exit 1
fi

age=$(( current_year - birth_year ))

echo "This is Your" $age









#echo  "Please Enter your Birth Year"
#
#read  year
#
#echo "total year" $year
#
#age=$((current_year - year ))
#
#echo "your age is $age "
