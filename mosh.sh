#cat archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal|ffmpeg -i - -aspect 4:3 -f avi -an -vcodec libxvid -g 200 -vb 2500000 -s 360x288 -r 25 -y -|../autodatamosh/autodatamosh.pl -dprob 0 -dmin 4 -dmax 60|cvlc -
while [ 1 ]
do
	cat compiledsignal|ffmpeg -i - -aspect 4:3 -f avi -an -vcodec libxvid -g 200 -vb 2500000 -s 720x576 -deinterlace -r 25 -y -|../autodatamosh/autodatamosh.pl -dprob 0.1 -dmin 4 -dmax 60|cvlc --fullscreen --no-overlay -
done
#cat compiledsignal|../autodatamosh/autodatamosh.pl -dprob 0 -dmin 4 -dmax 60|cvlc -
