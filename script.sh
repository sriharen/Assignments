#!/bin/bash -p
top -b -n 1 >> /home/user/syslog/file1.txt
vmstat >> /home/user/syslog/file2.txt
iostat >> /home/user/syslog/file3.txt

