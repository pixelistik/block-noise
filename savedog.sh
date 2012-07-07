#!/bin/bash
# Every 5 minutes: keep one of the archive videos for documentation
mkdir -p ../saveme/keep
while :
do
	cp "../saveme/saveme1.dv" "../saveme/keep/`date`.dv"
	sleep 300
done
