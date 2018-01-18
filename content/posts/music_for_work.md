Title: Music for working
Date:  2017-09-23
Category: articles
Tags: music

Goals: Control the external sensory environment. 

Hardware:

[Bose QuietControl 30](https://www.bose.com/en_us/products/headphones/earphones/quietcontrol-30.html)

[Bose QuietComfort
30](https://www.bose.com/en_us/products/headphones/over_ear_headphones/quietcomfort-35-wireless-ii.html#v=qc35_ii_black)
(pre-google assistant version)

Yes, both at the same time. Put the earbuds in, turn up noise
cancellation all the way. Play the music through this set. Turn on the
over ears, ensure the noise cancellation is on full, and put those on
over the in-ears. Play no sound through the over-ears, just use noise
cancellation.  It's 700$ on your head, and it's worth every penny.

Using these together means you won't be able to hear yourself type
on a mechanical keyboard. You won't hear people have yelling
conversations across rooms with your head in the middle. You won't hear
door slams and outside vehicles. It's a beautiful thing.

Face the wall - eliminate all peripheral vision. Literally add
blinders to your glasses if you need to.

A much cheaper alternative that will still let in significant outside
noise and make your ears hurt after an hour:
[ Howard Leight by Honeywell Sync Stereo MP3 Earmuff
(1030110)](https://www.amazon.com/gp/product/B004U4A5RU/ref=oh_aui_search_detailpage?ie=UTF8&psc=1)

Put these in-ear plugs in first, then crank up the music through the
earmuffs: [ Howard Leight by Honeywell MAX Disposable Foam Earplugs,
200-Pairs
(MAX-1)](https://www.amazon.com/Howard-Leight-Honeywell-Disposable-MAX-1/dp/B0013A0C0Y/ref=sr_1_21?s=hi&ie=UTF8&qid=1507982199&sr=1-21&keywords=ear+plugs)



##Find and play music:


What you are looking for is broad spectrum music. Examples are:

[Best 8-bit electro gaming mix
2016](https://www.youtube.com/watch?v=6c0GqWbCcyg)
**Do not browse youtube.com** Anything electronic, dubstep, gaming etc. is known for inappropriate imagery.  

or

[Handel Organ Concertos](https://youtube.com/watch?v=6wvrHQ0aDC8)

Both of which cover the low, mid and high range of frequencies in
typical office environments, continuously. You may want the Goldberg
Variations, but there is just simply too much empty space in the music
to effectively drown out office environments.


Start your search tool. Search one of the url's above.
Look at the information for the video.
If it's a compilation, search for playlists with the song name, or the
artist name, like:

    //truecolor alchemist
    //fadex
    //organ concerto

Then play the entire playlists, and make a note of the non-vocal
entires. You're looking for zero vocalizations within the music. 1
minute of words (including the repetition) per 45 minutes of non-vocal
music. The Tron Legacy sountrack for example. is a great example of what
you are looking for.

Select music by the following criteria: You're looking for pieces with a
minimum of 100k views, with at least a 4 to 1 like to dislike ratio.

More ideas for finding music non-vocal broad spectrum music: Fadex is
almost perfect in what you are looking for. Look up their web presence
and check for entries on their spotify favorites, playlists, and punch
those names into playlists on mpsyt. 

## Brown noise + Pink noise

Alternatively or additionally if required, add in brown (low
frequency) and pink (high frequency) noise overlaid on top of the music.
If you must have the Goldberg Variations, for example, start the
goldberg variations, then add in:

[Brown noise](https://youtube.com/watch?v=GSaJXDsb3N8) and [Pink
noise](https://youtube.com/watch?v=ZXtimhT-ff4) at about 60% music volume. It
may seem loud at first, but it will blend in after a few minutes and you
will realize later that it fills in the variability of office
environment sounds resulting in increased focus.

Preferrably, use sox for audio generation with one of these options:
<pre>
 play -c 2 -n synth [brownnoise|whitenoise|pinknoise]
</pre>

    
## Search tools
```
    # on Fedora core 26
    # Download and install conda3

    dnf install mplayer

    conda create --name mpsyt
    source activate mpsyt
    pip install mps-youtube
    pip install youtube_dl

    Start mpyst in conda3 environment, then issue:
    >set player mplayer
    >set columns user:14 date likes dislikes views

```

Select music from by configuring the columns. You're looking
for a minimum of 100k views, with at least a 4 to 1 like to dislike
ratio.


## Deploying

Use mpsyt as the primary music browser. As you find entries that meet
the requirements, download them as 128k files. After downloading files,
move them into subfolders. Change to each sub folder and run the
conversion and sanitize names script to make sure they play on google
music on android:

```
#!/bin/bash
#
# Convert downloaded files from mpsyt into mp3s
# Sanitize the filenames so they will play on google play
#
# Run this in the directory of downloaded files
#
for i in *.webm
do
ffmpeg -i "$i" -ab 128k "${i%webm}mp3"
rm "$i"
done

for i in *.m4a
do
ffmpeg -i "$i" -ab 128k "${i%m4a}mp3"
rm "$i"
done


for i in *.mp4
do
ffmpeg -i "$i" -ab 128k "${i%mp4}mp3"
rm "$i"
done

# From:
# https://odoepner.wordpress.com/2011/10/13/bash-script-to-\
#   recursively-sanitize-folder-and-file-names/

sanitize() {
  shopt -s extglob;

  filename=$(basename "$1")
  directory=$(dirname "$1")

  filename_clean="${filename//+([^[:alnum:]_-\.])/_}"

  # The idea is this is easier to read
  filename_clean="${filename_clean//\:/_}"
  filename_clean="${filename_clean//\!/_}"
  filename_clean="${filename_clean//\?/_}"

  filename_clean="${filename_clean//\é/e}"
  filename_clean="${filename_clean//\è/e}"
  filename_clean="${filename_clean//\ü/u}"
  filename_clean="${filename_clean//\ô/o}"
  filename_clean="${filename_clean//\ç/c}"
  filename_clean="${filename_clean//\ñ/n}"
  filename_clean="${filename_clean//\å/a}"
  filename_clean="${filename_clean//\æ/ae}"
  filename_clean="${filename_clean//\Œ/oe}"
  filename_clean="${filename_clean//\ø/o}"
  filename_clean="${filename_clean//\ß/B}"

  if (test "$filename" != "$filename_clean")
  then
    mv -v --backup=numbered "$1" "$directory/$filename_clean"
  fi
}

export -f sanitize
find $1 -depth -exec bash -c 'sanitize "$0"' {} \;
```


Move them to a folder on an external micro-sd card,
then put the card in the phone. Play directly from the phone over
bluetooth to the Bose in-ears. Don't even connect the over ears to
bluetooth anything, just leave them as noise cancelling. As you come
across entries on the phone that don't meet the criteria, delete them
directly on the phone.


