#!/bin/bash

ID=$(id -u)

 if [ $ID -ne 0 ]
 then
        echo -e "$R ERROR:: Please run the script with the root access $N"
        exit 1 # other than 0
 else
        echo "you're root user"
 fi     

 echo "All arguments passed: $@"
