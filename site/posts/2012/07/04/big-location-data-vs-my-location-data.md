title: Big (Location) Data vs. My (Location) Data
slug: big-location-data-vs-my-location-data
date: 2012-07-04 14:00:35
tags: ago,api,conference,data,download,geotagged,location,london,manchester,ownership,sanfrancisco,speaking,teddington
category: blog
link: 
description: 
type: text
has_math: no
status: published

For a pleasant change, the guts of this talk didn't metamorphose oddly during the writing. Instead, it geolocated. This was originally planned to be my keynote talk at Social-Loco in San Francisco last month. But I wasn't able to make it to the Bay Area as planned for reasons too complex to go into here. Suffice to say, the slide deck languished unloved on my laptops hard drive, taking up 30 odd MB of storage and not really going anywhere.

Then I got an email from Stuart Mitchell at [Geodigital](https://geodigital.biz/contents/ "https://geodigital.biz/contents/") asking me if I'd like to talk at the AGI's Northern Conference and thus, after a brief bit of editing to remove the conspicuous Silicon Valley references, this talk relocated from San Francisco to Manchester. As per usual, the slide deck plus notes are below.

<!-- TEASER_END -->

[scribd id=100297709 key=key-15vmdecagp3xopiyihgt mode=list]


**Slide 2**

So, hello, I’m Gary. I’m a self-confessed map addict, a geo-technologist and a geographer. I’m Director of Places for Nokia’s Location and Commerce group. Prior to Nokia I led Yahoo’s Geotechnologies group in the United Kingdom. I’m a founder of the Location Forum, a co-founder of WhereCamp EU, I sit on the Council for the AGI, the UK’s Association for Geographic Information, I’m the chair of the W3G conference and I’m also a Fellow of the Royal Geographical Society.

**Slide 3**

There are URLs in this talk but this is the only URL in the entirety of this talk you might want to take a note of. Although if you go there right now, it'll 404 on you, later today or tomorrow, this is where this slide deck, my notes and all the links you'll be seeing will appear on my blog.

[https://vtny.org/jT](https://vtny.org/jT "https://vtny.org/jT")
**Slide 4**

One of the things I love about writing a talk for a conference is how the things I hear and the things I read get mentally stored away and then, somehow, they start to draw together to form a semi-coherent narrative around the talk title that I inevitably gave to the conference organisers around 3 months prior. So it is with this talk, which in Sesame Street fashion, has been unknowingly brought to you by ...

**Slide 5**

Kellan Elliott-McCrea, previously at Flickr and Yahoo! and now at Etsy ...

**Slide 6**

Aaron Straup Cope, previously at Flickr and Stamen Design and now doing stuff at the Smithsonian ...

**Slide 7**

... and my children. No, really. This isn't just an excuse to put a photo of my family up on the screen behind me so you can all, hopefully, go "awww".

**Slide 8**

But before I get into anything to do with location data, big data, my data or anything interweb or social network related I want to try and frame the context of my thoughts by talking about communication, or to be more precise, the way in which we communicate. We are, politics and warfare aside, a social species and communicating with each other is something we do a lot of, although the manner in which we communicate has changed a lot.

A lot of our communication is both verbal and non-verbal and relies of face to face, person to person, proximity so that the verbal and non verbal approach comes together to express what we intend to say.

**Slide 9**

Some of our communication is written, the old fashioned way, using pen and paper, although a lot of commentators have called out the "death of the letter". Whether that's true or just good headline making hyperbole remains to be seen, but to be fair, I can't remember the last time I actually sat down and wrote a letter.

**Slide 10**

A lot of our communication is still verbal but via a phone, be that a land line or a mobile. We call and we text. A lot.

**Slide 11**

But be it talking face to face, texting someone or even writing an email, the intended audience is still narrow, person to person, or person to small audience.

But the interwebs have added to this sphere of communications and now we broadcast our thoughts, feelings and experiences, sometimes regardless of whether we think anyone will see this, let alone empathise or communicate back. A lot of this broadcasting has a location context, be it explicit via a geotag or implicit through mentions of a place or some other geographical construct.

**Slide 12**

While we still talk, meet, engage and sometimes broadcast, like I'm doing right now, this human-to-human interaction has been augmented, maybe complimented by electronic communications.

**Slide 13**

We're as likely to post a Tweet on Twitter or a status on Facebook or Google+ or another social network as we are to speak face to face.

**Slide 14**

And because this type of communiqué is electronic, that means it generates data as we go. Today we generate lots of data, big data, on a daily basis. It's probably not unfair to say that there's data being generated in this very auditorium, right now, as I'm saying this.

**Slide 15**

Some of this data is implicit. A by-product of what we're doing. Whether it's our cell phones loosely mapping out where we are, not a privacy invasion I hasten to add, but the simple way in which cellular networks work, but that's a topic for another talk on another day, or our GPS navigation, be it built into our car or our smartphone, providing anonymised traffic data probes to show where freeway congestion is, we don't consciously set out to generate this data. It's a by product of what we're doing.

**Slide 16**

But a lot of this data is very much explicit. We type out a status update on our phone, our tablet, our laptop and we tap or click on the button that says "go" or "submit" or we take a photo, maybe add an image filter or a comment and tap or click the button that says "share" or "upload".

**Slide 17**

By doing this we're explicitly communicating, explicitly broadcasting and sharing with our friend, family, followers and the interwebs in general ... and in doing so, we're playing our part in generating more and more data.

**Slide 18**

And generate it we do. Lots of it. We call it big data, but massive data would be a more accurate definition of it. Whilst our own individual contributions to big data may not be that big, when you put it all together it's part of an ever growing corpus of big data and there's companies that both provide the means for us to broadcast and share this data as well as, hopefully, providing a means of revenue for them to enable them to keep doing this. The amounts that get generated each day is almost too much for us to think about and comprehend. Once a number gets that big, we can't really deal with it. We know it's a big number but what that actually represents is hard for us to get our head around.

**Slide 19**

So let's look at just a small sample of what gets generated on a daily basis from the social big data, communicating, sharing and broadcasting services I tend to use, if not on a daily basis then at least on a weekly basis. I Tweet and update my Facebook status at least once a day, sometimes up to 20 times a day. I check-in to places on Foursquare at least 10 times a day and take and upload photos to Instagram and Facebook around 3 times a week. That's just my contribution, think how many people are doing the same thing to get to the sort of volumes you can see on the slide behind me.

**Slide 20**

But how long will this continue? Remember the people I spoke about right at the start of this talk, some 16 slides back? It's time to bring them into the picture. Firstly, my children, although this applies equally to pretty much all children. Remember when you were a child? The summer vacation was endless. The skies were always blue and the sun was always out (remember, I'm from the UK where Summer and sun do not always go together, in fact it was pouring down with rain as I wrote this at home last week). And just like the summer vacation was endless, so were your parents and the people around you, they were eternal and would always be there. Remember feeling like that? But then the inevitable happened. We grew up and we discovered, often the hard way, that the summer wasn't endless and that almost everything is finite.

**Slide 21**

Social networks and social location networks aren't finite either. They get born, if they're lucky they grow and then at some time or other they ... stop. If it's a social network you don't use then it doesn't really bother us much.

**Slide 22**

But if it's a network you've shared a lot of content through, what happens then? A lot of people, myself included, immediately get into "I want my data back" mode.

**Slide 23**

But is it your data. Of course it is. You made it. You composed that Tweet. You shared that link. You took that photo. You were at that place you check-in at. Of course it's your data.

But there's a point to be made here. You may have created that data, you may own that data, but the copy of that data in that social network is just that. It's a copy. It's not necessarily "your" data and because most of us don't preserve what we send up into the cloud on its way to our social networks, you may have created it, but the copy in the cloud isn't necessarily yours.

**Slide 24**

It's an easy mistake to make. I may be a geo-technologist and many more things besides, but I am not a lawyer, and apart from the lawyers in the room, more of you aren't and most of the people who use social networks aren't lawyers either, unless it's DeferoLaw, which is a social network for the legal profession.

**Slide 25**

We see phrases such as “you retain your rights” …

**Slide 26**

... like "you own the content posted" ...

**Slide 27**

... and "you always own your information" and immediately the subtleties and complexities of data ownership, licensing, copyright and intellectual property are cast aside. We say to ourselves, "it's my data dammit, I own it, I want it".

**Slide 28**

And it's this belief that we really are lawyers in our spare time that makes people think that somehow the data they've shared via a social network is physically theirs, rather than a bit for bit perfect copy that we've licensed to that social network. We forget for a moment that we're using that social network as a cloud based backup, in some cases the only backup, of our creations and we mutter darkly about "holding my data hostage".

**Slide 29**

The blunt, and often harsh reality, is the age old adage that "you get what you pay for". If you pay, you're probably a customer. If you're using something for "free" (and I say free in very large italics and inverted commas here), then you're probably, unknowingly or unwittingly, the product. Harsh. But fair. It's our content that the social networks monetize and that allows them to keep their servers and disk storage up and running. You might have seen that previous slide with the Tech Crunch post and be thinking "ah, but Flickr Pro is chargeable and if my subscription lapses I can't get my photos back". That's actually not really true, if not particularly simple, but bear with me for a few more slides.

**Slide 30**

Now let's forget "big data" for a moment and think about "your data" instead. Actually, let's think about "my data" for a moment. As of last week, my social media footprint on Twitter, Foursquare, Instagram and Flickr looked something like this. Facebook's numbers would be up there too, but I'll get to that in a moment.

Now in the grand scheme of things, in the massive numbers thrown about around about "big data" this is but a drop in the ocean. But ...

**Slide 31**

I created these check-ins, status updates, tweets and photos. They're important to me. Very important to me.

**Slide 32**

And as Aaron Cope pointed our earlier this year, my small, insignificant contribution to big data is part of my own, very subjective, very personal, history.

**Slide 33**

As I may have mentioned before, I'm a geo-technologist and a high percentage of my explicit big data contribution has a geo or location component to it. I'd like to map our where I checked-in, I'd like to see where I was when I Tweeted or what photos I took at a particular location. Some of this "mappyness" already exists in some of the big data stores where my contributions live, but not all of it, it's far too niche and personal for that. But it's still important to me.

**Slide 34**

Remember, in 99% of the social networks I use, I'm not the customer, I'm contributing to the product. But how do my regularly used social networks fare here. Regardless of whether I own the data I put up there, how easy is it to get a copy of?

**Slide 35**

Firstly, what about a one click solution? Can I go to a particular page on the web and click the big button which says "give me a copy of my data".

**Slide 36**

Facebook is the only one of my 5 social networks that does this. Well, it almost does this. At least I'm sure I used to be able to do this.

**Slide 37**

I can still request a download of my information. But it now only seems to give me my status updates since I enabled Timeline on my account, though I can still get all of my photos and messages since 2008. Rather than say that this doesn't work, I'll just file this under "needs future investigation" and move on.

**Slide 38**

Sometimes this lack of a one button download of contributed data is a deliberate decision on the part of a given social network. Sometimes, it's a hope that with an API, some enterprising developer will do this, but most of the time, that doesn't always happen.

**Slide 39**

So talking of APIs, surely the remaining social networks will have an API and let me knock up some code to get a copy of my data contributions. Surely?

**Slide 40**

Not all social networks do. An API tends to come after a social network's launch, if it comes at all, and often it doesn't let me do all that I want to do.

**Slide 41**

Thankfully, all the networks I used, with the exception of Twitter not only provide an API, but let me use that API to get my data. All of my data.

**Slide 42**

This is a good thing and meets the requirements for an API to meet what Kellan Elliot McCrea calls "minimal competence". He went on to say

"The ability to get out the data you put in is the bare minimum. All of it, at high fidelity, in a reasonable amount of time.

The bare minimum that you should be building, bare minimum that you should be using, and absolutely the bare minimum you should be looking for in tools you allow and encourage people who aren’t builders to use."

**Slide 43**

Kellan was behind Flickr's API and his sentiments are, to my mind, admirable.

**Slide 44**

Sadly, Twitter doesn't let me do this and fails the minimal competence test miserably. Deep in their API documentation I found the justification for this as being essential to ensure Twitter's stability and performance and leave it as an exercise to you the audience to work out what I think of this excuse.

**Slide 45**

The sad truth here is that when it comes to our own individual online data history, there's not always a willingness to make it easy for us to get copies of our history, if it's even on the radar at all.

**Slide 46**

But if we can't always get our data history back, maybe the solution is to make an archive of it before it goes in or keep that archive up to date as you go ... a personal digital archive or PDA (and not to be confused with personal electronic organisers, or PDAs, such as the Palm Pilot).

**Slide 47**

Thanks to web APIs and another social network, admittedly one for people who know how to code, a lot of this is already possible and the scope, range and functionality is growing by the day. The irony that I can build my own personal digital archive out of code found on another social network, which itself is built around a source code archival system is not lost on me either.

**Slide 48**

So, firstly, there's my own Instagram (and no, I'm not going to share the URL of where this lives I'm afraid. The idea here is that this is a personal archive, not a clone of a social network).

**Slide 49**

My own Instagram is called parallel-ogram. It's on GitHub; you can download it, configure it, run it. For free.

[https://vtny.org/jQ](https://vtny.org/jQ "https://vtny.org/jQ")
**Slide 50**

Parallel-ogram works as well on my phone as it does on my laptop, showing me exactly what I've uploaded to Instagram. Indeed, it goes one step further than Instagram as currently there's no way to see what you've uploaded other than through their mobile app. Parallel-ogram doesn't allow me to take photos or upload them, at least not yet, but it does allow me to go back to the day I first uploaded a photo, grabs copies for me and twice a day it uses the Instagram API to see what I may have uploaded and quietly grabs a copy and stashes it away for me.

**Slide 53**

There's also my own archive of Foursquare ...

**Slide 54**

It's called privatesquare and it's also on GitHub

[https://vtny.org/jR](https://vtny.org/jR "https://vtny.org/jR")
**Slide 55**

Like parallel-ogram, privatesquare quietly uses the Foursquare API to go back to my first check-in and twice a day quietly synchs my check-ins for me. I can go back and look at them, see maps of them and browse my check-in history. Unlike parallel-ogram, privatesquare also allows me to check-in, even if I don't want to share this with Foursquare. In short it allows me to use it both as an archive and also as a check-in tool, and if I want to use Foursquare's official mobile app, I can do that, safe and secure in the knowledge that privatesquare will keep itself up to date.

**Slide 61**

I take a lot of photos. Some of them go into Instagram. All of them go into Flickr. But I can archive Flickr as well.

**Slide 62**

It's called parallel-flickr, it also lives on GitHub and it's also filed under "something I really must install, configure and get running when I have some spare time".

[https://vtny.org/jS](https://vtny.org/jS "https://vtny.org/jS")
**Slide 63**

So I have my own archives of Instagram, Flickr and Foursquare. I sort of have my own archive of Facebook. But what about my Tweets?

**Slide 64**

Well until Twitter decides that their site is stable enough to let me grab my Tweets through their archive, the next best solution is to archive by another means. I've put the RSS feed to my Tweet-stream into Google Reader, which helpfully never throws anything away. I did this a long time ago and I have almost all, but 100% all of my Tweets. Now all I need to do is write some code to read them from Google Reader and then get the Tweet data from Twitter, which then do allow via their API. Sadly, this is also filed under "something I must do when I have the time". It's not perfect, but then again, none of what I've discussed is, but it's a start and that's good enough for the time being.

**Slide 65**

Finally, you might have noticed the links in my slides look sort of like bitly links, only on the vtny.org domain. That's because I've been archiving my short links for a few years now

**Slide 66**

Using my own short URL archive and my own, self hosted, URL shortener. I just thought I'd mention that.

**Slide 67**

So, my big data contribution, my personal online history, is important to me. Yours might be important to you too. We're often told that we can't have our cake and eat it, but with the advent of the personal digital archive, maybe we can thanks to the enterprising people who create APIs in the first place and those who not only use these APIs but also put their code up for all the world to use, free of charge. Your online history may not be that important in the grand scheme of things, but it's your online history, it's personal, you made it. When social networks go the place where software goes to die, you might just want to preserve that personal history before the servers get powered off forever. Maybe the geeks will inherit the Earth after all.

**Slide 68**

Thank you for listening.



