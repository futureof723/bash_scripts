#!/usr/bin/env bash

command=/usr/bin/htop

if [ -f "$command" ]
then
  echo "$command is present..."
  sleep 1
  echo "lets start is!"
  sleep 1
  $command
  sleep 1
  echo "have a good day $USER"
else
  echo "$command is not available"
  sleep 1
  echo "lets install it!"
  sleep 1
  sudo dnf install htop
  echo "now lets run it!"
  sleep 1
  $command
  sleep 1
  echo "have a good day $USER"
fi

