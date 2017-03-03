#!/bin/bash
set -x
echo '1.start
2.stop
3.restart
4.archive
5.status'

read OPTION
echo $OPTION
if [[ $OPTION == 'start' ]]; then
echo "I am here"
systemctl start httpd
elif [[ $OPTION == 'stop' ]]; then
echo "I am here too"
systemctl stop httpd
elif [[ $OPTION=="restart" ]]; then
systemctl restart httpd
elif [[ $OPTION=="archive" ]]; then
tar -cvf /var/logs/archive/backup_$(date +"%m_%d_%Y").tar /var/logs/*log
elif [[ $OPTION=="status" ]]; then
systemctl status httpd
fi
