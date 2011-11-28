#!/bin/bash
#kill $(echo /tmp/archivefeed.pid)
#kill $(echo /tmp/livefeed.pid)
#kill $(echo /tmp/compile.pid)
#kill $(echo /tmp/mosh.pid)
#kill $(echo /tmp/watchdog.pid)

#rm /tmp/archivefeed.pid
#rm /tmp/livefeed.pid
#rm /tmp/compile.pid
#rm /tmp/mosh.pid
#rm /tmp/watchdog.pid
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