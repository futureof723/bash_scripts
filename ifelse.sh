#!/usr/bin/env bash

name="tyler"
user=$USER

if [ "$name" == "$user" ]
then
  echo "name $name is equal to username $user"
else
  echo "name $name is not equal to username $user"
fi
