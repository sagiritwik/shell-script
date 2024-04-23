#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
     echo "ERROR:: Please run the script with the root access"
     exit 1 # other than 0
else
     echo "you're root user"
fi          

 yum install mysql -y

 if [ $? -ne 0 ]
 then
     echo "ERROR:: Installing MySQL is failed"
     exit 1
 else
     echo "Installing MySQL is SUCCESS"
 fi   