#!/bin/bash
# Dieses Script startet alle anderen. Normalerweise muss nur dieses Script ausgeführt werden.
echo "`date` Autostart">>protokoll.log
./resetarchive.sh
sleep 2
./archivefeed.sh &
#echo $!>/tmp/archivefeed.pid
./livefeed.sh &
#echo $!>/tmp/livefeed.pid
sleep 4
./compile.sh &
#echo $!>/tmp/compile.pid
sleep 2
./mosh.sh &
#echo $!>/tmp/mosh.pid
sleep 8
./watchdog.sh &
#echo $!>/tmp/watchdog.pid
