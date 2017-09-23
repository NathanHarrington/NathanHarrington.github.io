#!/bin/bash
for i in *.svg
do
convert -background none "$i" "${i%svg}png"
done

# Now convert them to thumbnails
for i in *.png
do
convert -resize 50x50 "$i" "thumbnails/$i"
done

