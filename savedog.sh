#!/bin/bash
# Alle 5 Minuten mal eines der gespeicherten Videos behalten...
mkdir -p ../saveme/keep
while :
do
	cp ../saveme/saveme1.dv ../saveme/keep/keep`date`.dv
	sleep 300
done
