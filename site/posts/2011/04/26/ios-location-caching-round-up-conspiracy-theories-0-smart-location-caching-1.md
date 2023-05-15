title: iOS Location Caching Round-up - Conspiracy Theories: 0, Smart Location Caching: 1
slug: ios-location-caching-round-up-conspiracy-theories-0-smart-location-caching-1
date: 2011-04-26 13:21:36
tags: berlin,caching,conspiracy,geotagged,ios,iphone,location,london,theory,tracking
category: blog
link: 
description: 
type: text
has_math: no
status: published

More a [meta](http://en.wikipedia.org/wiki/Meta "http://en.wikipedia.org/wiki/Meta") post, or what [Kuro5hin](http://www.kuro5hin.org/section/mlp "http://www.kuro5hin.org/section/mlp") would have called MLP (meaningless link propagation), this post started out as a comment to one of my [previous](/2011/04/21/ios-location-tracking-gross-invasion-of-privacy-or-media-sensationalism/ "/2011/04/21/ios-location-tracking-gross-invasion-of-privacy-or-media-sensationalism/") [posts](/2011/04/23/locations-ick-factor-first-ios-and-now-android/ "/2011/04/23/locations-ick-factor-first-ios-and-now-android/") on the iOS location caching controversy but soon expanded way beyond a comment into a full blown post.


Firstly, let's get the conspiracy theory out of the way; this theory has been presented in a variety of ways but all of them seem to think that your iOS device is tracking your location and that the reason for this is some shadowy request from government or intelligence agencies. Perhaps the most eloquent case for this was on [Frank Reiger's](http://frank.geekheim.de/?p=1690 "http://frank.geekheim.de/?p=1690") blog.


Now I love a good conspiracy theory as much as the next person and Frank’s blog post was a great read. But I have to take issue with the two main points he raises. Firstly there’s “*if it was a bug then it would have been fixed … it hasn’t been fixed so it can’t be a bug and must therefore be deliberate*“. Secondly there’s “*not only has the bug not been fixed but the file even moved location without being fixed so it must be (even more) deliberate*“.

<!-- TEASER_END -->

[![Encyclopedia of Conspiracy Theories](http://farm1.static.flickr.com/36/77598074_e205c96743_d.jpg)](http://www.flickr.com/photos/alvy/77598074/ "Encyclopedia of Conspiracy Theories")


I’ve worked in the software industry for almost 25 years, many of those cutting code, and can say with hand on heart that bugs, oddities and plain wrong behaviour stay in code bases not because they don’t need to be fixed but because other factors push them down in the priority list, factors such as hard release dates, new features taking precedence and the ill defined side effects of complex software systems not being able to be fully QA’d. Just because a bug or an unforeseen side effect remains in a production code base does not make a conspiracy theory of government or intelligence agency intervention.


We also live in a world of distributed software development teams. It’s enough of a challenge to keep teams in different floors of the same building in synch; it’s even more difficult when language, time zones and different countries get into the mix. Just because the consolidated.db cache moved location again, does not make a conspiracy theory.


So all in all, nice post, great conspiracy theory but, sadly, very little to back up the assertions.


But if your iOS device is tracking or caching your location, why is the data so inaccurate in places, showing places you're pretty sure you haven't been or have visited only fleetingly, yet not showing places you'd think would show up, such as where you live or work?


For the answer to these questions, I'd recommend a thorough reading of Peter Batty's excellent three posts on the topic, which actually digs into the data that is present on iOS devices, rather than making shrill conspiracy theories based on other, equally shrill, media headlines.


Peter's posts, "[So actually, Apple isn't recording your (accurate) iPhone location](http://geothought.blogspot.com/2011/04/so-actually-apple-isnt-recording-your.html "http://geothought.blogspot.com/2011/04/so-actually-apple-isnt-recording-your.html")", "[More on Apple recording your iPhone location history](http://geothought.blogspot.com/2011/04/more-on-apple-recording-your-iphone.html "http://geothought.blogspot.com/2011/04/more-on-apple-recording-your-iphone.html")" and "[The scoop: Apple's iPhone is NOT storing your accurate location and NOT storing history](http://geothought.blogspot.com/2011/04/scoop-apples-iphone-is-not-storing-your.html "http://geothought.blogspot.com/2011/04/scoop-apples-iphone-is-not-storing-your.html")" go into great detail about what the consolidated.db location data cache does contain and, more importantly, what it doesn't.


An anonymous comment on one of Peter's posts points to a [document](http://www.wired.com/images_blogs/gadgetlab/2011/04/applemarkeybarton7-12-10.pdf "http://www.wired.com/images_blogs/gadgetlab/2011/04/applemarkeybarton7-12-10.pdf") submitted by Apple to US Congress in July 2010, which includes the following



> When a customer requests current location information ... Apple will retrieve known locations for nearby cell towers and Wi-Fi access points from its proprietary database and transmit the data back to the device ... The device uses the information, along with GPS coordinates (if available), to determine its actual location. Information about the device's location is not transmitted to Apple, Skyhook or Google. Nor is it transmitted to any third-party application provider, unless the customer expressly consents
> 
> 


Another comment from [Jude](http://www.blogger.com/profile/00347624133114588463 "http://www.blogger.com/profile/00347624133114588463") on one of Peter's posts makes this observation ...



> My Guess?
> 
> 
> It's not a list of cell phone locations that you've been to, but the opposite, a list of cell phone locations near you downloaded to the iPhone from Apple in case you move into range of one of them. i.e. At a guess what is happening is location services identifies a cell tower and asks for its location, and is replied to with the list of locations that contains that cell tower, that list is then cached so that it does not need to be requested again.
> 
> 
> Of course, this is only a guess based on the wide range of addresses people are seeing and how its near to, but not exactly where, the people have traveled.
> 
> 


So rather than iOS actively and accurately tracking you and reporting this information to some, unspecified, intelligence agency it's actually the complete opposite; your device is actively downloading the next cell tower and, in some cases, wifi information that is near you and where you might be going to provide a better location experience. Which explains the inaccuracy of the locations people have been seeing in their version of the cache data and explains why there's some places they haven't been showing up in the data and why places they have been aren't showing up.


[![hat Fool Columbus Hasn't Got GPS](http://farm1.static.flickr.com/186/409123718_3bdf3b3a75_d.jpg)](http://farm1.static.flickr.com/186/409123718_3bdf3b3a75_d.jpg "That Fool Columbus Hasn't Got GPS")


Of course, this information still has personal value and should really be secured by iOS and not by an individual having to secure their handset and encrypt their backups but if anyone still thinks they see the black helicopters circling, it looks more and more unlikely and, as Ed Parsons pointed out, [a smartphone without location just isn't ... smart](http://www.edparsons.com/2011/04/a-smartphone-without-location-is-just-not-smart/ "http://www.edparsons.com/2011/04/a-smartphone-without-location-is-just-not-smart/").


Photo Credits: [Álvaro Ibáñez](http://www.flickr.com/photos/alvy/77598074/ "http://www.flickr.com/photos/alvy/77598074/") and [Tom Jervis](http://www.flickr.com/photos/89775718@N00/409123718/ "http://www.flickr.com/photos/89775718@N00/409123718/") on Flickr.
Written at home (51.427051, -0.333344) and posted from the Nokia gate5 office in Schönhauser Allee, Berlin (52.5308072, 13.4108176)


