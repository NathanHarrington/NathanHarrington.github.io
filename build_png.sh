
#!/bin/bash
for i in content/images/learning/bmfiddle_icons/uniicons/*.png
do
newname="${i:7}"
shortname="${i:39}"
echo "![$shortname]($newname)"
#convert -background none "$i" "${i%svg}png"

done
