#!/bin/bash
# This script starts all the other ones. Normally, only this script needs to be started

echo "======================================="
echo "=            BLOCK NOISE!             ="
echo "======================================="
echo
echo "Starting the video installation"
echo
echo "To stop:"
echo "Press ESC and then run stopall.sh"
echo
sleep 4

echo "`date` Auto start">>protokoll.log
./resetarchive.sh
sleep 2
./archivefeed.sh &
./livefeed.sh &
sleep 4
./compile.sh &
sleep 2
./mosh.sh &
sleep 8
./watchdog.sh &
./savedog.sh &
