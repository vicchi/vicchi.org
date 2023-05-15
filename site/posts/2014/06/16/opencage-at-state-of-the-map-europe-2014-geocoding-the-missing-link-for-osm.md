title: OpenCage At State Of The Map Europe 2014; Geocoding - The Missing Link For OSM?
slug: opencage-at-state-of-the-map-europe-2014-geocoding-the-missing-link-for-osm
date: 2014-06-16 16:48:39
tags: 
category: blog
link: 
description: 
type: text
has_math: no
status: published

Last weekend, myself and the rest of the <a href="http://www.opencagedata.com/" target="_blank">OpenCage</a> team were in Karlsruhe in Germany for the second annual OpenStreetMap <a href="http://www.sotm-eu.org/" target="_blank">State of the Map Europe</a> conference. It was probably one of the best run and most diverse OSM conferences I've been to.

The first day of the conference was spent in the lobby, drinking lots of the aforementioned coffee and using lots of the aforementioned wifi, while we made last minute tweaks to the API and the accompanying website. By the end of the afternoon, the API was ready, the website worked and my slide deck was finished.

Of all which meant I could enjoy the second day of the conference and actually listen to the talks until 4.30 in the afternoon when I took to the stage and gave this talk, which was filmed and put up on YouTube.



.embed-container {
 position: relative;
 padding-bottom: 56.25%;
 height: 0;
 overflow: hidden;
 max-width: 100%;
 height: auto;
}
.embed-container iframe, .embed-container object, .embed-container embed {
 position: absolute;
 top: 0;
 left: 0;
 width: 100%;
 height: 100%;
 }








If you prefer to read an account of the talk and the launch of the OpenCage Geocoder, you'll find my slides and commentary below.


[![Slide01](/wp-content/uploads/2014/06/Slide01.jpg)](/wp-content/uploads/2014/06/Slide01.jpg "/wp-content/uploads/2014/06/Slide01.jpg")
[![Slide02](/wp-content/uploads/2014/06/Slide02.jpg)](/wp-content/uploads/2014/06/Slide02.jpg "/wp-content/uploads/2014/06/Slide02.jpg")

So, hello, I’m Gary and I’m from the Internet. I’m a self-confessed map addict, a geo-technologist and a geographer. I’m Geotechnologist in Residence for Lokku in London. I used to be Director of Global Community Programs for Nokia’s HERE maps and before that I led Yahoo’s Geotechnologies group in the United Kingdom. I’m a founder of the Location Forum, a co-founder of WhereCamp EU, I sit on the Council for the AGI, the UK’s Association for Geographic Information, I’m the chair of the W3G conference and I’m also a Fellow of the Royal Geographical Society.

[![Slide03](/wp-content/uploads/2014/06/Slide03.jpg)](/wp-content/uploads/2014/06/Slide03.jpg "/wp-content/uploads/2014/06/Slide03.jpg")

Most people in this room, I hope, understand that in today’s geospatial world a geocoder is critically important. Most people outside of this room and outside of this industry probably don’t. They just expect stuff on the interwebs and on their phone to work, for their devices to understand not only what they meant to say or type or tap but also where they meant. So I think it’s worth noting why people need to geocode …

[![Slide04](/wp-content/uploads/2014/06/Slide04.jpg)](/wp-content/uploads/2014/06/Slide04.jpg "/wp-content/uploads/2014/06/Slide04.jpg")

They might have data with geospatial context but without coordinates or have data where the coordinates are questionable.

They might want to show their data on a map or store the coordinates in their data and do more than just cache them.

They might have coordinates but not know where those coordinates actually refer to or to easily cluster their data into whatever geographical grouping makes sense for their use case.

All of this … and more … needs a geocoder that works, works well and probably works globally

[![Slide05](/wp-content/uploads/2014/06/Slide05.jpg)](/wp-content/uploads/2014/06/Slide05.jpg "/wp-content/uploads/2014/06/Slide05.jpg")

But enough about why people want to geocode … why do we want to geocode and by “we” I mean Lokku, the company behind OpenCage Data and behind Nestoria

[![Slide06](/wp-content/uploads/2014/06/Slide06.jpg)](/wp-content/uploads/2014/06/Slide06.jpg "/wp-content/uploads/2014/06/Slide06.jpg")

We need a geocoder because Nestoria gets real estate listings. That means properties with, hopefully, a valid address. That data needs to be cleansed, sanitised and shown on a map, either precisely or in the general area if we can’t get a precise, street level geocode.

Nestoria has been doing this for over 8 years, geocoding and indexing up to 10M properties, every day. That’s a lot of geocoding and it needs to happen in areas of the world which aren’t always served by the commercial geocoders that the proprietary map providers offer.

You’d be forgiven for saying “but that screen shot is for Karlsruhe, that’s not difficult, Germany is well mapped and has a sane addressing system”. And you’d be right.

