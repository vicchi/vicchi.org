title: Revisiting The Online Me (On A Plane)
slug: revisiting-the-online-me-on-a-plane
date: 2011-12-08 21:09:16
tags: america,child,geotagged,php,plane,theme,virgin,wordpress
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: Virgin America flight VX837, between Chicago O'Hare and San Francisco International airports, roundabout overhead Maryville, MO
geo_lng:-94.873
geo_lat: 40.347

Although I fly a lot these days, I don't fly on internal routes in the US that much and so flying Virgin America, which has onboard wifi, is still something that brings out the childish geek in me. In [homage to a certain Mr. Aaron Cope](https://www.aaronland.info/weblog/2011/04/02/status/#mw2011 "https://www.aaronland.info/weblog/2011/04/02/status/#mw2011"), once again I am *in the sky* as I write this and starting to think that maybe I will only write blog posts from airplanes from now on.

While sitting in a hotel room about a week or so back, I realised that while [vicchi.org](/ "/") has been the home of my blog for years and the current incarnation may have 267 pieces of bloggage tucked away in the bowels of WordPress (that's 268 with this post), the theme has been pretty much static since sometime in 2007. The same goes for my other web presence over at [garygale.com](https://www.garygale.com/ "https://www.garygale.com/").

But back to this blog for a moment. Like a lot of people I started out with a stock [WordPress](https://wordpress.org/ "https://wordpress.org/") install and theme. Then I went through the discovery of the WordPress theme repository, installing and uninstalling too many plugins, before finally becoming confident enough to start hacking the PHP and CSS of an existing theme into something vaguely approaching what I wanted. And thereby hangs the problem. My theme, which started out as Chandra Maharzan's rather wonderful [Cleanr](https://wordpress.org/extend/themes/cleanr "https://wordpress.org/extend/themes/cleanr"), suffered from the problem that each time the theme was updated I needed to go through the changes and manually apply them to my hacked version. Scalable and fun this is *not*.

<!-- TEASER_END -->

[![vicchi.org - Screen Grab](/wp-content/uploads/2011/12/vicchi.org_.png)](/wp-content/uploads/2011/12/vicchi.org_.png "vicchi.org - Screen Grab")

Enter the notion of [WordPress *child themes*](https://codex.wordpress.org/Child_Themes "https://codex.wordpress.org/Child_Themes"). These allow you to take an existing WordPress theme and build on top of that theme but without actually modifying or adding to the original theme. You start with just inheriting from the parent theme's CSS and then you can add, adapt and otherwise hack as much or as little of the parent's templates and PHP functions as you need. As you're not actually touching the parent theme at all, any updates to that theme are automagically passed onto the child theme, so the need to keep a hacked theme in line with the original simply goes away.

I still rather liked the clean typography and colour scheme of my version of Cleanr so I was able to easily modify my child theme's CSS to migrate this. I based the child theme on the WordPress [Twenty Ten](https://wordpress.org/extend/themes/twentyten "https://wordpress.org/extend/themes/twentyten") theme but changed the way in which post date formats were displayed, removed the built-in biography display so I could use my own WP Biographia plugin and modified the parent theme's header image display to use my own imagery and to also rotate the images on page refresh.

Putting together a child theme to give my blog a long overdue facelift has been surprisingly easy; to see just how easy, the source code to the originally named [Twenty Ten - Vicchi](https://github.com/vicchi/twentyten-vicchi "https://github.com/vicchi/twentyten-vicchi") is over on GitHub to download, fork or otherwise hack around.

One web presence down, one to go. Next it was time to give my personal vanity page some facelift attention. The original design for this site was heavily influenced by [Christian Heilmann's](https://christianheilmann.com/ "https://christianheilmann.com/") approach to web technologies. Chris and I worked together at Yahoo! and he taught me so much about how web pages worked. The original version of this site was dynamically generated from RSS feeds fed through Yahoo's [YQL](https://developer.yahoo.com/yql/ "https://developer.yahoo.com/yql/"). Sadly, the YQL API got ever more flaky over the last few years and I ended up having to transition over to use the [SimplePie](https://simplepie.org/ "https://simplepie.org/") PHP library just to keep the site up and running. It wasn't the world's fastest loading site but it was nice and dynamic and at the time, that was important, to me at least.

But in keeping with the clean and spare layout of my blog, I'd been intrigued by the less-is-more approach that about.me had taken. But despite having [my own page on about.me's site](https://about.me/vicchi "https://about.me/vicchi") I wanted to host my own under my garygale.com domain.

[![garygale.com - Screen Grab](/wp-content/uploads/2011/12/garygale.com_.png)](/wp-content/uploads/2011/12/garygale.com_.png "garygale.com - Screen Grab")

A random browse through GitHub yielded [The Personal Page](https://github.com/weightshift/The-Personal-Page "https://github.com/weightshift/The-Personal-Page"), a clean, lightweight home page design that appealed to me. One GitHub fork later, plus a [photo of me](https://www.flickr.com/photos/kyeung808/4820451850/in/photosof-vicchi/ "https://www.flickr.com/photos/kyeung808/4820451850/in/photosof-vicchi/") taken at last year's Geo-Loco conference in San Francisco that I didn't look too appalling in and the new, Personal Page'd version was up and running. Really, it took all of about half an hour and that's including testing and finding a [social media icon set](https://webtreats.mysitemyway.com/154-matte-black-social-media-icons/ "https://webtreats.mysitemyway.com/154-matte-black-social-media-icons/") that integrated nicely with the look and feel of the site. Of course, [the web site's code](https://github.com/vicchi/garygale.com "https://github.com/vicchi/garygale.com") is also up on GitHub for the aforementioned hacking around.

All of the above verbiage can be boiled down to the simple fact that armed with a little knowledge of CSS, PHP and HTML it's very, very easy to create a new and, I hope, effective web presence, all of which is powered by open source tools and techniques and that, utterly appeals to the grown up geek in me.


Written and posted on Virgin America flight VX837, between Chicago O'Hare and San Francisco International airports, roundabout overhead Maryville, MO (40.347, -94.873)

