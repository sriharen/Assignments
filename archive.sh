#!/bin/bash

OPTION=$1
if [[ "$EUID" -ne 0 ]]; then
echo "Please run as root"
exit 1
else
case $OPTION in

	start)
		systemctl start httpd
		;;
	stop)
		systemctl stop httpd
		;;
	restart) 
		systemctl restart httpd
		;;
	archive)
		tar -cvf /var/logs/archive/backup_$(date +"%m_%d_%Y").tar /var/logs/*log
		;;
	status) 
		systemctl status httpd
		;;
esac
fi
