#cat archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal archivesignal livesignal|ffmpeg -i - -aspect 4:3 -f avi -an -vcodec libxvid -g 200 -vb 2500000 -s 360x288 -r 25 -y -|../autodatamosh/autodatamosh.pl -dprob 0 -dmin 4 -dmax 60|cvlc -
cat compiledsignal|ffmpeg -i - -aspect 4:3 -f avi -an -vcodec libxvid -g 200 -vb 2500000 -s 360x288 -r 25 -y -|../autodatamosh/autodatamosh.pl -dprob 0 -dmin 4 -dmax 60|cvlc -
#cat compiledsignal|../autodatamosh/autodatamosh.pl -dprob 0 -dmin 4 -dmax 60|cvlc -