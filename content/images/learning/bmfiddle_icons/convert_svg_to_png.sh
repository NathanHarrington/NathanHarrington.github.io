#!/bin/bash
for i in *.svg
do
convert -background none "$i" "${i%svg}png"
done

