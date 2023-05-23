title: Geo on the Horizon at Horizon Geo
slug: geo-on-the-horizon-at-horizon-geo
date: 2010-03-21 20:46:38
tags: conference,context,crowdsource,geo,geotagged,home,horizon,location,nottingham,privacy,speaking
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

Last Friday I ventured north to Nottingham, along with [Ed Parsons](https://twitter.com/edparsons/ "https://twitter.com/edparsons/"), [Steven Feldman](https://twitter.com/stevenfeldman/ "https://twitter.com/stevenfeldman/") and [Muki Haklay](https://twitter.com/mhaklay "https://twitter.com/mhaklay") to attend the one day [Supporting the Contextual Footprint](https://www.horizon.ac.uk/news/news-events/39-events/89-supporting-the-contextual-footprint-infrastructure-challenges-theme-day.html "https://www.horizon.ac.uk/news/news-events/39-events/89-supporting-the-contextual-footprint-infrastructure-challenges-theme-day.html") event run by the [Horizon Digital Economy Research](https://www.horizon.ac.uk/ "https://www.horizon.ac.uk/") institute at the [University of Nottingham](https://nottingham.ac.uk/ "https://nottingham.ac.uk/"). Along the way I discovered a manner of tracking my journey that I'd hadn't previously considered, but that's covered in a [previous blog post](/2010/03/20/deliberately-and-unexpectedly-tracking-my-journey/ "/2010/03/20/deliberately-and-unexpectedly-tracking-my-journey/").

The focus of the Horizon event was to discuss the infrastructure needed to support location in its role as a key context and to identify any research theme that came out of the discussions; a classic case of the ill defined and fuzzy interface between the commercial world and that of academia.

<!-- TEASER_END -->

The day was split into three thematic tracks:


* The Location Challenge
	+ What are the challenges specific to the capture and management of location data?
	+ What is the state-of-the-art in the technologies available to store, query and present location data?
	+ How do we understand location in context, especially in real-time, on the move?
* Whose Data Is It Anyway?
	+ What data should be considered “personal”?
	+ Should I “own” data about me, such as where I am, my home electricity usage, my bank transactions?
	+ How can users be enabled and encouraged to manage this data?
	+ What technologies are available to do this?
	+ How, when and by whom should “personal” data be exploited?
	+ What checks and balances should be in place to protect all stakeholders, including both citizens and service innovators?
* Can Crowds Be Authoritative?
	+ Crowd sourcing is a powerful technique for data collection enabled by modern handheld devices, but how far can user-contributed data be trusted?
	+ What are the processes required in order to meld crowd-sourced data with existing, authoritative, datasets?
	+ What are the legal implications of generating, combining and using such user-generated datasets?
	+ For example, what environmental details could citizen sensors collect?
	+ How might this change our understanding of the live state of the world?


[![Take A Little Time With Me](https://farm5.static.flickr.com/4013/4430594002_4c2f7d078b_d.jpg)](https://www.flickr.com/photos/basil_j/4430594002/ "Take A Little Time With Me")
The *location challenge* session was a basic introduction to geo and to location, just to get everyone on the same page. A small wry cheer from myself and Ed was caused by the mention of slippy maps after half an hour of pure GIS but the session was also notable for reminding us that GPS isn't just the domain of the US [NAVSTAR](https://en.wikipedia.org/wiki/NAVSTAR "https://en.wikipedia.org/wiki/NAVSTAR") system, though it's the one we're most familiar with and which is considered pretty much synonymous with GPS (the Wikipedia entry for GPS redirects to the NAVSTAR entry). But there's also the Russian [GLONASS](https://en.wikipedia.org/wiki/GLONASS "https://en.wikipedia.org/wiki/GLONASS"), the Chinese [COMPASS](https://en.wikipedia.org/wiki/Beidou_navigation_system "https://en.wikipedia.org/wiki/Beidou_navigation_system") and the European [Galileo](https://en.wikipedia.org/wiki/Galileo_(satellite_navigation) "https://en.wikipedia.org/wiki/Galileo_(satellite_navigation)") systems chafing at the heels of NAVSTAR and threatening it's hegemony. We also touched on the accuracy of satellite navigation systems, ranging from the fictitious, with Dan Brown asserting that "(GPS) is accurate within 2 feet anywhere in the world", even when in the toilet in the Louvre, to the technically feasible, with accuracy of 1 cm being touted as possible. Though no one in the room was able to articulate precisely what use 1 cm GPS accuracy would be.

The low point of the session was a rambling and tedious sales pitch from Oracle which can be summarised concisely as "there's an explosion of (geographic) data coming, you need to buy our (highly priced) servers in order to cope with it". It's a shame no-one's told Flickr about the need for Oracle servers as they've been making MySQL and commodity Linux servers [cope with an explosion of data](https://code.flickr.com/blog/2010/02/08/using-abusing-and-scaling-mysql-at-flickr/ "https://code.flickr.com/blog/2010/02/08/using-abusing-and-scaling-mysql-at-flickr/") for a while now.

The high point of the session was a (rather hip looking) Doctor who's name escaped me who'd managed to do something that eludes many commercial concerns. They'd managed to put together a prototype, intelligent car pooling and routing service, complete with web, mobile and SMS interfaces, together in just a few weeks. Oh and *it worked as well*; this was not only deeply impressive but illustrated the positive social and community facet of this thing we call location.

[![Data storage - old and new](https://farm3.static.flickr.com/2375/2152798588_724f8a2f1c_d.jpg)](https://www.flickr.com/photos/ian-s/2152798588/ "Data storage - old and new")

An an erstwhile privacy nerd, the session on *whose data is it anyway?* was fascinating, defining and categorising a whole range of what can be considered personal data:
* access data (name, address, phone number)
* direct data (photos)
* intrinsic data (fingerprint, genome)
* state data (location, activities)
* transactional data (finance, journeys, purchases)
* interaction data (things I say and do)
* indirect observation data (energy usage)
* things I create data (emails, texts, documents, photos)
* things I'm given data (emails, texts, documents, photos)
* things I've seen data (documents, tweets, locations)


With all of this data being out there, in a variety of data sinks, both personal, governmental and commercial, the concept of a distributed, durable, scalable and trusted personal data store was floated as a theoretical solution; much emphasis should be placed on the word theoretical by the way. A worthy theoretical concept, the notion *of if you need to know about me, ask my PDS*, is alas one that the majority of the audience who hail from a commercial background, view as interesting but flawed and not viable in the real world.

The high point of the session was a recommendation to read [Paul Ohm's Broken Promises of Privacy](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1450006 "https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1450006"); the low point the need to [Lynne Truss](https://www.lynnetruss.com/pages/content/index.asp?PageID=8 "https://www.lynnetruss.com/pages/content/index.asp?PageID=8") to visit the room unannounced to pounce on the person who thought that "Who's Data is it Anyway?" was acceptable for a title slide.

[![CrowdPee](https://farm3.static.flickr.com/2613/4185729548_83040116ec_d.jpg)](https://www.flickr.com/photos/rustychainsaw/4185729548/ "CrowdPee")

The final *can clouds be authoritative* session started aptly withe a quote from Wikipedia and paired Muki Haklay from University College London against Glen Hart from the Ordnance Survey. Whilst the pairing may have been unintentional, following a strong proponent of the crowd sourced OpenStreetMap with a pointed, if tongue in cheek, talk from the OS made comparisons difficult to avoid. Stephen Feldman's [write up of the day](https://giscussions.blogspot.com/2010/03/few-bhps-on-horizon.html "https://giscussions.blogspot.com/2010/03/few-bhps-on-horizon.html") has more insight on this final session and is well worth a read.

Acronym of the day goes to BHP, which left the audience looking perplexed until it was revealed as a Bloody Hard Problem. Days like this are essential to draw academia away from a pure research perspective and to get representatives of commercial organisations and academia talking on common ground ... that in itself is a BHP which Horizon goes a long way towards solving.
Photo Credits: [basiijonez](https://www.flickr.com/photos/basil_j/4430594002/ "https://www.flickr.com/photos/basil_j/4430594002/"), [ians](https://www.flickr.com/photos/ian-s/2152798588/ "https://www.flickr.com/photos/ian-s/2152798588/") and [Martin Whitmore](https://www.flickr.com/photos/rustychainsaw/4185729548/ "https://www.flickr.com/photos/rustychainsaw/4185729548/") on Flickr.


