while true
do
	thetmp=`date +'%a, %b %d, %Y  %r'`
	speed=`speedtest --simple --no-upload | grep Download | cut -d ":" -f2`
	echo '"'$thetmp'"','"'$speed'"' >> speed.csv
	sleep 30
	echo "Running : " $thetmp
done
