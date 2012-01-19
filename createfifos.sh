#!/bin/bash

# Three fifos are needed, this script can recreate them after a fresh install
mkfifo livesignal
mkfifo archivesignal
mkfifo compiledsignal
