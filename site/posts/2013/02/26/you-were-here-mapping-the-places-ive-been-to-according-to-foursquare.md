title: You Were Here; Mapping The Places I've Been To According To Foursquare
slug: you-were-here-mapping-the-places-ive-been-to-according-to-foursquare
date: 2013-02-26 09:07:38
tags: checkins,code,foursquare,geotagged,javascript,map,mapgasm,privatesquare,teddington,visualisation
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

Over the weekend I made [another map](https://maps.geotastic.org/checkins/ "https://maps.geotastic.org/checkins/"). While I don't think for one moment this one will be as wildly popular as my [last map](https://maps.geotastic.org/rude/ "https://maps.geotastic.org/rude/") was, this one is just as satisfying and a whole lot more personal.


At 8.01 PM on the 11th. of October 2009 I checked into [Sushi Tomi](https://foursquare.com/v/sushi-tomi/48750fc1f964a5200f511fe3 "https://foursquare.com/v/sushi-tomi/48750fc1f964a5200f511fe3") in Mountain View, California. This was my very first Foursquare check-in. Since then I've checked-in on this particular location based service a further 12,394 times. Each check-in has been at a place I've visited. As this is a location based service, each check-in comes with a longitude and latitude.

This sounded to me like an ideal candidate for a *map*. But how to go about making one?

<!-- TEASER_END -->

[![Checkins - Global](/wp-content/uploads/2013/02/Checkins-Global.jpg)](/wp-content/uploads/2013/02/Checkins-Global.jpg "/wp-content/uploads/2013/02/Checkins-Global.jpg")

I could have written some code to use the Foursquare API, but I've been running an instance of [Aaron Cope](https://aaronland.info/ "https://aaronland.info/")'s [privatesquare](https://github.com/straup/privatesquare "https://github.com/straup/privatesquare") for a couple of years now, which meant every check-in I've ever made, give or take the last 6 hours or so, is sitting comfortably in a MySQL database.

So I wrote some code to go through the database, extract each checkin and make a list of each place I'd checked into, the place's coordinates, the place's name and how many times I'd checked into that place. Armed with this information, I could then spit this out in GeoJSON format, which made making a map no more complicated than some mapping API JavaScript, in this case the Leaflet API. OK. There was some slight complication. I need to do some cleverness to make each checkin a CircleMarker, where the radius of the circle was proportional to the number of check-ins. Thankfully Mike Bostock's [D3](https://d3js.org/ "https://d3js.org/") library does this with ease.

It's not the most classy of visualisations. But I do like that the map shows me the global picture of where I've been over the last 4 or so years. As you zoom into the map, it's fascinating to see the patterns of my movements in areas I seem to go to on a regular basis, such as the San Francisco Bay Area ...

[![Checkins - Bay Area](/wp-content/uploads/2013/02/Checkins-Bay-Area.jpg)](/wp-content/uploads/2013/02/Checkins-Bay-Area.jpg "/wp-content/uploads/2013/02/Checkins-Bay-Area.jpg")

... or Berlin ...

[![Checkins - Berlin](/wp-content/uploads/2013/02/Checkins-Berlin.jpg)](/wp-content/uploads/2013/02/Checkins-Berlin.jpg "/wp-content/uploads/2013/02/Checkins-Berlin.jpg")

... or even Dar Es Salaam ...

[![Checkins - Dar Es Salaam](/wp-content/uploads/2013/02/Checkins-Dar-Es-Salaam.jpg)](/wp-content/uploads/2013/02/Checkins-Dar-Es-Salaam.jpg "/wp-content/uploads/2013/02/Checkins-Dar-Es-Salaam.jpg")

... as well as my journeys around my home country.

[![Checkins - UK](/wp-content/uploads/2013/02/Checkins-UK.jpg)](/wp-content/uploads/2013/02/Checkins-UK.jpg "/wp-content/uploads/2013/02/Checkins-UK.jpg")

But there's still a lot of things that the map doesn't do.

The z-index, or stacking order, of the markers is based on each place's coordinates; ideally this will be adjusted so that the larger markers, those with the most check-ins, stack underneath the smaller ones so they're not obscured. I also want to add the ability to see some form of timeline and add some richer data about each place to the marker's popups.

But for now, it does the job I set out to do and to make life easier, should you wish to do the same, you'll find the source code up on [GitHub](https://github.com/vicchi/maps.geotastic.org/tree/master/checkins "https://github.com/vicchi/maps.geotastic.org/tree/master/checkins").

What next? Well, now that I can download my Twitter history, I think all of my geotagged tweets are suitable candidates for some mapping ...





