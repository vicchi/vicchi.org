title: Of Robots And Teapots; Web Geeks Are Not Without A Sense Of Humour
slug: of-robots-and-teapots-web-geeks-are-not-without-a-sense-of-humour
date: 2012-05-25 14:46:09
tags: asimov,code,geeks,geotagged,http,humour,robots,status,teapot,teddington
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

There's a line from the first Matrix movie, the only really good one out of the trilogy, where Morpheus says earnestly to Neo ... *fate, it seems, is not without a sense of irony*. It's time to add a corollary to this quote, along the lines of *web geeks, it seems, are not without a sense of humour*.

Last year, it was the web geeks who run the web servers for Yelp and Last.fm sticking [Asimov's Three Laws of Robotics](https://en.wikipedia.org/wiki/Three_Laws_of_Robotics "https://en.wikipedia.org/wiki/Three_Laws_of_Robotics") into their [respective site's robots.txt file](/2010/10/18/creative-use-of-robots/ "/2010/10/18/creative-use-of-robots/"). Sadly, it looks like Yelp's robots.txt is now unfunny and businesslike, but Last.fm's subversion of this file is still there.

<!-- TEASER_END -->


```bash
$ curl -X get www.last.fm/robots.txt
User-Agent: *
Disallow: /music?
Disallow: /widgets/radio?

Disallow: /harming/humans
Disallow: /ignoring/human/orders
Disallow: /harm/to/self
```

But it seems like the BBC's web geeks also are not without a sense of humour. Earlier today, I happened across one of the more bizarre HTTP status codes out there on the interwebs. Not your usual `HTTP 200 Success` or `HTTP 404 Not Found`, but `HTTP 418 I'm A Teapot` ...

> 418 I'm a teapot (RFC 2324)
> This code was defined in 1998 as one of the traditional IETF April Fools' jokes, in RFC 2324, Hyper Text Coffee Pot Control Protocol, and is not expected to be implemented by actual HTTP servers. However, known implementations do exist.


[no, really](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes "https://en.wikipedia.org/wiki/List_of_HTTP_status_codes"). Take a look at the [BBC's CBeebies site](https://www.bbc.co.uk/cbeebies/418 "https://www.bbc.co.uk/cbeebies/418") if you don't believe me.

[![](/wp-content/uploads/2012/05/418.jpg "418")](/wp-content/uploads/2012/05/418.jpg "/wp-content/uploads/2012/05/418.jpg")

The page even returns a `HTTP 418` status.

Thanks are due to fellow ex-Yahoo! [David Overton](https://www.facebook.com/david.overton "https://www.facebook.com/david.overton") for pointing this gem out. Honourable second place mention is also due to `HTTP 420 Enhance Your Calm`.

> 420 Enhance Your Calm (Twitter)
> Returned by the Twitter Search and Trends API when the client is being rate limited. Likely a reference to this number's association with marijuana. Other services may wish to implement the 429 Too Many Requests response code instead. The phrase "Enhance Your Calm" is a reference to Demolition Man. In the film, Sylvester Stallone's character John Spartan is a hot-head in a generally more subdued future, and is regularly told to "Enhance your calm" rather than a more common phrase like "calm down".


... web geeks, it seems, are *not* without a sense of humour.


