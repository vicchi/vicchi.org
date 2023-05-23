title: As Location Goes Mainstream, So Does The Potential For Abuse
slug: as-location-goes-mainstream-so-does-the-potential-for-abuse
date: 2010-10-12 15:50:07
tags: abuse,agps,berlin,exploit,geolocation,geotagged,gps,location,mainstream
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: the Nokia gate5 office in Berlin
geo_lng: 13.38521
geo_lat: 52.53105

Geolocation isn't really anything new. In a lot of cases we've come to expect it. Most smartphones sold today have an on-board GPS receiver and it's considered a selling point for a handset to have one. Today's mobile mapping applications and Location Based Mobile Services make use of the location fix that GPS provides. We're used to our technology saying "*you are here*". Without this there'd be no Ovi Maps, no Google Maps, no Foursquare and no Facebook Places.

Long before we put up a network of over 20 satellites a less accurate version of geolocation was available. Pretty much anything that puts out a signal in the radio spectrum can be used to triangulate your position, if there's enough radio sources spead out over a wide area and if someone's done the leg work needed to geolocate you based on the position and strength of those radio sources. This can be done with mobile cell towers, with radio masts and more recently with the proliferation of wifi enabled access points, both in people's homes, in offices and in public areas.

<!-- TEASER_END -->

[![No matter where you go, there you are - Buckaroo Bonzai](https://farm1.static.flickr.com/209/493343628_98052395a0_d.jpg)](https://www.flickr.com/photos/st_a_sh/493343628/ "No matter where you go, there you are - Buckaroo Bonzai")

The process of wifi geolocation, sometimes called Wifi Positioning System or WPS, is sometimes combined with GPS, known as Assisted GPS or A-GPS, and sometimes provides geolocation facilities for devices which don't have onboard GPS. WPS is what allowed the first iPhones and the iPad, both of which lack GPS, to position themselves relatively accurately and WPS also forms part of the W3C Geolocation system which allows web browsers to get a location fix. WPS isn't as accurate as GPS but most of the time it's good enough. Both SkyHook Wireless and Google maintain WPS databases, which allow you to geolocate based on the publicly accessible unique address (the MAC address) that every wifi access point broadcasts, regardless of whether the access point is open, closed or encrypted. This isn't a flaw or a vulnerability, it's how your laptop or mobile phone seeks out and connects to a wifi network.

Again this is nothing new. But the crucial part is that either implicitly or explicitly this is done by opting into the service. Either by configuring a service, by installing an application or by saying "*yes it's OK to use my location*".

But what is new is that by going "*mainstream*", location sharing is now also ripe for abuse.

One indication of this abuse is the recent news that [free apps on the Android platform are secretly sharing A-GPS location](https://www.bbc.co.uk/news/technology-11443111 "https://www.bbc.co.uk/news/technology-11443111") without the user being aware of it. One could argue that when installing the app this is listed as one of the capabilities ...



> This application can access the following on your phone:
> Your location
> coarse (network based) location, fine (GPS) location


... but just like the EULA, or End User License Agreement, people rarely read the small print and simply click through to get to the "*good stuff*".
[![](/wp-content/uploads/2010/10/uf007802.gif "\"EULA\"")](/wp-content/uploads/2010/10/uf007802.gif "/wp-content/uploads/2010/10/uf007802.gif")


Another indication is the recent [proof of concept](https://www.samy.pl/mapxss/ "https://www.samy.pl/mapxss/") that allows a malicious web page to exploit a user being logged into their wifi access point's web based administration console, grab the MAC address of the access point and utilise a third-party WPS web service to geo-locate the user. Admittedly this is a proof of concept; it requires a very specific set of circumstances to be in place in order to work ... a vulnerable wifi router, visiting a malicious site with the exploit installed, being logged in as an administrator on the wifi access point's console at the time of visiting the malicious site.

But we should all be warned. As location goes mainstream and becomes ubiquitous, so does the attention of those who would abuse and exploit this.

As a footnote, the inspiration for this post came from [Paul Clarke](https://twitter.com/paul_clarke "https://twitter.com/paul_clarke"), who [spotted the geolocation exploit proof of concept](https://paulclarke.com/honestlyreal/2010/10/where-in-the-world-are-you/ "https://paulclarke.com/honestlyreal/2010/10/where-in-the-world-are-you/"). In addition to taking a [damn fine photograph](https://www.flickr.com/photos/paul_clarke/sets/72157624926808787/ "https://www.flickr.com/photos/paul_clarke/sets/72157624926808787/"), Paul also writes equally as well. If you don't read his blog, you should.
Photo Credits: [Stefan Andrej Shambora](https://www.flickr.com/photos/st_a_sh/493343628/ "https://www.flickr.com/photos/st_a_sh/493343628/") on Flickr.


