#!/bin/bash
while :
do
	cat ../saveme/saveme$((RANDOM%5+1)).dv > archivesignal
	sleep 1
done
