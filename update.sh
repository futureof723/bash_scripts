#!/usr/bin/env bash

# this script will be used to automatically update the system
# TODO: add support for other distributions

check_update="sudo dnf check-update"
upgrade="sudo dnf upgrade -y"
clean_all="sudo dnf clean all"
autoremove="sudo dnf autoremove -y"
transaction_history="sudo dnf history"
fastfetch="fastfetch"

date=$(date)
sleep_time=0s
line_segment="--------------------------------------------------------------------------------------------------"
start_stop="===================================================================================================="
exit_code=0
datetime=$(date +"%d-%m-%Y_%H-%M-%S")

# will be used as log directory and file
log_file="$datetime.log"
log_directory="/var/log/update_script_logs"
log_directory_file="$log_directory/$log_file"

# making sure directory and log file exist if not create them
if [ ! -d "$log_directory" ]
then
  mkdir "$log_directory"
fi

if [ ! -f "$log_directory/$log_file" ]
then
  touch "$log_directory/$log_file"
fi

# checking if fastfetch is installed if not install
if [ ! -f "/usr/bin/fastfetch" ]
then
  sudo dnf install fastfetch -y >/dev/null 2>&1
fi

# for time stamping purposes
echo "$start_stop" >> "$log_directory_file"
echo "$line_segment" >> "$log_directory_file"

# so we know what times the script is being run
echo "Script is starting" >> "$log_directory_file"
echo "Current date and time script is being run $date" >> "$log_directory_file"

echo "$line_segment" >> "$log_directory_file"

$fastfetch >> "$log_directory_file"

echo "$line_segment" >> "$log_directory_file"

echo "Command: $check_update" >> "$log_directory_file"
# run the check_update command
$check_update >> "$log_directory_file"

if [ $? -ne "$exit_code" ]
then
  echo "Exit code: $?" >> "$log_directory_file"
  echo "$check_update did not exit properly" >> "$log_directory_file"
  echo "Current date and time: $date" >> "$log_directory_file"
else
  echo "$check_update successful" >> "$log_directory_file"
  echo "Current date and time: $date" >> "$log_directory_file"
fi

sleep "$sleep_time"

echo "$line_segment" >> "$log_directory_file"

echo "Command: $upgrade" >> "$log_directory_file"
# run the upgrade command
$upgrade >> "$log_directory_file"

if [ $? -ne "$exit_code" ]
then
  echo "Exit code: $?" >> $log_directory_file
  echo "$upgrade did not exit properly" >> "$log_directory_file"
  echo "The current date and time: $date" >> "$log_directory_file"
else
  echo "$upgrade successful" >> "$log_directory_file"
  echo "Current date and time: $date" >> "$log_directory_file"
fi

sleep "$sleep_time"

echo "$line_segment" >> "$log_directory_file"

echo "Command: $clean_all" >> "$log_directory_file"
# run the clean_all command
$clean_all >> "$log_directory_file"

if [ $? -ne "$exit_code" ]
then
  echo "Exit code: $?" >> $log_directory_file
  echo "$clean_all did not exit properly" >> "$log_directory_file"
  echo "Current date and time: $date" >> "$log_directory_file"
else
  echo "$clean_all successful" >> "$log_directory_file"
  echo "Current date and time: $date" >> "$log_directory_file"
fi

sleep "$sleep_time"

echo "$line_segment" >> "$log_directory_file"

echo "Command: $transaction_history" >> "$log_directory_file"
# run the transaction_history command
$transaction_history >> "$log_directory_file"

if [ $? -ne "$exit_code" ]
then
  echo "Exit code: $?" >> $log_directory_file
  echo "$transaction_history did not exit properly" >> "$log_directory_file"
  echo "Current date and time: $date" >> "$log_directory_file"
else
  echo "$transaction_history successful" >> "$log_directory_file"
  echo "Current date and time: $date" >> "$log_directory_file"
fi

sleep "$sleep_time"

echo "$line_segment" >> "$log_directory_file"

echo "Command: $autoremove" >> "$log_directory_file"
# run the autoremove command
$autoremove >> "$log_directory_file"

if [ $? -ne "$exit_code" ]
then
  echo "Exit code: $?" >> $log_directory_file
  echo "$autoremove did not exit properly" >> "$log_directory_file"
  echo "Current date and time: $date" >> "$log_directory_file"
else
  echo "$autoremove successful" >> "$log_directory_file"
  echo "Current date and time: $date" >> "$log_directory_file"
fi

sleep "$sleep_time"

echo "$line_segment" >> "$log_directory_file"

# so we know when the update script is done
echo "Script finished" >> "$log_directory_file"
echo "Current date and time: $date" >> "$log_directory_file"

echo "$start_stop" >> "$log_directory_file"
