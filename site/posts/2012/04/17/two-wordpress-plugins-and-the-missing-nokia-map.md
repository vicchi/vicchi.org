title: Two WordPress Plugins And The (Missing) Nokia Map
slug: two-wordpress-plugins-and-the-missing-nokia-map
date: 2012-04-17 09:10:37
tags: api,geotagged,javascript,london,maps,nokia,plugin,wordpress,wp-nokia-auth,wp-quadratum
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

It's a glaringly obvious oversight but a few month's back I realised that given what I do for a living, there's something missing from my blog and that something is a ***map***.

There's a whole slew of "*where am I*" style WordPress plugins out there, but after some careful research I decided that none of them did precisely what I wanted, which was to show the last check-in I made on [Foursquare](http://foursquare.com/ "http://foursquare.com/"), on a map, in the sidebar of my blog.

Those that did come close still didn't do the key thing I wanted and that was to use [the map I work on as part of my day job](http://maps.nokia.com/ "http://maps.nokia.com/"). Now don't get me wrong, I've got nothing against the maps that I could have used; Google, Bing, Mapquest and OpenStreetMap produce very fine maps and they all have the JavaScript API I'd need to display my last checkin. But none of them used *my map* and that means a Nokia Map.

<!-- TEASER_END -->

So taking what I'd learnt about WordPress plugins during the course of producing 12 versions of the [WP Biographia](/pages/codeage/wp-biographia/ "/pages/codeage/wp-biographia/") plugin, I rolled up my sleeves (mentally and literally) and started work on what would become [WP Quadratum](/pages/codeage/wp-quadratum/ "/pages/codeage/wp-quadratum/"). I seem to have a thing about naming my plugins using a Latin derivation of their name; I have no idea why, but it seems to be better than something along the lines of *WP Yet Another Foursquare Checkin Plugin*. But I digress.

Several months later, after wrestling with getting a plugin to authenticate with Foursquare via OAuth 2 and learning how to write not only a WordPress plugin but also a WordPress widget, WP Quadratum appeared on the sidebar on my blog. It's over there right now, towards the top right of your browser screen, unless your reading this on a mobile device, in which case you'll just have to take my word for it for now.

[![](/wp-content/uploads/2012/04/screenshot-61-1024x496.jpg "WP Quadratum Screenshot")](/wp-content/uploads/2012/04/screenshot-61.jpg "/wp-content/uploads/2012/04/screenshot-61.jpg")

Now Nokia allows free and unauthenticated use of the JavaScript Maps API, but only up to a certain number of transactions over a lifetime. So I also built in support for supplying Nokia's Location API credentials as well. But then I stopped. Why build custom support for authentication and credentials into a plugin, only to probably have to copy-and-paste the code into another plugin I write that will use the same Maps API? So I digressed again and wrote another plugin, [WP Nokia Auth](/pages/codeage/wp-nokia-auth/ "/pages/codeage/wp-nokia-auth/"), that handles the Nokia credentials for me, and then made WP Quadratum play nicely with WP Nokia Auth, if it's installed, active and configured.

It took a while, but v1.0 of both plugins are now up on the WordPress plugin repository and on GitHub as well, for the usual forking, downloading, hacking and poking around. Whether they get the same number of [downloads as WP Biographia](http://wordpress.org/extend/plugins/wp-biographia/stats/ "http://wordpress.org/extend/plugins/wp-biographia/stats/") has (over 7,000 to date) I somewhat doubt, but unless I release these, I'll never know, so that's just what I've done.


* WP Nokia Auth is on the [WordPress plugin repository](http://wordpress.org/extend/plugins/wp-nokia-auth/ "http://wordpress.org/extend/plugins/wp-nokia-auth/") and also on [GitHub](https://github.com/vicchi/wp-nokia-auth "https://github.com/vicchi/wp-nokia-auth").
* WP Quadratum is on the [WordPress plugin repository](http://wordpress.org/extend/plugins/wp-quadratum/ "http://wordpress.org/extend/plugins/wp-quadratum/") and also on [GitHub](https://github.com/vicchi/wp-quadratum "https://github.com/vicchi/wp-quadratum").




