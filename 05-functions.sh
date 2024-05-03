#!bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "ERROR:: Installing  is failed"
        exit 1
    else
        echo "Installing is SUCCESS"
    fi   
}

    if [ $ID -ne 0 ]
    then
        echo "ERROR:: Please run the script with the root access"
        exit 1 # other than 0
    else
        echo "you're root user"
    fi          

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE