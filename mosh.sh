while [ 1 ]
do
	echo "`date` Starting moshing">>protokoll.log
	killall vlc
	killall ffmpeg
	cat compiledsignal|ffmpeg -i - -aspect 4:3 -f avi -an -vcodec libxvid -g 200 -vb 2500000 -s 720x576 -deinterlace -r 25 -y -|autodatamosh/autodatamosh.pl -dprob 0.1 -dmin 4 -dmax 60|cvlc --fullscreen --no-overlay -q ->/dev/null 2>&1
done
