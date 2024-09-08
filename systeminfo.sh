#!/usr/bin/env bash

exit=0

while [ $exit -ne 1 ]
do
  echo "Please choose a selection."

  echo "1) uname -a"
  echo "2) uname -r"
  echo "3) date and time"
  echo "4) exit"

  read -r selection

  case $selection in
    1) uname -a;;
    2) uname -r;;
    3) date;;
    4) exit=1;;
    *) echo "Error";;
  esac
done
