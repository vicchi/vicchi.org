title: Location's "Ick Factor"; First iOS And Now Android
slug: locations-ick-factor-first-ios-and-now-android
date: 2011-04-23 11:50:59
tags: caching,geotagged,ios,iphone,location,london,privacy,smartphone
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

Two days ago I wrote about the "*discovery*" of a cache file on iOS devices that stores the position of cell towers and the associated media coverage surrounding this. Note that I use "*discovery*" in inverted commas here. As [Sally Applin](http://www.sally.com/ "http://www.sally.com/") pointed out in [a comment on my previous post](/2011/04/21/ios-location-tracking-gross-invasion-of-privacy-or-media-sensationalism), this "*discovery*" is not new and a paper on this [by Alex Levinson](https://alexlevinson.wordpress.com/2011/04/21/3-major-issues-with-the-latest-iphone-tracking-discovery/ "https://alexlevinson.wordpress.com/2011/04/21/3-major-issues-with-the-latest-iphone-tracking-discovery/"), Bill Stackpole and Daryl Johnson was [published in January 2011](http://www.computer.org/portal/web/csdl/doi/10.1109/HICSS.2011.440 "http://www.computer.org/portal/web/csdl/doi/10.1109/HICSS.2011.440") as part of the Hawaii International Conference on System Sciences. Maybe sometimes researchers don't read other, existing, research on a subject before publishing.

<!-- TEASER_END -->

[![No matter where you go, there you are. - Buckaroo Bonzai](http://farm1.static.flickr.com/209/493343628_98052395a0_d.jpg)](http://www.flickr.com/photos/st_a_sh/493343628/in/faves-vicchi/ "No matter where you go, there you are. - Buckaroo Bonzai")

I'm not the only one to question the media coverage and the conclusions the media presents. Longtime Apple commentator and author [Andy Ihnatko](http://ihnatko.com/2011/04/20/hey-wonderful-theres-a-location-tracking-file-on-my-iphone/ "http://ihnatko.com/2011/04/20/hey-wonderful-theres-a-location-tracking-file-on-my-iphone/") neatly sums the entire topic up thus



> A few reality checks, lest I inadvertently do a Glenn Beck number on all of you, here:
> * This database isn’t storing GPS data. It’s just making a rough location fix based on nearby cell towers. The database can’t reveal where you were…only that you were in a certain vicinity. Sometimes it’s miles and miles off. This implies that the logfile’s purpose is to track the performance of the phone and the network, and not the movements of the user.
> * A third party couldn’t get access to this file without physical access to your computer or your iPhone. Not unless you’ve jailbroken your iPhone and didn’t bother resetting its remote-access password…or there’s an unpatched exploit that would give Random Person On The Internet root access to your phone.
> * It’s pretty much a non-issue if you’ve clicked the “Encrypt iPhone Backup” option in iTunes. Even with physical access to your desktop, a no-goodnik wouldn’t be able to access the logfile.
> 
> 
> But still! What a nervous can of worms. This is an open, unlocked file in a known location in a standard database format that anybody can read. If someone has physical access to your Mac — or remote access to your user account — it’s a simple matter of copying a file and opening it. And while the logfile can’t tell someone that you were at a specific house, it can obviously tell your boss that you went to the Cape on the day you called in sick.
> 
> And it’s not as though Apple and these two developers are the only people who know that this file exists and that it’s so easy to access. By the time the Good Guys blow the whistle, the Bad Guys have had it for months. Lord only knows what they’ve been doing with this information.
> 
> It’s also, frankly, another reason why I value my iPhone’s “remote nuke” feature and wish it were possible to nuke all data directly from the handset. I can’t think of any circumstance under which my location data would possibly be damaging, incriminating, or even just embarrassing. That’s not the point: if I can’t control the data that my phone is collecting, I should at least have the power to destroy it utterly.


Another well known Apple commentator, [John Gruber](http://daringfireball.net/linked/2011/04/21/andy-ihnatko-location-log "http://daringfireball.net/linked/2011/04/21/andy-ihnatko-location-log") also comments that

> The big question, of course, is why Apple is storing this information. I don’t have a definitive answer, but the best at least somewhat-informed theory I’ve heard is that consolidated.db acts as a cache for location data, and that historical data should be getting culled but isn’t, either due to a bug or, more likely, an oversight. I.e. someone wrote the code to cache location data but never wrote code to cull non-recent entries from the cache, so that a database that’s meant to serve as a cache of your recent location data is instead a persistent log of your location history. I’d wager this gets fixed in the next iOS update.


In my previous post I wrote that "*caching is a common technique used to speed up network systems and it’s not surprising, at least to me, that iOS is using caching techniques*" and it turns out that iOS is not alone and that, unsurprisingly, Google's Android is [doing pretty much the same thing](https://github.com/packetlss/android-locdump "https://github.com/packetlss/android-locdump"), caching cell tower and wifi location information, again presumably for the purposes of speeding up the location systems on Android mobile devices. The one difference between the iOS and Android approach is that Android overwrites the cache data when the cache file fills up whereas iOS doesn't. Rather than a dark location tracking conspiracy this looks more like a bug or an oversight on the part of iOS and as John Gruber notes, this will probably be fixed in an upcoming release of Apple's mobile operating system. I would also hope that the visibility of this cache data on Android will also be secured too, and soon.

Taking a step back for a moment, caching of any information to reduce the need to make time costly network calls seems to be mobile's [Kobayashi Maru](http://en.wikipedia.org/wiki/Kobayashi_Maru "http://en.wikipedia.org/wiki/Kobayashi_Maru") ... you're damned if you do and damned if you don't. If you *do* cache information which is perceived, rightly or wrongly, to be sensitive then media outrage will result. If you *don't* cache such information, then a mobile device will be reliant on network access every time the un-cached information is needed and that mobile device will be perceived as being "*too slow*".

Probably the only way to prevent a recurrence of this sort of media event is for more transparency on how such information is being stored and used and, as John Abbott [pointed out](/2011/04/21/ios-location-tracking-gross-invasion-of-privacy-or-media-sensationalism) on my previous post, the provision of a setting which says "*Switch this setting on for a super-quick location fix, we’ll keep your location private*".

[![The](http://farm4.static.flickr.com/3158/2614601295_92720a02cb_d.jpg)](http://www.flickr.com/photos/trevin/2614601295/ "The Ick Factor")

As is so often the case, this is much less about the technical side of the issue and much more about what Ihnatko calls the "*Ick Factor*" ... about how the public, led by the media, sees things.
Photo Credits: [Stefan Andrej Shambora](http://www.flickr.com/photos/st_a_sh/493343628/in/faves-vicchi/ "http://www.flickr.com/photos/st_a_sh/493343628/in/faves-vicchi/") and [Trevin Chow](http://www.flickr.com/photos/trevin/2614601295/ "http://www.flickr.com/photos/trevin/2614601295/") on Flickr.


