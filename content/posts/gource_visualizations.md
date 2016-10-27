Title: Gource visualizations of source code repositories
Date:  2016-10-27
Category: articles
Tags: wasatch photonics
thumbnail_image: /images/wasatch-images/dash_gource.gif

[gource](http://gource.io/) creates truly outstanding source code
development visualizations. Here's the workflow for demonstrating the
collaboration over years, without some of the default details. The
commands below are designed to produce the visualizations to show
collaboration and general activity levels, as well as produce animated
gifs and smaller sets of imagery designed for presentations.


    ./gource 
    ~/wasatch/Software/Dash3 
    --title "Dash Development"
    --seconds-per-day 0.01 
    --file-filter "(famfam|png|jpg|bmp|xcf)" 
    --hide dirnames,filenames,usernames 
    --file-extensions 
    --key 
    -o dash_withkey_gource.ppm


Dash version 3 has a set of unique attributes that tend to limit the
usefulness of a gource visualization. The command line switches above
compensate for:

A 5 year set of data (seconds-per-day)
Many image files, frequently modified (file-filter)
Long file and directory names that do not expire (hide, file-extensions)


Show just the key with (key), and save the results to a ppm file.


Then the conversion to a video:


    ffmpeg 
    -y 
    -r 60 
    -f image2pipe -vcodec ppm 
    -i dash_withkey_gource.ppm
    -vcodec libx264 
    -preset ultrafast 
    -pix_fmt yuv420p 
    -crf 1 
    -threads 0 
    -bf 0 
    dash_withkey_gource.mp4


And finally a conversion to a thumbnail animated gif:

    ffmpeg -i ../dash_withkey_gource_2015.mp4 -r 5 'frames/frame-%03d.jpg'
    convert -resize 25% -delay 10 -loop 0 \*.jpg dash_gource.gif

If you run through the instructions above verbatim, you will have
something close to a 1GB ppm file, a 600MB mp4, and .gif file totally
approximately 10GB.  

To cut that down to something manageable for the web, run:


Gource conversion to a ppm with one year of data:

    ./gource 
    ~/wasatch/Software/Dash3 
    --title "Dash Development"
    --seconds-per-day 0.01 
    --file-filter "(famfam|png|jpg|bmp|xcf)" 
    --hide dirnames,filenames,usernames 
    --file-extensions 
    --key 
    --start-date '2015-01-01'
    --stop-date '2016-01-01'
    -o dash_withkey_gource_2015.ppm


Conversion to an mp4:

    ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i
    dash_withkey_gource_2015.ppm -vcodec libx264 -preset ultrafast -pix_fmt
    yuv420p -crf 1 -threads 0 -bf 0 dash_withkey_gource_2015.mp4


Extract each frame into a jpg:

    mkdir frames
    ffmpeg -i ../dash_withkey_gource_2015.mp4 -r 5 'frames/frame-%03d.jpg'

Shrink and combine into an animated gif:

    cd frames
    convert -resize 25% -delay 10 -loop 0 *.jpg dash_gource.gif


