#!/bin/bash

#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

#echo "User ID is: $USERID"

CHECKROOT(){
    if [ $USERID -ne 0 ]
    then
        echo "Please run this script with root priveleges"
        exit 1
    fi

}

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 is ..$R FAILED $N"
        exit 1
    else 
        echo -e "$2 is .. $G SUCCESS $N"
        fi
}

CHECKROOT

#sh 15-loops.sh git mysql postfix nginx
for package in $@ #$@ refers to all arguments passed to it
do 
    echo $package 
done