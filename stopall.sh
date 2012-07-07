#!/bin/bash
echo "`date` Stop all">>protokoll.log
killall archivefeed.sh
killall livefeed.sh
killall compile.sh
killall mosh.sh
killall watchdog.sh
killall autostart.sh

killall vlc
killall ffmpeg
killall dvgrab