#!/bin/bash
while :
do
	cat ../saveme$((RANDOM%10+1)).dv > archivesignal
	sleep 1
done
