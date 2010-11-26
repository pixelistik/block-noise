#!/bin/bash
while :
do
	cat ../saveme$((RANDOM%3+1)).dv > archivesignal
	sleep 1
done
