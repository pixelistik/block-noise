#!/bin/bash
while :
do
	dvgrab -d$((RANDOM%20+5))  - |tee ../saveme$((RANDOM%10+1)).dv>livesignal
	sleep 1
done
