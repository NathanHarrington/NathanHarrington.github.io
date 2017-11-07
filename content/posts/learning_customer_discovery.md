Title: Customer Discovery: Interviews
Date:  2017-10-25
Category: articles
Tags: business model canvas


Customer discovery: Interviewing with excellence and artistry


**Research of known effective materials:**

Steve Blank [The tactics of Customer
Discovery](https://www.slideshare.net/sblank/customer-discovery-23251533)
Login to slideshare/linkedin then download as .docx for offline use
Pages 12-17

Startup Weekend [Conducting Customer
Interviews](https://www.youtube.com/watch?v=V3syNbgSkwE)

Customer Discovery emails: [Kevin Dewalt's Blog](http://kevindewalt.com/2010/01/12/the-magic-word-in-customer-development-emails/)

[Cold connecting through linkedin](https://campuspress.yale.edu/cnspy/2016/03/02/how-to-cold-connect-on-linkedin/) from yale.edu



-----------
#### Incorporation:

**Card deck 1 of 2 Develop an interview Plan**
```
Abstract assumptions
Generate a list of questions based on your customer segment
assumptions.
Abstract your questions to disguise what you would otherwise ask
directly.
Don't ask questions in a manner that can influence a customer's
response.

Industry Research
Become an expert.
Search for industry report, establish Google alerts, read scholarly
articles, etc.
It's not hard to know more than the person across from you about
generalized industry trends.

Company Research
Read the companies website.

Person Research
Read their linkedin profile
From the companies website, read their biography.

Starter Questions
Build rapport by mentioning something you have discovered from the
company website or the personal research.

Conversation Prompts
If the conversation stalls, fall back to:
yeah, but why did (the last thing they said)
that's interesting, but how (the last thing they said)

Keep communication open
Develop a reference story and write a highly professional email getting
right to the ASK (which is an interview)

Sample Interview Questions
Can you tell me a story about that?
And then what happened?
Why/how did you do that?

What did you love/hate  about that?
If you could have a magic wand, what would it be like?
Can you tell me about the experience when ...

What are the best/worts parts about ...
Can you help me understand more about ...

Practice 
Rehearse the opening approach. The start of the interview, the
conversation prompts, and the end ask.

```
[![Front of Card
Deck](/images/learning/thumbnails/learning_interview_planning_card_deck_front.jpg)](/images/learning/learning_interview_planning_card_deck_front.jpg)
[![Back of Card
Deck](/images/learning/thumbnails/learning_interview_planning_card_deck_back.jpg)](/images/learning/learning_interview_planning_card_deck_back.jpg)

--------------------------------------------------

**Card deck 2 of 2 Conducting Interviews**
```

Customer discovery is an art
An intuitive process that relies on your ability to recognize
common themes expressed by others. 

Honesty
You have to posses the self control, objectivity and realism to be
honest about whether your value proposition can meet their needs or fix
their problems.

Genuine interest
Demonstrate that you are authentically trying to deliver a solution
that will eliminate "pains" or create "gains" for the customer. 

Actually talking with customers
The interviews are for gaining empathy and surfacing insight.
Ask questions to seek understanding, not to sell an idea.

Listen
Forget about yourself. 
Be completely optimisitic and open to listening to the needs of your
customers.

Seek Stories
Find in-depth stories about a users experiences that touch their
emotions.

Ask "Why" and "How"
As you are listening to stories and hear them express a point, always
dig deeper and ask why. Ask simple, penetrating inquiries to get them to
to describe a deeper need which they may not have understood initially.

Immersion - There is simply no better way to gain empathy for a problem
a customer experiences than actually living through their experience.

Observation - Ask them to physically demonstrate how they are currently
solving a problem. Have them draw the process flow of how they are
currently performing a specific job.


Customer doorways
Bold statements
Inconsistency between what they say and do
Sudden, animated gestures
Silence

Go through the customer doorway and probe further by asking how and why.



Known market 
Problem Presentation
Describe your assumed list of problems, pause and ask the customers what
they think the problems are. Where you are missing any problems.

Unknown market 
Seek stories
People don't always understand their own problem.
Find specific stories about their day to day experiences.

A single message left behind:
Leave them with the feeling that you are genuinely interested in helping
solve their pains and give them gains. 
It doesn't matter if they never see the prototype as long as they feel
that you are trying to help.

```
[![Front of Card
Deck](/images/learning/thumbnails/learning_interview_conducting_card_deck_front.jpg)](/images/learning/learning_interview_conducting_card_deck_front.jpg)
[![Back of Card
Deck](/images/learning/thumbnails/learning_interview_conducting_card_deck_back.jpg)](/images/learning/learning_interview_conducting_card_deck_back.jpg)

--------------------------------------------------



-------------------------------------------------------------------------
## Execution:

Here's a typical workflow:

```
search for "job role <place, technology, company>"

Process each link on each results page.

At the end of the page, count the number of new, valid contacts. If at
least 3, continue to next page, otherwise stop.

Process each link:
If the domain is already in the contact list == stop
If the domain is already in the stop list == stop

In the instructions below stop means put the domain in the stop list and
then close the page and go back to the google search page.

Open the web page link
If does not load in 10 seconds or has a security warning == stop
Do they actually perform <role>?  No == stop
Do they actually work in <place>? No == stop
Are they employed by <company>?   No == stop

Find email address for that person.
    Kick off 'find emails' harvester script
    While that is processing, do the manual search of the persons
        history.

Write a short comment about work they have done - this is the
personalization step to show that you have done research and start the
process of building rapport.

Get the email from the harvester, if none available, go back to the
website and look for contact page. If not email on contact page, look at
home page, then about page. Then instagram, twitter page - do not look
at facebook or pinterest

Send email with the subject:
    "<short comment subject> from your blog"

Paste the form phone call request

Add email to contact list

Go to next link.
```

To make this easier, use whois records and [theHarvester](https://github.com/laramies/theHarvester) for finding emails:

```
#!/bin/bash
#
# Run a basic whois and a theHarvester and only print emails
#
# Usage: find_emails.sh https://yourdomain.com/deep/subtree.html
#
# Output: email addresses from whois and the harvester
#
# Expects the user to setup a conda environment with:
# conda(2) create --name harvester
# source activate harvester
# pip install requests
#

export PATH=/home/nharrington/miniconda2/bin:$PATH
source activate harvester

if [[ $# -eq 0 ]] ; then
    echo 'You must specify a domain'
    exit 0
fi

# To speed this up, comment out the command line above, and just copy
# the domain to the system clipboard, then run:
#DOMAIN=`xclip -o`

# Extremely rough and ready strip of domain details. This is so you can
# cut and paste a typical url with any file tree suffix and get just the
# bare domain - only for .com's
DOMAIN="${DOMAIN//http:\/\//}"
DOMAIN="${DOMAIN//https:\/\//}"
DOMAIN="${DOMAIN//www./}"
DOMAIN="${DOMAIN//.com\*/.com}"  # Changed * to \* for markup reasons

echo "Searching $DOMAIN"

# Filter out knowns
whois $DOMAIN \
    | grep @ \
    | grep -vi abuse \
    | grep -vi privacy \
    | grep -vi domainsbyproxy.com \
    | grep -vi domaindiscreet.com \
    | grep -vi whoisguard.com

python -u theHarvester.py -d $DOMAIN -b all -l 100 \
    | grep @ \
    | grep -v cmartorella@edge-security.com
```


## More excellent resources that were consulted to generate the scripts for
cold emailing and calling customers:


[Getting Customer Interviews with Cold Emails - Customer Development Labs](http://customerdevlabs.com/2014/02/18/how-to-send-cold-emails/)


## Setup your email for effective communication
```
Add a short signature with a job title and a company logo.
```

### Craft an introductory email:

```
Hi <Persons name> - <Short comment about their work you have done the
research on>. 

I'm the <job title> at <employer>, a <company description> trying to
improve <job that the customer performs>.

I'm not looking to sell anything, but since you have so much expertise
with <specific job function>, I'd love to get your advice on our product
so we don't build the wrong thing.

If you're available, I'd love to chat for just 20 minutes - <two-day
option> morning?

Thanks for any help, <name>
```


### If they want more info about the company

```
Thanks for your willingness to help! I'm <job title> at
<company website>, where we are trying to solve a problem we think
all <customer job title> may have. We're using the Customer Discovery
process to work to truly understand our customers, the jobs they perform
and their real pains to make sure we don't build the wrong thing.

The questions are about talking with you about what your job is, how you
go about it on a day to day basis, and what your routines are.
```


### If they want more info about company and product
```
I'm <job title> at <company website>, where we are using the
Customer Discovery process to work to truly understand our customers,
the jobs they perform and their real pains to make sure we don't build
the wrong thing. The questions are about talking with you about what
your job is, how you go about it on a day to day basis, and what your
routines are.

It's a software product designed to <basic vague product description>
Yes, I'm being specifically vague about the product specifications -
this is not be be deceptive, but rather to make sure we understand you -
our customer - so we don't build the wrong thing.

I'll be glad to send you the full product description if you like, but
we like to hold off on that until we discover if we truly understand
your needs. If that sounds ok, I'd love to talk with you and get your
advice.

The <customer community> has been incredibly supportive of our research
so far, and I realize that this may be your <busiest time>, so I
just want to say thanks again for considering helping us!
```


### Schedule the interview 

If the response is 'yes that time will work' or something similar. Pick
the closest 1 hour window (starting at :15 after), and create a calendar
entry of the type:

```
Call with <persons full name> at <time> who <interesting note from their
linkedin profile or their 'about' section on their webpage>
```

Then when the call is about to happen, review their name and the
interesting note to mention during the opening approach to build
rapport.


### Follow up email after connection on linkedin

They accepted the connection request on linkedin, and did not respond
with a custom message.  Find their email address from the linkedin
profile, and send:

```
Hi <persons name> - I'm working with <company name> on building a
<product idea> and was hoping to get your advice to make sure we
understand the problem. Could I ask you a few questions and get your
feedback over a fifteen minute phone call? Maybe <two-day option> morning
of next week? Thanks! <name>
```


### Follow up email after interview

Send this immediately after the interview

```
<Person's name> - Thanks for speaking with me today! I really value your
advice and insight. If you can think of anyone else who might want to
talk about <general problem descriptions covered in the meeting>,
please send them my info:

I'm <name> with <company website> and we're trying to
solve a problem with think all <customer job title> may have. I'm not
selling anything, but would love to get your advice to make sure we
don't build the wrong thing.

Thanks for any help!
<your email address>
```


### Building a reference story email

During a customer discovery interview, they mention that you should talk
to person X. After the interview, you send the follow up email above.

Wait.

After the referring person says 'I will forward your info' or 'I will
let them know you will be contacting them', send the email below:


```
########## Reference contact email ##############
To: Don Jones
cc: Joe Smith
Subject: Referral from Joe Smith
Hi Don, Joe may have mentioned that I would drop you a quick note
to ask for your advice.

I'm exploring an <type of> idea around making it easier for <job role>
to <perform aspect of their job role>. Joe suggested that
I talk to you given your expertise with <same or other job role>.

Do you have time for a quick call next week? I'm not selling anything,
just looking for advice.

Joe,

Thanks for your time. You can't imagine how helpful your advice was to
me and hopefully you'll let me return the favor.

Thanks in advance, Name
```


Left off at compiling notes from what you learned

Summarize stats based on using this process above:
