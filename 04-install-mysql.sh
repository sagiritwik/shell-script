#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
     echo "ERROR:: Please run the script with the root access"
else
     echo "you're root user"
fi          