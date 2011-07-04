#!/bin/bash
# Dieses Script startet alle anderen. Normalerweise muss nur dieses Script ausgeführt werden.

./resetarchive.sh
sleep 2
./archivefeed.sh &
./livefeed.sh &
sleep 3
./compile.sh &
sleep 2
./mosh.sh &
sleep 8
./watchdog.sh &
