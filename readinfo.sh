i#!/usr/bin/env bash

echo "Enter your first name"
read  -r firstname
echo"Your name is $firstname"
echo "Enter your age"
read  -r age
echo "your age is $age"
echo "$firstname,$age" >> userinfo.txt
