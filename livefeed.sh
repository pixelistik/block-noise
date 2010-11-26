#!/bin/bash
while :
do
	dvgrab -d$((RANDOM%20+5))  - >livesignal
	sleep 1
done
