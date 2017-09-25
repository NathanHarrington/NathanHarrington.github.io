Title: bmfiddle.com user interface modifications
Date:  2017-09-23
Category: articles
Tags: business model canvas


Configure bmfiddle.com to match the goals of the business model canvas.

The tools provided by [bmfiddle.com](https://bmfiddle.com) are
excellent. Based on earlier [research]({filename}learning_stage3.md),
the following goals emerged:

1. Fully digital business model canvas that uses the BMC correctly.
2. Includes imagery + text in each sticky
3. Business model canvas components with the right names in the right order
4. Minimal visual distractions
5. Box text headers only (DO NOT WRITE ON THE CANVAS)
6. Allow for rapid upates
7. Provide clear visual indicators that can be portable to other media
quickly (zoom, export to png, screenshots, etc.)
8. Encourage play


Here's how to use bmfiddle.com to meet these goals:

Sign in to bmfiddle
Create a new fiddle

>Title: Business Model Generation with Clarity

>Description: Based on Steve Blanks Udacity course - add userstyles here:
http://goo.gl/kjdfkjf

Template is the Business Model Canvas

Keep all access and sharing defaults

Click Customize template

Click Value Propositions box, change order from 2 to 1

Click Customer Segments box, change order from 1 to 2

Click Key Partners box, change order from 8 to 7

Click Key Activities box, change order from 7 to 8

Go through each box, eliminate all Block description and Block Help text
items.

Keep all Labels and Metrics defaults

Save the fiddle. It should now look like this:

[![BMfiddle step1](/images/learning/thumbnails/bmfiddle_step1.png)](/images/learning/bmfiddle_step1.png)

Or, use the bmfiddle.com template here: [Business Model Generation with
Clarity](https://bmfiddle.com/f/#/M7bw6)


To eliminate more of the visual distractions, add the 'stylish' plugin
to firefox. Click the extension icon, then write new style-> for
bmfiddle.com. Add the contents of the box below, or click here for the
user style [bmfiddle clarity](https://goo.gl/oLuFte)

```
@namespace url(http://www.w3.org/1999/xhtml);

@-moz-document domain("bmfiddle.com") {

    /* make text color white on white to eliminate the visually
 * distracting
    component numbers*/
    .block .order { background-color: #ffffff;}

    /* hide all of the background iconagraphy */
    .bg {background-image: none;}

    /* hide the count of stickys in the lower right */
    .block .count {color: #ffffff;}

    /* make icons small on the canvas */
    .item-asset img.scale-with-grid { max-width: 20%; }
}
```

Give the style the name of bmfiddle_clarity, then save. Now the canvas
should look like this:



[![BMfiddle step2](/images/learning/thumbnails/bmfiddle_step2.png)](/images/learning/bmfiddle_step2.png)



Add the following set of line drawn images to the resources area of the
bmfiddle:

[![channels](/images/learning/bmfiddle_icons/thumbnails/channels.png)](/images/learning/bmfiddle_icons/channels.png)
[![costs](/images/learning/bmfiddle_icons/thumbnails/costs.png)](/images/learning/bmfiddle_icons/costs.png)
[![customer relationships](/images/learning/bmfiddle_icons/thumbnails/customer_relationships.png)](/images/learning/bmfiddle_icons/customer_relationships.png)
[![customer segments](/images/learning/bmfiddle_icons/thumbnails/customer_segments.png)](/images/learning/bmfiddle_icons/customer_segments.png)
[![key activities](/images/learning/bmfiddle_icons/thumbnails/key_activities.png)](/images/learning/bmfiddle_icons/key_activities.png)
[![key partners](/images/learning/bmfiddle_icons/thumbnails/key_partners.png)](/images/learning/bmfiddle_icons/key_partners.png)
[![key resources](/images/learning/bmfiddle_icons/thumbnails/key_resources.png)](/images/learning/bmfiddle_icons/key_resources.png)
[![revenue streams](/images/learning/bmfiddle_icons/thumbnails/revenue_streams.png)](/images/learning/bmfiddle_icons/revenue_streams.png)
[![value propositions](/images/learning/bmfiddle_icons/thumbnails/value_proposition.png)](/images/learning/bmfiddle_icons/value_proposition.png)

If you're making your own icons, remember to create or verify the icons
as SVG's with a transparent background. Save them in the bmfiddle_icons
directory, then run the convert_svg_to_png.sh script, which will create
the transparent png thumbnails. These are what will be uploaded to the
resources area on bmfiddle.


```
#!/bin/bash
# convert_svg_to_png.sh
for i in *.svg
do
convert -background none "$i" "${i%svg}png"
done

# Now convert them to thumbnails
for i in *.png
do
convert -resize 50x50 "$i" "thumbnails/$i"
done
```

The icons below are extracted from the
[uniicons](https://dribbble.com/shots/2266356-Uniicons-free) pack.



The easiest way to get these into the canvas resources are is to e-mail
them to <canvas_id>@canvas.bmfiddle.com from the address used to create your
bmfiddle.com account. On linux, this can look like:

```

mutt <canvas_id>@canvas.bmfiddle.com -s "PNGs" $( printf -- '-a %q ' *.png ) 

```

You can use the sketch tool on bmfiddle, but it will not have a
transparent background. 



Remember, the idea here is to tune bmfiddle.com into a tool you can use
for the next 3 months at least. Don't get frustrated, don't give up.
Don't think you are over-optimizing at this stage. The bare bones best
version is still probably sticky notes on a white piece of paper with a
team of people. You can make a better version that is fully digital and
auto-backed up and is actually easier to share with people if you put in
the tools up front, and have the disciplined flow in the future. The
next disciplined flow will be:

Log in to bmfiddle.com 
Fork from the clarity canvas.
Upload the imagery resources.

Now for each update:
Take a snapshot first. 
when in doubt, just hit that snapshot button
Move stickies on and off to the stack, or maybe the archive. Never
delete them.


The process above was used to create a bmfiddle.com canvas that looks
like this:

[![BMfiddle step3](/images/learning/thumbnails/bmfiddle_step3.png)](/images/learning/bmfiddle_step3.png)



I finally get it. I was just playing at efficiency before. Now I truly
see what a liberation it is. Specificaly with the 4HWW concepts and
travel. I'm just getting ready to go to a panthers game for a single
sunday. Truly preparing for that forces you to eliminate and focus on
what is actually essential. My purpose is to create, organize and give
away businesses. Everything else literally gets in the way and should be
eliminated. 

That's the frustration I used to see in myself and I see now in others,
especially the children. Immersion in the mundane leads to a cycle of
hate you can't escape. You do small, simple things to increase your
comfort level instead of grow. You break down and watch 5 hours of tv a
day instead of trying to do anything. 

The opposite is you put in the work when you are ready to do the work.
And you control the rest of the inputs so they don't blow up the work.

You literally work on one thing each and every day: whatever it takes to
give you more freedom to meet your purpose and make your stand.
