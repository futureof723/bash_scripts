#!/usr/bin/env bash

name="Tyler Jay Mears"
now=$(date)

echo "Hello $name"

echo "The system time and date is $now"

echo "The current user is $USER"

echo "System info: $(uname -a)"

mynum=10

if [ $mynum -eq 10 ]
then
	echo "The condition is true."
else
	echo "The condition is false."
fi

if [ $mynum -ne 10 ]
then
  echo "mynum not equal to 10"
else
  echo "mynum is equal to 10"
fi

firstname="Tyler"


if [ "$firstname" != "Tyler" ]
then
  echo "firstname is not equal to Tyler"
else
  echo "first name is equal to Tyler"
fi

if [ "$firstname" = "Tyler" ]
then
  echo "firstname is equal to Tyler"
else
  echo "firstname is not equal to Tyler"
fi

if [ -z "$firstname" ]
then
  echo "firstname is null"
else
  echo "firstname is not null"
fi

if [ -z "$middlename" ]
then
  echo "middlename is null"
else
  echo "middlename is not null"
fi

if ((100 < 1000))
then
  echo "100 is less than 1000"
else
  echo "100 is not less than 1000 and something is wrong..."
fi

if ((100 < 1000))
then
  echo "100 is less than or equal to 1000"
else
  echo "100 is not less than or equal to 1000 and something is wrong..."
fi

