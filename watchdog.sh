#!/bin/bash
# Weil vlc manchmal die Wiedergabe stoppt, aber dann NICHT richtig
# beendet wird (was dann korrekt zu einem Neustart des Loops führen würde)
# beenden wir vlc manuell, sobald dessen CPU-Last null wird...
while :
do
	CPUPERCENT=$(top -b -n1|grep vlc|awk '{print $9}')
	if [ "$CPUPERCENT" = "0" ]
	then
		killall vlc
		echo "`date` Watchdog: vlc macht nichts mehr, wird neu gestartet">>protokoll.log
		sleep 30
	fi
	sleep 10
done
