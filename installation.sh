#!/bin/bash

USERID=$(id -u)

if [$USERID -ne 0]; then

    echo "error:: please run this script using root privaliges"
    exit 1
fi

dnf install mysql -y

if [$? -ne 0];then

    echo "error:: Installing mysql is failing"
    exit 1

else
    echo "installing mysql is success"