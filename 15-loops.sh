#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
G="\e[0m"

CHECK_ROOT(){
if [ $USERID -ne 0 ]
then echo "Please run this script with root priveleges"
exit 1
fi
}

VALIDATE()
{   if [ $1 -ne 0 ]
        then
            echo " $2 is ..$R FAILED $N"
            exit 1
        else 
            echo " $2 is ..$G SUCCESS $N"
    fi
        
}
CHECK_ROOT

#sh 15-loops.sh git mysql postfix  nginx
for package in $@ # refers to all arguments passed to it
do 
    echo $package
done