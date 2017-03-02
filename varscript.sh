#!/bin/bash -p
log_loc="/home/user/syslog"
echo "The location is "$log_loc
for file in $log_loc/file*.txt;
do
        if [[ -f "$file" ]]; then
        echo "$file exists"
                if [[ -s "$file" ]]; then
                echo "$file is not empty"
                else
                echo "$file is empty"
		exit 1
                fi
        else
        echo "$file doesnt exist"
	exit 1
        fi
done
ls -l | grep file
tar -cvf /home/user/syslog/syslogarchive/backup_$(date +"%m_%d_%Y").tar /home/user/syslog/file*.txt
