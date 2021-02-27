#! /bin/bash
for log in `ls /var/log/*.log`
do
	count=`grep -c 'systemd' $log`
	if [ $count -gt 0 ]
	then
		echo $count
	fi
done