[![Slide07](/wp-content/uploads/2014/06/Slide07.jpg)](/wp-content/uploads/2014/06/Slide07.jpg "/wp-content/uploads/2014/06/Slide07.jpg")

But we also do this for countries like India, which aren’t well mapped and which have a much more … fluid … approach to addressing. In January of this year we were in India and asked some people in Bangalore how would they geocode a batch of a thousand or so addresses.

The answer we got was simple … “Geocode that many addresses? We wouldn’t”. There’s a long running joke in India to effect that the country does has GPS, but it doesn’t stand for Global Positioning System, instead it stands for General Populace System. You look at an address, get to the nearest spot and then ask someone, repeating the process until you reach your destination.

Yet we’re geocoding in Bangalore and in India to the best of our ability to do so.

[![Slide08](/wp-content/uploads/2014/06/Slide08.jpg)](/wp-content/uploads/2014/06/Slide08.jpg "/wp-content/uploads/2014/06/Slide08.jpg")

When it comes to choosing a geocoder, there’s a lot of choices for you to make and the choice you make has to be the right one for you

[![Slide09](/wp-content/uploads/2014/06/Slide09.jpg)](/wp-content/uploads/2014/06/Slide09.jpg "/wp-content/uploads/2014/06/Slide09.jpg")

This is just a small selection of the geocoding services on offer. Some open. Some proprietary. Some free, some paid and some freemium.

All existing geocoding services have weaknesses and limitations
Most offer very limited coverage in emerging markets
Some allow caching or persistence (storing) of geocodes; some don’t
Almost all services severely rate limit or throttle over a 24 hour period
Commercial and/or proprietary services offer paid for plans ranging from $0.001 per query to €31,250.00 per month!
Not all providers allow for commercial use of geocodes
Some services don’t even offer a useable service, but instead permit hosting your own instances
Almost all proprietary services restrict the map canvas you can display geocodes on, forbid commercial use of geocodes or assert ownership of the geocodes or all of these

For Nestoria we had to make a decision and the one we made is why I’m here speaking to you now. We decided not to go with a proprietary geocoder

[![Slide10](/wp-content/uploads/2014/06/Slide10.jpg)](/wp-content/uploads/2014/06/Slide10.jpg "/wp-content/uploads/2014/06/Slide10.jpg")

We decided to build our own geocoder. Or to be more precise our own geocoders. One for each country Nestoria operates in. This was a hard decision to make but the right one. No other geocoding service offered the right combination of coverage, depth, usage rights and many other factors.

So build our own geocoders we did. With open data. From OSM. From Yahoo! GeoPlanet and from other open data sources. These geocoders are running right now, 24x7, geocoding property listings and making Nestoria work.

[![Slide11](/wp-content/uploads/2014/06/Slide11.jpg)](/wp-content/uploads/2014/06/Slide11.jpg "/wp-content/uploads/2014/06/Slide11.jpg")

When I joined Lokku and OpenCage Data in January of this year I took a long hard look at the back end geo technology that Nestoria has and immediately had a lightbulb moment. We should launch a geocoder. And not just a geocoder that uses the Nestoria geocoders, one that uses many open source and open data geocoders and one that offers global coverage, not just in the countries that Nestoria operates in.

[![Slide12](/wp-content/uploads/2014/06/Slide12.jpg)](/wp-content/uploads/2014/06/Slide12.jpg "/wp-content/uploads/2014/06/Slide12.jpg")

For most people geocoding and OSM mean Nominatim. There’s also other geocoding services, including MapQuest’s Open Geocoder which is powered by Nominatim as well as other services such as geocod.io, geo.io and Photon to name but a few. But all of these services are standalone. It’s one geocoder, behind a single API. There should be more than one.

[![Slide13](/wp-content/uploads/2014/06/Slide13.jpg)](/wp-content/uploads/2014/06/Slide13.jpg "/wp-content/uploads/2014/06/Slide13.jpg")

Because if you look at what’s behind the API for the large proprietary geocoders, there is more than one geocoder. There’s many. This is certainly true for the companies I’ve worked for that offer geocoding services … both Yahoo’s and NAVTEQ’s geocoder is really many country and/or language specific geocoders. You hit a single API and it’s fired off to many geocoders based on country or language so the user gets the best answer they can. This isn’t an easy task to achieve and it’s probably one of the reasons why commercial geocoders cost and cost a lot.

[![Slide14](/wp-content/uploads/2014/06/Slide14.jpg)](/wp-content/uploads/2014/06/Slide14.jpg "/wp-content/uploads/2014/06/Slide14.jpg")

But while the proprietary map and geocoding providers battle it out between themselves OSM and open data are being overlooked and ignored. While the proprietary players have now grudgingly admitted that the map in OSM is a competitor to their offerings, the same cannot be said for their view of OSM being a viable opponent in geocoding.

[![Slide15](/wp-content/uploads/2014/06/Slide15.jpg)](/wp-content/uploads/2014/06/Slide15.jpg "/wp-content/uploads/2014/06/Slide15.jpg")

