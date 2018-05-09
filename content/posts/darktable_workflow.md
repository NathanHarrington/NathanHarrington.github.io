Title: Darktable image processing workflow
Date:  2018-05-08
Category: articles
Tags: productivity


Instructions for using Darktable on a Linux system for digital photo
processing.

<pre>
Camera: Nikon D3000 (2009)
Laptop: Lenovo U430 Touch (2014)
Storage: Microsd card in SD card adapter

Eject card from Camera, place in laptop.

Create the folder ~/Pictures/<timestamp>

Copy just .NEF from SD Card/DCIM/100D3000/ to ~/Pictures/<timestamp>

Start Darktable, press F11 to full screen

Make sure you are in "Lighttable" mode

Import -> folder 
    Click folder: ~/Pictures/<timestamp>
    Click open

Set 3-thumbnail view on bottom slider

Make a first pass in Lighttable view, clicking the red x on any that are
clearly rejects, out of focus, etc.  Look through the entire roll for
any corruption, other weirdness. You may have no rejects, and that is
ok, this is partly just a sanity check so you can verify the local copy.



Switch to darkroom mode, view all except rejected

Now go through each image, and give a star level of 3 if acceptable.

If you're unsure, don't reject, just give it a 1-2 star rating

Feel free to keep all or mark as rejects all. The point is to go through
    and look at each photo for at least 1 second.

The best way to do this is to keep the mouse cursor over the thumbnail
at the bottom, then use the keys 1-5 for star rating. Then push space to
go to the next image. Make sure the mouse cursor stays over the center
thumbnail.

Now View all 3 stars and above. 

Mark as leel 5 if it's the appropriate quality.

Now View all 5 stars and above.

Then do further refinements, editing, color balancing.

To remove a photo, just give it a <5 star rating and it will disappear
from the thumbnail list at the bottom. Remember to have your mouse over
the photo you want to assign a star rating.

</pre>

<pre>
Export to disk the selected images:

Switch back to Lighttable view
Choose 5 stars and above.

Shift-Select all of the 5 star images.

On the right side, go to Export Selected

The default options are:
Target storage:   File on Disk

$(FILE_FOLDER)/darktable_exported/$(FILE_NAME)

jpeg 8-bit
quality 95

Click export.
</pre>


<pre>
Post on google workflow:
    With username@gmail.com
    go to: http://photos.google.com
    Click upload
    Choose all files from darktable exported jpg above.
    After upload is complete Click "Shared album"
    Click "New shared album"
    Give it a title, click share, click google plus
    Create a new post in the 'public' area
</pre>


<pre>
Add to first-gen ipad screensaver picture workflow:

Go to the darktable exported folder, for example:
    cd ~/Pictures/<timestamp>/darktable_exported/

mkdir smaller
cd smaller
cp ../*.jpg .
mogrify -resize 50% *.jpg
python -m http.server (python3)
    
On the ipad, open safari, go to 192.168.0.70:8000
where 192.168.0.70 is the ip address of the computer running the
    python httpserver

Click each file, after it loads hold-click, then 'save image'
</pre>


<pre>
After images have been copied to the laptop, uploaded to google, and
placed on the ipad: remove the sd card, place it back in the camera.
Format the card when placed in the camera.
</pre>

