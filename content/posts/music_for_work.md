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

Find and play music:

```
    # on Fedora core 26
    # Download and install conda3

    dnf install mplayer

    conda create --name mpsyt
    source activate mpsyt
    pip install mps-youtube
    pip install youtube_dl

```


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

Start mpsyt. Search one of the url's above.
Look at the information for the video.
If it's a compilation, search for playlists with the song name, or the
artist name, like:

    >set columns user:14 date likes dislikes view
    //truecolor alchemist
    //fadex
    //organ concerto

Then play the entire playlists, and make a note of the non-vocal
entires. You're looking for zero vocalizations within the music. 1
minute of words (including the repetition) per 45 minutes of non-vocal
music. The Tron Legacy sountrack for example. is a great example of what
you are looking for.

Select music from mpsyt by configuring the columns. You're looking
for a minimum of 100k views, with at least a 4 to 1 like to dislike
ratio.

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
    

## Deploying

Use mpsyt as the primary music browser. As you find entries that meet
the requirements, download them as 128k files. Use mplayer to convert
them to mp3 files. Move them to a folder on an external micro-sd card,
then put the card in the phone. Play directly from the phone over
bluetooth to the Bose in-ears. Don't even connect the over ears to
bluetooth anything, just leave them as noise cancelling.
