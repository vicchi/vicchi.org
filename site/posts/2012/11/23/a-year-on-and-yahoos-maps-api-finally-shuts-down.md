title: A Year On And Yahoo's Maps API Finally Shuts Down
slug: a-year-on-and-yahoos-maps-api-finally-shuts-down
date: 2012-11-23 11:57:53
tags: api,deadpool,geotagged,maps,teddington,yahoo
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

Nothing on the interwebs is forever. Services start up and either become successful, get acquired or shut down. If they shut down they usually end up in TechCrunch's [deadpool](http://techcrunch.com/tags/deadpool/ "http://techcrunch.com/tags/deadpool/"). The same applies for APIs and when they finally go offline, they usually end up in the Programmable Web [deadpool](http://www.programmableweb.com/apitag/deadpool "http://www.programmableweb.com/apitag/deadpool").

[![YDN Maps Shutdown](/wp-content/uploads/2011/09/YDN-Maps-Shutdown.jpg)](/wp-content/uploads/2011/09/YDN-Maps.jpg "YDN Maps Shutdown")

At around 1.30 PM London time yesterday, the Yahoo! Maps API got [added to the Programmable Web deadpool for good](http://www.programmableweb.com/api/yahoo-maps "http://www.programmableweb.com/api/yahoo-maps"). Despite the announcement [I wrote about last year](/2011/09/05/farewell-yahoo-maps-api-hello-nokia-maps-api/ "/2011/09/05/farewell-yahoo-maps-api-hello-nokia-maps-api/") that it was being shutdown on September 13, 2011, up until yesterday the API was very much alive and well and still serving up map tiles, markers and polylines via JavaScript.

<!-- TEASER_END -->

Yesterday I was running some tests on the latest pre-release version of [Mapstraction](http://mapstraction.com "http://mapstraction.com"), which still supported the Yahoo! Maps API and they were running without error all morning. Then they *stopped*. The API just wasn't there anymore.

`$ wget http://api.maps.yahoo.com/ajaxymap?v=3.8&appid=(redacted)
Resolving api.maps.yahoo.com... 98.139.25.243
Connecting to api.maps.yahoo.com|98.139.25.243|:80... connected.
HTTP request sent, awaiting response... 503 Service Unavailable`

A quick look at the API's home on the web at [developer.yahoo.com/maps/ajax/](http://developer.yahoo.com/maps/ajax/ "http://developer.yahoo.com/maps/ajax/") shows an update to the previous shutting down message, with developers now being redirected to [developer.here.net](http://developer.here.net "http://developer.here.net"), the home of Nokia's new Here Maps API.

[![](/wp-content/uploads/2012/11/Yahoo-Maps.jpg "Yahoo! Maps")](/wp-content/uploads/2012/11/Yahoo-Maps.jpg "/wp-content/uploads/2012/11/Yahoo-Maps.jpg")

So whilst the demise of the Yahoo! Maps API in September of last year proved to be somewhat exaggerated, the plug has now been well and truly pulled.

I'll always have a soft spot for the Yahoo! API; it was the first mapping API I really cut my teeth on and while things change on the interwebs on a daily basis I can't help but feel sadly nostalgic.

This does mean that the next release of Mapstraction will no longer support the Yahoo! Maps API, though it will support Nokia Maps and Here Maps. My signed copy of Charles Freedman's Yahoo! Maps Mashups will also continue to remain on my office bookshelf as a memento.

[![](/wp-content/uploads/2012/11/IMG_0655-e1353671759245-764x1024.jpg "IMG_0655")](/wp-content/uploads/2012/11/IMG_0655.jpg "/wp-content/uploads/2012/11/IMG_0655.jpg")




