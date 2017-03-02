#!/bin/bash -p
tar -cvf /home/user/syslog/syslogarchive/backup_$(date +"%m_%d_%Y").tar /home/user/syslog/file*.txt
cp /dev/null /home/user/syslog/file1.txt ; cp /dev/null /home/user/syslog/file2.txt ; cp /dev/null /home/user/syslog/file3.txt
