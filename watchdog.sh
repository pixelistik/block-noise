#!/bin/bash
# Weil vlc manchmal die Wiedergabe stoppt, aber dann NICHT richtig
# beendet wird (was dann korrekt zu einem Neustart des Loops führen würde)
# beenden wir vlc manuell, sobald dessen CPU-Last null wird...
while :
do
	CPUPERCENT=$(top -b -n1|grep vlc|awk '{print $9}')
#	echo ${CPUPERCENT}
	if [ "$CPUPERCENT" = "0" ]
	then
		killall vlc
#		echo "VLC neugestartet"
	fi
	sleep 5
done
