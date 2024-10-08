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

dnf list installed git


if [ $? -ne 0 ]
then
    echo "Git is not installed , going to install it..."
    dnf install git -y

VALIDATE $? "Installing Git"

else
    echo "Git is alreday installed, nothing to do"
fi

dnf list installed mysqlsssss

if [ $? -ne 0 ]
then
    echo "Mysql is not installed ...going to install"
    dnf install mysqlllll -y
    VALIDATE $? "Instatalling Mysql"
else
    echo "Mysql is already installed..nothing to do"
fi
