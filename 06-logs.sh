#!bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script name: $0"

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo -e "$R ERROR:: $2 ... $R failed $N"
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N"
    fi   
}

    if [ $ID -ne 0 ]
    then
        echo -e "$R ERROR:: Please run the script with the root access $N"
        exit 1 # other than 0
    else
        echo "you're root user"
    fi          

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE

