#!/bin/bash
# Sometimes VLC stops playing but does not terminate ("half-crashed")
# We just need to kill it manually once its CPU load goes down to 0.
while :
do
	CPUPERCENT=$(top -b -n1|grep vlc|awk '{print $9}')
	if [ "$CPUPERCENT" = "0" ]
	then
		killall vlc
		echo "`date` Watchdog: vlc is half-crashed, restarting">>protokoll.log
		sleep 30
	fi
	sleep 10
done
