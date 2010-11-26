#!/bin/bash
while :
do
	dvgrab -d$((RANDOM%10+5))  - |tee ../saveme$((RANDOM%3+1)).dv>livesignal
	sleep 1
done
