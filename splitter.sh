clear

echo "";
echo "----------";
echo "-- xpln --";
echo "----------";
echo "";

for file in *.MP4;
do
	ffmpeg -i $file -filter:v "crop=1920:1920:0:0" -c:a copy "${file%.MP4}_R.MP4";
	ffmpeg -i $file -filter:v "crop=1920:1920:1920:0" -c:a copy "${file%.MP4}_L.MP4";
done