#!/bin/bash
while :
do
	NUMBER=$((RANDOM%5+1))
	echo "Next archive video: $NUMBER"
	cat ../saveme/saveme$NUMBER.dv > archivesignal
	sleep 1
done
