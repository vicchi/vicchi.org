title: iOS Location "Tracking"; Gross Invasion Of Privacy Or Media Sensationalism?
slug: ios-location-tracking-gross-invasion-of-privacy-or-media-sensationalism
date: 2011-04-21 17:47:12
tags: caching,cell,geotagged,ipad,iphone,location,london,media,tower
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

Oh dear. For a few years now I've been talking about how the privacy aspect of today's location technologies is something that may just catapult location into the mainstream, and possibly tabloid, media and probably for the wrong reasons. I envisaged this as being something salacious and potentially titillating, such as two Z List celebrities involved in a high profile divorce case, where they claimed to be in two separate places but their phone's A-GPS showed the complete opposite. If you were at Where 2.0 in San Jose this week or reading the headlines on the web sites of the BBC, The Guardian or BoingBoing, you'd be forgiven for thinking that just such a location media event had happened. But has it? The headlines certainly seem to think so ...

***iPhone tracks users' movements*** ... says the [BBC](https://www.bbc.co.uk/news/technology-13145562 "https://www.bbc.co.uk/news/technology-13145562")
***iPhone keeps record of everywhere you go*** ... says [the Guardian](https://www.guardian.co.uk/technology/2011/apr/20/iphone-tracking-prompts-privacy-fears "https://www.guardian.co.uk/technology/2011/apr/20/iphone-tracking-prompts-privacy-fears")
***Got an iPhone or 3G iPad? Apple is recording your moves*** .... says [O'Reilly](https://radar.oreilly.com/2011/04/apple-location-tracking.html "https://radar.oreilly.com/2011/04/apple-location-tracking.html") [Radar](https://radar.oreilly.com/2011/04/apple-location-tracking.html "https://radar.oreilly.com/2011/04/apple-location-tracking.html")
***iOS devices secretly log and retain record of every place you go*** ... says [BoingBoing](https://www.boingboing.net/2011/04/20/ios-devices-secretly.html "https://www.boingboing.net/2011/04/20/ios-devices-secretly.html")

... and when I use the word "*says*" in reality "*screams*" would be more accurate.

<!-- TEASER_END -->

[![Privacy Area](https://farm1.static.flickr.com/45/121496801_681393aa1e_d.jpg)](https://www.flickr.com/photos/barkaway/121496801/in/faves-vicchi/ "Privacy Area")

But as is often the case, the headlines don't tell the whole story. At Where 2.0 two security researchers have discovered a cache file in iOS which contains cell tower ids and corresponding longitude and latitude coordinates. This cache file isn't accessible if your iOS device has a passcode lock enabled, which it should be, and while it is backed up to any computer you synch your iOS device with, if your backups are encrypted, which they should be, this cache file isn't accessible is anyone, especially not "*a jealous spouse or private detective*" as the researchers claim.

So why *is* your iOS device caching your cell tower ids and their locations? A reasonable supposition would be to speed up the A-GPS subsystem in your device, so that time consuming network calls don't always need to be made and so your iOS device seems to be faster. Caching is a common technique used to speed up network systems and it's not surprising, at least to me, that iOS is using caching techniques.

[![Massachusetts Ave with iPhone Google Maps](https://farm2.static.flickr.com/1337/1270723762_7e75937616_d.jpg)](https://www.flickr.com/photos/stevegarfield/1270723762/in/faves-vicchi/ "Massachusetts Ave with iPhone Google Maps")

So if you're an iOS user, should you be worried? It's true that the [iTunes](https://www.apple.com/legal/itunes/uk/terms.html "https://www.apple.com/legal/itunes/uk/terms.html") [terms of service](https://www.apple.com/legal/itunes/uk/terms.html "https://www.apple.com/legal/itunes/uk/terms.html") does say that "*We may collect information such as occupation, language, zip code, area code, unique device identifier, location, and the time zone where an Apple product is used so that we can better understand customer behavior and improve our products, services, and advertising*" but there's currently no evidence that location information is actually being sent to Apple as a result of this caching. That's not to say that it isn't or that it won't be in the future, but for now, it looks unlikely. Take some basic security precautions such as a phone passcode lock and encrypt your synchronised backups and this looks less like a gross invasion of privacy and much more like any other use of caching techniques.

[![Cell Tower Mast](https://farm1.static.flickr.com/146/345096825_0181af9953_d.jpg)](https://www.flickr.com/photos/stevegarfield/1270723762/in/faves-vicchi/ "Cell Tower Mast")

I think it's right and good that researchers are probing into the the depths of a popular mobile operating system and looking for vulnerabilities. Your location, regardless of whether it's your current position or where you've been is valuable and above all private information and is ripe for abuse as last year's news on how [free Android apps are sharing people's location without their knowledge](/2010/10/12/as-location-goes-mainstream-so-does-the-potential-for-abuse/ "/2010/10/12/as-location-goes-mainstream-so-does-the-potential-for-abuse/") shows. But I take issue with the conclusions drawn from such research as this and how it's being publicised. To put this in context, consider the following, totally imaginary on my part, media headlines about caching ...

***Your web browser records every web page you visit!***

Well yes, *but* ... without this your browser would far less usable and far slower and caching is a fundamental part of how the web works.

***Your Internet Service Provider stores copies of every email you send and receive!***

Well yes, *but* ... it's part of the IMAP protocol that most email accounts use today.

***Your mobile phone provider tracks your mobile phone's location!***

Well yes, *but* ... it's the way that cellular networks work. It's how you can make and receive calls. Disable this and mobile networks stop working.

Finally I'm reminded of the other, media fueled furores, that have appeared and subsequently disappeared, around the launch of [Google's Latitude](/2009/02/08/latitude-media-coverage-needs-more-latitude/ "/2009/02/08/latitude-media-coverage-needs-more-latitude/") and [Facebook's Places](/2010/08/31/facebook-places-havent-we-been-here-before/ "/2010/08/31/facebook-places-havent-we-been-here-before/"). Much media coverage ensued, many sensationalistic headlines, much wringing of hands from industry pundits and then the rest of the world got on with using location technologies and didn't give it a second thought ... until the next time the media wants some headline attentions.


Photo Credits: [Mark Barkaway](https://www.flickr.com/photos/barkaway/121496801/in/faves-vicchi/ "https://www.flickr.com/photos/barkaway/121496801/in/faves-vicchi/"), [Steve Garfield](https://www.flickr.com/photos/stevegarfield/1270723762/in/faves-vicchi/ "https://www.flickr.com/photos/stevegarfield/1270723762/in/faves-vicchi/") and [Happychopper](https://www.flickr.com/photos/happychopper/345096825/in/faves-vicchi/ "https://www.flickr.com/photos/happychopper/345096825/in/faves-vicchi/") on Flickr.