There is a classic gap in the market and this is one that at OpenCage we’re trying to exploit and one which we home the OSM community as a whole will help exploit.

[![Slide16](/wp-content/uploads/2014/06/Slide16.jpg)](/wp-content/uploads/2014/06/Slide16.jpg "/wp-content/uploads/2014/06/Slide16.jpg")

So we’ve taken the Nestoria geocoders, we’ve added in our own instances of Nominatim, of DSTK and of Two Fishes and we’re wrapped this all into a single API which does just what the proprietary players do, we look at the query, fire it off to all of these geocoders and confidence rank the results which we then return.

This is just the start, we plan on adding more open geocoders and more open data in the future as the service grows. If you have a geocoder you think we could or should be using, come and find us and tell us. As well as myself, there’s Ed Freyfogle and Marc Tobias Metten here at SOTM-EU.

[![Slide17](/wp-content/uploads/2014/06/Slide17.jpg)](/wp-content/uploads/2014/06/Slide17.jpg "/wp-content/uploads/2014/06/Slide17.jpg")

It’s called the OpenCage Geocoder and you’ll find it online here. Right now.

[![Slide18](/wp-content/uploads/2014/06/Slide18.jpg)](/wp-content/uploads/2014/06/Slide18.jpg "/wp-content/uploads/2014/06/Slide18.jpg")

Just as the power of Leaflet’s JavaScript maps API is in it’s simplicity and ease of use, we think the OpenCage Geocoder API is simple and easy

[![Slide19](/wp-content/uploads/2014/06/Slide19.jpg)](/wp-content/uploads/2014/06/Slide19.jpg "/wp-content/uploads/2014/06/Slide19.jpg")

OSM isn’t just for the US or for Europe and neither is this geocoder

[![Slide20](/wp-content/uploads/2014/06/Slide20.jpg)](/wp-content/uploads/2014/06/Slide20.jpg "/wp-content/uploads/2014/06/Slide20.jpg")

Reverse geocoding is just as important as forward geocoding. Indeed with the continuing rise in smartphone use, it’s probably not unfair to say that reverse geocoding is just as important as forward geocoding is, if not more so

[![Slide21](/wp-content/uploads/2014/06/Slide21.jpg)](/wp-content/uploads/2014/06/Slide21.jpg "/wp-content/uploads/2014/06/Slide21.jpg")

For now, we’re launching as a beta service, which means this is a free service. After the beta period, there will be pricing levels introduced, but there will always be a free tier and our pricing will be clear, transparent and above all flexible.

[![Slide22](/wp-content/uploads/2014/06/Slide22.jpg)](/wp-content/uploads/2014/06/Slide22.jpg "/wp-content/uploads/2014/06/Slide22.jpg")

In 2011 at WhereCamp EU in Berlin I codified Gary’s Law of Conference failure. Never work with children, animals or live demos. Now it’s time to put that law to the test. This is what the geocoder looks like and does.

[![Slide23](/wp-content/uploads/2014/06/Slide23.jpg)](/wp-content/uploads/2014/06/Slide23.jpg "/wp-content/uploads/2014/06/Slide23.jpg")

The API runs over HTTP or HTTPS. Here’s the API geocoding Karlsruhe and with a format parameter than gives you back JSON.

[![Slide24](/wp-content/uploads/2014/06/Slide24.jpg)](/wp-content/uploads/2014/06/Slide24.jpg "/wp-content/uploads/2014/06/Slide24.jpg")

Or if you prefer XML we can do that too.

[![Slide25](/wp-content/uploads/2014/06/Slide25.jpg)](/wp-content/uploads/2014/06/Slide25.jpg "/wp-content/uploads/2014/06/Slide25.jpg")

Or if you’re already using Google’s geocoder we can return JSON in the format that v3 of the Google API uses.

[![Slide26](/wp-content/uploads/2014/06/Slide26.jpg)](/wp-content/uploads/2014/06/Slide26.jpg "/wp-content/uploads/2014/06/Slide26.jpg")

Or maybe you’d like to see what the return values from the geocoder looks like on a map? We can do that too.

[![Slide27](/wp-content/uploads/2014/06/Slide27.jpg)](/wp-content/uploads/2014/06/Slide27.jpg "/wp-content/uploads/2014/06/Slide27.jpg")


So feel free to sign up and to try the OpenCage Geocoder out

[![Slide28](/wp-content/uploads/2014/06/Slide28.jpg)](/wp-content/uploads/2014/06/Slide28.jpg "/wp-content/uploads/2014/06/Slide28.jpg")


If you find a problem, want help or have suggestions or want to talk to us … you’ll find us on Twitter

[![Slide29](/wp-content/uploads/2014/06/Slide29.jpg)](/wp-content/uploads/2014/06/Slide29.jpg "/wp-content/uploads/2014/06/Slide29.jpg")


Thank you for listening


