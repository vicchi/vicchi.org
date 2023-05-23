title: Of Geocoders, Open Cages, Mapping APIs and Going It Alone
slug: of-geocoders-open-cages-mapping-apis-and-going-it-alone
date: 2014-11-06 16:38:17
tags: doglio,geocoder,geotagged,italy,lokku,opencage,ordnancesurvey,os
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: Case Rondelli, Doglio, Umbria, Italy
geo_lng: 12.30623
geo_lat: 42.80831

It's been a while since I've written <a href="/2013/12/30/farewell-ovi-nokia-and-here-its-time-to-open-the-next-door/">one of these posts</a>, in fact it's been almost a year. A lot has happened since December of 2013, when I wrote "<em>Who knows precisely where 2014 will take me?</em>". To be more precise, this is where 2014 took me ...

Firstly if you've been paying attention, you'll have noticed that my blogging and tweeting frequencies have dropped right off. Put it this way, [someone's](https://twitter.com/twbell "https://twitter.com/twbell") been paying attention.

[![you-tweeted](/wp-content/uploads/2014/11/you-tweeted-1024x375.png)](https://twitter.com/twbell/status/502109396399173632 "https://twitter.com/twbell/status/502109396399173632")

Emerging from the embrace of the large corporate mapping organisation that used to be Ovi Maps, dallied briefly with the name Nokia Maps and ended up calling itself HERE Maps, I found myself in the complete antithesis of a corporate. I joined [Ed](https://twitter.com/freyfogle "https://twitter.com/freyfogle") and Javier at [Lokku](https://lokku.com "https://lokku.com"), in the trendy part of London known as Clerkenwell, with possibly the best job title I've ever had; I was Lokku's *Geotechnologist in Residence*. I've known Ed and Javier for a good number of years and have watched them grow [Nestoria](https://nestoria.com/ "https://nestoria.com/") and reinvigorate and rejuvenate London's [#geomob](https://geomobldn.org/ "https://geomobldn.org/") meetup. I knew this was going to be a very different experience.

On my first day in the Lokku office, Ed thrust a piece of paper into my hand, saying "*here's your email login credentials, the wifi password and how to access the wiki; your induction is now complete*" ... and it was. So what does a resident geotechnologist actually *do*? The first and foremost task was to sort out Lokku's lack of an espresso machine and to run a tech talk, briefing the rest of the team on how to make the hot, caffienated beverage that the geo industry relies on. See? I told you this wasn't going to be your everyday corporate existence.

Armed with a fresh, hot espresso I took a look at the technology that Lokku and Nestoria had put in place. My hunch was that to make Nestoria work well across the countries they served, the Lokku crew had solved one of industry's key puzzles, namely how to geocode address listings well in countries that don't really take the need for unique addresses that seriously. My hunch was good and I came up with a series of recommendations to the Lokku board on what they should do next, this included the concept of what Ed later termed as a *meta-geocoder*.

A meta-geocoder does the same as the geocoders that the larger geo companies have; a single geocoding interface with multiple geocoders hidden behind, each one doing what it does well, be that country specific geocoding, or language specific geocoding or some other speciality. With the help of the incredibly smart Marc Tobias Metten, one of the few people I know who can get a global Nominatim instance up and running, we built what's now become the [OpenCage Geocoder](https://geocoder.opencagedata.com/ "https://geocoder.opencagedata.com/").

[![greenwich](/wp-content/uploads/2014/11/greenwich.jpg)](/wp-content/uploads/2014/11/greenwich.jpg "/wp-content/uploads/2014/11/greenwich.jpg")

When you're in a small organisation you have to roll your sleeves up and be prepared to get your hands dirty. Need a website? You end up writing it yourself. Need code samples and scripting language wrapper? Write them yourself too. Need to launch a product? You end up writing a talk, getting yourself to an applicable conference, in this case State of the Map EU, and launch it yourself.

[![sotm-eu](/wp-content/uploads/2014/11/sotm-eu.jpg)](/wp-content/uploads/2014/11/sotm-eu.jpg "/wp-content/uploads/2014/11/sotm-eu.jpg")

In the six months I spent at Lokku, Ed, myself and MTM brought an entire geocoding API from the roughest of concept notes to something that's up and running and is, to paraphrase Aaron Straup Cope, a real *thing* and it's a thing that I'm very proud of. I also became one of the select group known as the Lokku Alumni, and that meant I got another map to add to the collection.

[![lokku-alumnus](/wp-content/uploads/2014/11/lokku-alumnus.jpg)](/wp-content/uploads/2014/11/lokku-alumnus.jpg "/wp-content/uploads/2014/11/lokku-alumnus.jpg")

My stint at Lokku ended in July of this year and overnight I transformed myself from being a resident geotechnologist to being an uncivil servant and taking on the role of Head of APIs for the oldest mapping agency in the world, the UK's [Ordnance Survey](https://www.ordnancesurvey.co.uk/ "https://www.ordnancesurvey.co.uk/"). In doing so, I also struck out into the murky waters of consulting and, together with Alison, founded [Malstow Geospatial](https://www.malstow.com "https://www.malstow.com"). The story of how *Malstow* got its name is the subject for another blog post entirely.

So for now, I've swapped getting on a plane to Berlin on a weekly basis and taking the train and Tube to Clerkenwell on a daily basis and instead joined the daily diaspora out of London and down the Southampton, where the Ministry of Maps makes its home.

[![occulus](/wp-content/uploads/2014/11/occulus-e1415291673240-768x1024.jpg)](/wp-content/uploads/2014/11/occulus-e1415291673240.jpg "/wp-content/uploads/2014/11/occulus-e1415291673240.jpg")
I've spent the last 4 months working out best how to bring the Ordnance Survey's maps to the internet and the internet to the OS. Much is happening and I've found myself an amazing team of geotechnologists and cartographers. As soon as there's something to show for our endeavours, you'll probably read about it here first.

"*Who knows where 2014 will take me?*" It's been one heck of a ride and a whole lot of fun and hard work combined. Now let's see what happens in 2015 ...





