#!/bin/bash
while :
do
	NUMBER=$((RANDOM%5+1))
	echo "Nächstes Archivvideo: $NUMBER"
	cat ../saveme/saveme$NUMBER.dv > archivesignal
	sleep 1
done
