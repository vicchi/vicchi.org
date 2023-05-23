title: Have You Noticed That noticin.gs Have Noticed WOEIDs? 
slug: have-you-noticed-that-noticin-gs-have-noticed-woeids
date: 2009-11-11 13:04:40
tags: geo,noticings,twitter,woeid,yahoo
category: blog
link: 
description: 
type: text
has_math: no
status: published

While everyone, well almost everyone, was fast asleep in London, Twitter quietly dropped a bomb-shell into their [API announcements mailing list](https://groups.google.com/group/twitter-api-announce/browse_thread/thread/f6608c09902976c6?hl=en "https://groups.google.com/group/twitter-api-announce/browse_thread/thread/f6608c09902976c6?hl=en"). Their new Trends API will help the service's users answer the perennial question "*what's going on where am I*".


So far, so geo but Twitter has noticed what I've been saying in my t[alks and accompanying decks](https://www.slideshare.net/vicchi/presentations "https://www.slideshare.net/vicchi/presentations") for the last two years or so.
"*We're using Yahoo!'s Where on Earth IDs (WOEIDs) to name each location that we have information for -- we're doing so because those IDs give not only language-agnostic, but also permanent, stable, and unique identifiers for geographic locations.  For example, San Francisco has a permanent and unique WOEID of 2487956, London has 44418, and the Earth has WOEID 1.*"

[![](https://posterous.com/getfile/files.posterous.com/vicchi/AdBLDaooG0oXbu29Q69wkZLXjoflBsdlUESiOn3W2aowmgSkX247JCwkyU1j/twitter.jpg.scaled.500.jpg)](https://posterous.com/getfile/files.posterous.com/vicchi/9PGL7Biv2nozcilbxjk2FDOb5UGX5W8x5WU7bB52CEApemqMkBDheiaclvej/twitter.jpg "https://posterous.com/getfile/files.posterous.com/vicchi/9PGL7Biv2nozcilbxjk2FDOb5UGX5W8x5WU7bB52CEApemqMkBDheiaclvej/twitter.jpg")

<!-- TEASER_END -->

Whilst there have been other uses of WOEIDs in the wild, including [Alex Housley's Total Hotspots](https://www.ygeoblog.com/2009/05/geoplanet-and-total-hotspots/ "https://www.ygeoblog.com/2009/05/geoplanet-and-total-hotspots/"), Twitter picking on WOEIDs rather than another of the competing geo-identifiers is a massive credibility boost for the WOEID as a geographic standard for identifying and describing place.
Using WOEIDs to geotag your content, be it Twitter status messages, blog posts or photos, automagically gives you access to an ever increasing range of data and web services that understand WOEIDs as well as those that still only understand longitude and latitude. Long/lat coordinates are an attribute of WOEIDs in case you were wondering. Proof of this is visible in the elegant and oddly addictive game of [Noticings](https://noticin.gs/ "https://noticin.gs/").
![](https://posterous.com/getfile/files.posterous.com/vicchi/4KlxEoaePbJFAtaS7TEe5AFNZRHGbZRxUNqAIDfElOe4ZCaXHANyoXYjSPO0/noticings-type-300px.png)
Noticings is "a game of noticing things about you" jointly created by [Tom Taylor](https://tomtaylor.co.uk/ "https://tomtaylor.co.uk/"). Tom was responsible for [Boundaries](https://boundaries.tomtaylor.co.uk/ "https://boundaries.tomtaylor.co.uk/"), the amazing visualisation of [Aaron Cope's](https://www.aaronland.info/ "https://www.aaronland.info/") [Flickr Alpha shapes](https://code.flickr.com/blog/2008/10/30/the-shape-of-alpha/ "https://code.flickr.com/blog/2008/10/30/the-shape-of-alpha/") which allows geographies, such neighbourhoods, for which no formal definition exists, to be represented and viewed.
Basically you tag [Flickr](https://www.flickr.com/ "https://www.flickr.com/") photos with the "*noticings*" tag and the photo's location, either from an onboard GPS or on Flickr and then you score points for your photo of something you noticed. Which doesn't do it justice. The [rules](https://noticin.gs/rules "https://noticin.gs/rules") are in a constant state of flux but all to the better making it a [Mornington Crescent](https://en.wikipedia.org/wiki/Mornington_Crescent_(game) "https://en.wikipedia.org/wiki/Mornington_Crescent_(game)") for geotagged photos.
Using WOEIDs as a stable and consistent geoidentifier is the glue that allows such a super-web-mash-up to be created. Flickr uses WOEIDs as a geotagging mechanism, either from the EXIF data embedded in a photo or by dragging and dropping the photo on a Map; these WOEIDs are then exposed via the [Flickr API](https://www.flickr.com/services/api/ "https://www.flickr.com/services/api/"). The same Flickr API can be used to look for photos meeting certain criteria, such as the noticings tag and to discover photos taken in the same location, a fundamental part of Noticings. As Tom puts it ...


"*(WOEIDs and GeoPlanet) gives us the opportunity to use colloquial geography rather than bounding boxes and radial searches and the like. I banged on about this in my talk at the AGI conference recently. I am such a geography bore. Anyway, we couldn’t have built Noticings without it.*"

For those who like the technical gory details, Tom's put up an [excellent blog post](https://scraplab.net/2009/11/10/using-geoplanet-data-in-ruby-on-rails/ "https://scraplab.net/2009/11/10/using-geoplanet-data-in-ruby-on-rails/") to explain it all.

But it doesn't stop at photos and Flickr, once you have a WOEID you can pass it to any of the ever growing number of web APIs that know how to handle WOEIDs, Yahoo's [GeoPlanet, Placemaker, Fire Eagle, YQL](https://developer.yahoo.com/everything.html "https://developer.yahoo.com/everything.html") as well as services that speak long/lat. That's a lot of services, and the number's growing. Plus you get access to the horizontal and vertical relationships, parents, children and neighbours that a WOEID has as well as more obtuse colloquial geographies, all in multiple languages.

All of which is somewhat apt as I'm writing this in Munich at the back of the Telematics 2009 conference. While Munich is fine for the English speaking world, it's München in Germany and Monaco di Baviera to the Italians. But it may also be spelt as Muenchen and Munchen if special characters or accents aren't used. All of these names are simply multiple versions of the same place, and so are mapped to a single WOEID, 676757.
Now go and notice something.


[Posted via email](https://posterous.com "https://posterous.com") from [Gary's Posterous](https://vicchi.posterous.com/have-you-noticed-that-noticings-have-noticed "https://vicchi.posterous.com/have-you-noticed-that-noticings-have-noticed")



