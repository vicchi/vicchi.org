title: Phi, Lambda and (Slightly Embarassing) Temporality
slug: phi-lambda-and-slightly-embarassing-temporality
date: 2010-03-17 19:56:36
tags: flickr,geotagged,home,latitude,longitude,place,space,stamen,temporality,time
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

Longitude and latitude have been formally used as a geographic coordinate system offset from the Greenwich Meridian since the International Meridian Conference of 1884 in Washington D.C.

As a spatial coordinate system, longitude (abbreviated as φ, or phi) and latitude ( λ, or lambda) work very well in defining a point on the surface of the Earth. But to gain further meaning from a long/lat pair you either need some clever algorithmics or you need to plot the long/lat point on a map which even then will yield information only as good as that which is rendered on the map itself.

[![Astride The World](http://farm1.static.flickr.com/175/445091217_e2c68ec958_d.jpg)](http://www.flickr.com/photos/kaptainkobold/445091217/ "Astride The World")

Which is why I think identifier systems, such as Yahoo's [WOEID](http://developer.yahoo.com/geo/geoplanet/guide/concepts.html#woeids "http://developer.yahoo.com/geo/geoplanet/guide/concepts.html#woeids"), add so much value. A WOEID adds a linked web of rich metadata, describing not only a point with a long/lat centroid, but also reinforces the concept of a place, with neighbouring and hierarchical relationships.

Coordinates describe the *where* of a place, identifiers such as WOEIDs describe the *how* of a place but both conveniently (in a slight embarrassed, foot shuffling short of way) overlook the *when* of a place.

<!-- TEASER_END -->

Former Flickr geo-hacker and current Stamen Design geo-hacker, Aaron Cope, posted a way around [the temporality problem on his blog](http://www.aaronland.info/weblog/2010/02/04/cheap/#spacetime "http://www.aaronland.info/weblog/2010/02/04/cheap/#spacetime") this evening, describing spacetimeid, a web app which encodes and decodes a 64-bit identifier combining x, y and z coordinates.

So far, so timely; a spacetimeid allows us to describe not only a point but also a time. The logical next step to this is to allow the encoding of a WOEID, that includes a long/lat centroid, with a time range. Two immediate use cases spring to mind.

Firstly, this allows us to represent places which have a small temporal range, such as festival or concert venues; this is frequently referred to as [The Burning Man Problem](http://en.wikipedia.org/wiki/Burning_man "http://en.wikipedia.org/wiki/Burning_man"), after the annual festival of the same name. During the duration of the festival Burning Man exists as a concrete place, outside of the festival timescales the site of the festival is empty land.

[![Burning Man 2007](http://farm4.static.flickr.com/3475/3974595767_5f5dfd75f1_d.jpg)](http://www.flickr.com/photos/foxgrrl/3974595767/ "Burning Man 2007")

Secondly, this allows us to represent changes in places over a large temporal range, which can be used to rectify historical maps and show the change in a place over a number of years.

I pinged Aaron a mail on this, saying "*Encode temporal information in range format plus WOEIDs ? ... Thinking a WOEID for Burning Man or similar here*". He replied a few minutes later with "*Yes, that would be easy enough to do if the (x) is the WOEID and the (y) time. I can add that later*". Followed, in the time it's taken me to write this post, with "*Ask and all that ...* [*http://spacetimeid.appspot.com/woe/encode/44418/1268854022*](http://spacetimeid.appspot.com/woe/encode/44418/1268854022 "http://spacetimeid.appspot.com/woe/encode/44418/1268854022")".

Now all we need to do is get this used in the real world and the slightly embarassing problem of temporality will have been solved once and for all. Easy isn't it?



Photo Credits: [Foxgrrl](http://www.flickr.com/photos/foxgrrl/3974595767/ "http://www.flickr.com/photos/foxgrrl/3974595767/") and [Kaptain Kobold](http://www.flickr.com/photos/kaptainkobold/445091217/ "http://www.flickr.com/photos/kaptainkobold/445091217/") on Flickr.


