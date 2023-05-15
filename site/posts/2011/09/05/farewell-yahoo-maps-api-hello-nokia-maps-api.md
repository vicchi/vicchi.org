title: Farewell Yahoo! Maps API, Hello Nokia Maps API 
slug: farewell-yahoo-maps-api-hello-nokia-maps-api
date: 2011-09-05 06:33:55
tags: api,geotagged,heathrow,javascript,london,maps,nokia,yahoo
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: the British Airways Galleries Lounge at London Heathrow Terminal 5
geo_lng: -0.4882
geo_lat: 51.4702

Yahoo's JavaScript and AJAX API was the first mapping API I ever used and it now seems hard to remember when Yahoo's API offerings were the dominant player, always iterating and innovating. The Yahoo! API set formed and continued to underpin the majority of my online presence. When I wrote about [leaving Yahoo! and joining Nokia](/2010/05/31/locating-the-next-role-the-yahoo-years/ "/2010/05/31/locating-the-next-role-the-yahoo-years/") in May of 2010 I said ...



> So whilst I’m going to Nokia, I’ll continue to use my core set of Yahoo! products, tools and APIs … YQL, Placemaker, GeoPlanet, WOEIDs, YUI, Flickr and Delicious. Not because I used to work for Yahoo! but because they’re superb products.


... and I meant every word of it. The Yahoo! APIs were stable, powerful and let create web experiences quickly and easily. But now a year later a lot has changed. I still use [Flickr](http://www.flickr.com/photos/vicchi/ "http://www.flickr.com/photos/vicchi/") on a pretty much daily basis, but [Delicious](http://www.delicious.com/ "http://www.delicious.com/") is no longer a Yahoo! property and I transitioned my [other web presence](http://www.garygale.com/ "http://www.garygale.com/") from using [YQL](http://developer.yahoo.com/yql/ "http://developer.yahoo.com/yql/") for RSS feed aggregation to use [SimplePie](http://simplepie.org/ "http://simplepie.org/") as YQL was frequently down or just not working. The original core set of Yahoo! APIs I use in anger is now just down to Flickr and [YUI](http://developer.yahoo.com/yui/ "http://developer.yahoo.com/yui/").

<!-- TEASER_END -->

[![YDN Maps Shutdown](/wp-content/uploads/2011/09/YDN-Maps-Shutdown.jpg)](/wp-content/uploads/2011/09/YDN-Maps.jpg "YDN Maps Shutdown")

Sadly, this trend is continuing and on September 13th, to badly mangle the quote from Cypher in The Matrix, "*buckle up your seatbelts Map scripters, 'cause the Yahoo! Maps API is going bye-bye*" and writing ...

```
var map = new YMap(document.getElementById('map'));
```

... will be a thing of the past. Adam Duvander, author of the excellent [Map Scripting 101](http://www.amazon.co.uk/Map-Scripting-101-Building-Interactive/dp/1593272715/ "http://www.amazon.co.uk/Map-Scripting-101-Building-Interactive/dp/1593272715/"), has written a [eulogy for the Yahoo! Maps API](http://blog.programmableweb.com/2011/09/02/yahoo-maps-api-so-long-old-friend/ "http://blog.programmableweb.com/2011/09/02/yahoo-maps-api-so-long-old-friend/") over on Programmable Web, including some pithy quotes from old friend [Tyler Bell](https://twitter.com/#!/twbell "https://twitter.com/#!/twbell"), whom I worked with when I was part of the Yahoo! Geo Technologies group, which sadly [echo my comments](/2011/06/04/the-opposite-of-geolocation-is-relocation/ "/2011/06/04/the-opposite-of-geolocation-is-relocation/") on the overall demise of Geo at the company.

Thankfully all is not doom and gloom in the world of mapping APIs and [Nokia's Maps API](http://api.maps.ovi.com/ "http://api.maps.ovi.com/") is firmly in the spotlight to take up the slack left by the addition of the Yahoo! Maps API to the [deadpool](http://www.programmableweb.com/apitag/deadpool "http://www.programmableweb.com/apitag/deadpool"). And if you're using [Mapstraction](http://mapstraction.com/ "http://mapstraction.com/") with the Yahoo! Maps API, it should be relatively trivial to swap your code over to the Nokia API as Mapstraction now supports Nokia Maps. [I may have had a hand in that](/2011/07/14/mapstraction-maps-and-me/ "/2011/07/14/mapstraction-maps-and-me/").


