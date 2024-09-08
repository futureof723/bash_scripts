#!/usr/bin/env bash

directory="/home/tyler"

if [ -d "$directory" ]
then
  echo "$directory exists"
else
  echo "$directory does not exist"
fi
