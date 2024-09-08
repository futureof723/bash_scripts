#!/usr/bin/env bash

date=$(date)
uname=$(uname -a)
diskinfo=$(df -h)
user=$USER

echo "$date"
echo "$uname"
echo "$diskinfo"
echo "$user"
