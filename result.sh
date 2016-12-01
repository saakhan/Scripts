#!/bin/bash

#To Show printf Formating : : Result 

line="======================================"

header="\n %-10s %10s %10s \n"

format=" %-10s %10s %11.2f\n"

printf "$header" "Name" "Subject" "Marks"

printf "%s\n" "$line"

printf "$format" \
            Sachin ENG 90\
            Champu ENG 80\
            Ramesh ENG 70

 
