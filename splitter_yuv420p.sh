clear

echo "";
echo "----------";
echo "-- xpln --";
echo "----------";
echo "";

for file in *.MP4;
do
	ffmpeg -i  $file  -filter:v "crop=1280:1280:0:0 , yadif=1,format=yuv420p" -c:a copy "${file%.MP4}_R.MP4";
	ffmpeg -i  $file  -filter:v "crop=1280:1280:1280:0 , yadif=1,format=yuv420p"  -c:a copy "${file%.MP4}_L.MP4";
done

