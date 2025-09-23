#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

    echo "error:: please run this script using root privaliges"
    exit 1
fi
validate (){
  if [ $1 -ne 0 ]; then
        echo "error:: Installing $2 is failing"
        exit 1
    else
        echo "installing mysq $2 is success"  
    fi
}
dnf install mysql -y
validate $? "mysql"

dnf install nginx -y
validate $? "nginx"

dnf install python3 -y
validate $? "python3"
