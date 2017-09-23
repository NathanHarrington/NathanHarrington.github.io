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


To eliminate more of the visual distractions, add the 'stylish' plugin
to firefox. Click the extension icon, then write new style-> for
bmfiddle.com. Add the contents of the box below:

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

}
```

Give the style the name of bmfiddle_clarity, then save. Now the canvas
should look like this:



[![BMfiddle step2](/images/learning/thumbnails/bmfiddle_step2.png)](/images/learning/bmfiddle_step2.png)


Make the images smaller with:
.item-asset img.scale-with-grid {

Add the following set of line drawn images to the resources area of the
bmfiddle:

[![channels](/images/learning/bmfiddle_icons/thumbnails/channels.svg)](/images/learning/bmfiddle_icons/channels.svg)
[![channels](/images/learning/bmfiddle_icons/thumbnails/costs.svg)](/images/learning/bmfiddle_icons/costs.svg)
[![channels](/images/learning/bmfiddle_icons/thumbnails/customer_relationships.svg)](/images/learning/bmfiddle_icons/customer_relationships.svg)
[![channels](/images/learning/bmfiddle_icons/thumbnails/customer_segments.svg)](/images/learning/bmfiddle_icons/customer_segments.svg)
[![channels](/images/learning/bmfiddle_icons/thumbnails/key_activities.svg)](/images/learning/bmfiddle_icons/key_activities.svg)
[![channels](/images/learning/bmfiddle_icons/thumbnails/key_partners.svg)](/images/learning/bmfiddle_icons/key_partners.svg)
[![channels](/images/learning/bmfiddle_icons/thumbnails/key_resources.svg)](/images/learning/bmfiddle_icons/key_resources.svg)
[![channels](/images/learning/bmfiddle_icons/thumbnails/revenue_streams.svg)](/images/learning/bmfiddle_icons/revenue_streams.svg)
[![channels](/images/learning/bmfiddle_icons/thumbnails/value_proposition.svg)](/images/learning/bmfiddle_icons/value_proposition.svg)


You can use the sketch tool, but it will not have a transparent
background.



Remember, the idea here is to tune bmfiddle.com into a tool you can use
for the next 3 months at least. Don't get frustrated, don't give up.
Don't think you are over-optimizing at this stage. The bare bones best
version is still probably sticky notes on a white piece of paper with a
team of people. You can make a better version that is fully digital and
auto-backed up and is actually easier to share with people if you put in
the tools up front, and have the disciplined flow in the future. The
next disciplined flow will be:

Log in to bmfiddle.com 
Create the first draft of the canvas.
Upload the imagery resources.

Now for each update:
Take a snapshot first. 
when in doubt, just hit that snapshot button
Move stickies on and off to the stack, or maybe the archive. Never
delete them.

