title: Mapstraction, Maps and Me
slug: mapstraction-maps-and-me
date: 2011-07-14 20:57:48
tags: api,code,geotagged,git,github,javascript,london,map,maps,mapstraction,ovi,teddington
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

It's been a while since my last blog post; my day job at [Nokia](https://maps.ovi.com/ "https://maps.ovi.com/") has been taking up almost all of my time and what little time has been left has been spent with my family. But in between day job and family time there's evenings spent in a hotel room and hours spent on a plane, mainly between London's Heathrow and Berlin's Tegel airports. It's in these periods of time that a combination of my MacBook Pro, running a combo of Apache/MySQL/PHP with MAMP and TextMate has allowed me to rediscover the pleasure of what I used to do for my day job before [Yahoo!](/2010/05/31/locating-the-next-role-the-yahoo-years/ "/2010/05/31/locating-the-next-role-the-yahoo-years/") and before [Nokia](/2010/06/17/two-weeks-in-of-dog-food-mobile-handsets-and-finnish-doors/ "/2010/06/17/two-weeks-in-of-dog-food-mobile-handsets-and-finnish-doors/") ... and that's to write code.

<!-- TEASER_END -->

As a fully unreconstructed maps nerd, I love the variety and richness of the mapping APIs available on today's internet. One of the best books on how to use these mapping APIs is the "does just what it says on the label" [Map Scripting 101](https://mapscripting.com/book "https://mapscripting.com/book") by Adam DuVander. While the book touches on the power of the APIs from Google, from Yahoo, and from Bing (amongst others) its main focus in on [Mapstraction](https://mapstraction.com/ "https://mapstraction.com/"), the JavaScript mapping abstraction library.

[![Brain Map](https://farm4.static.flickr.com/3225/3145212317_f22be25f94_d.jpg)](https://www.flickr.com/photos/infidelic/3145212317/ "Brain Map")

As the name suggest, Mapstraction abstracts, or wraps, the differences between the variety of approaches that each JavaScript mapping API uses into a single consistent interface. With Mapstraction, the API methods to create a map, to change the zoom level, to centre the map, to add a marker or push pin to the map are the same, regardless of which underlying mapping API you use.

Mapstraction allowed you to use the mapping APIs from Google, Yahoo, Bing, Cloudmade, GeoCommons, Cartocuidad, Yandex and MapQuest. But not Nokia's [Ovi Maps API](https://api.maps.ovi.com/ "https://api.maps.ovi.com/"), which was released in February 2011. This is where my local Apache installation, TextMate and the aforementioned hotel room and flight time comes back into the story. Cue a frantic crash course to reacquaint myself with JavaScript, some trial and error, some swearing and some background reading to convert my slightly outdated knowledge of CVS into how to use git and Mapstraction now supports the Ovi Maps API. No, really. It's on [github](https://github.com/mapstraction "https://github.com/mapstraction") right now.

There's a demo of some of the major features of both Mapstraction and the Ovi Maps API over at [maps.vicchi.org](https://maps.vicchi.org/ "https://maps.vicchi.org/") and, in the spirit of social coding, the source for that is on [github](https://github.com/vicchi/maps-api-demos "https://github.com/vicchi/maps-api-demos") as well.

[![](/wp-content/uploads/2011/07/maps.vicchi.org_-1024x756.jpg "maps.vicchi.org")](https://maps.vicchi.org/mxn-home-and-work.php "maps.vicchi.org")

I'm not suggesting for one moment that if the current geo day job falls through I can happily pick up a replacement role coding JavaScript, or coding anything for that matter, but it's oddly reassuring that I still have the vague ability to continue the profession of coding software that earnt me a living for almost 25 years.


Photo Credits: [Infidelic](https://www.flickr.com/photos/infidelic/3145212317/ "https://www.flickr.com/photos/infidelic/3145212317/") on Flickr.


