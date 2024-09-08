#!/usr/bin/env bash

logfile=/var/log/multiupdate.log
errorlog=/var/log/multiupdate_errors.log

check_exit_status() {
  if [ $? -ne 0 ]
  then
    echo "An error occured: check $errorlog file."
  fi
}

if lsb_release -a | grep -q "Fedora"
then
  echo "The distribution is Fedora" >> "$logfile"
  sudo dnf update -y 1>>$logfile 2>>$errorlog
  check_exit_status
fi

if lsb_release -a | grep -iq "Ubuntu" || lsb_release -a | grep -iq "Pop"
then
  echo "The distribution of Linux is Ubuntu" >> "$logfile"
  sudo apt update -y 1>>$logfile 2>>$errorlog
  check_exit_status
  sudo apt disto-update -y 1>>$logfile 2>>$logfile
  check_exit_status
fi

if lsb_release -a | grep -iq "Arch"
then
  echo "The distribution of Linux is Arch based." >> "$logfile"
  sudo pacman =Syu 1>>$logfile 2>>$errorlog
  check_exit_status
fi
