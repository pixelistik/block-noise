#!/bin/bash
mkdir -p ../saveme
while :
do
	dvgrab -d$((RANDOM%10+5)) -buffers 220  - |tee ../saveme/saveme$((RANDOM%5+1)).dv>livesignal
	sleep 1
done
