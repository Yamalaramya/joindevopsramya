#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0]then
    echo "error:: please run this script using root privaliges"
fi