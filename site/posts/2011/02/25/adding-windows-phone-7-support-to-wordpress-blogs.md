title: Adding Windows Phone 7 Support To WordPress Blogs
slug: adding-windows-phone-7-support-to-wordpress-blogs
date: 2011-02-25 13:53:46
tags: geotagged,iphone,london,windowsphone,wordpress,wp7,wptouch
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

Regular visitors to the uncharted backwaters of the unfashionable end of the Internet that is my blog may be aware that I use [WordPress](https://wordpress.org/ "https://wordpress.org/") as a blogging platform. Those visitors who come here via a browser on a phone may even be aware that WordPress automagically presents a mobile friendly version of the site. This magic happens because of the [user-agent string](https://show-ip.net/useragent/ "https://show-ip.net/useragent/") your browser sends to the web server hosting my blog; this string tells the web server what sort of browser (and more importantly what sort of device) is trying to view my blog. If WordPress sees a user-agent string like this ...

<!-- TEASER_END -->


> Mozilla/5.0 (Linux; U; Android 2.2; en-us; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1


... it knows that I'm browsing from my Google Nexus One and serves up the mobile version of the site, but if it sees a user-agent string like this ...

> Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10\_6\_6; en-us) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/5.0.3 Safari/533.19.4


... it knows that I'm browsing from Safari on a Mac and serves up the normal version of the site. Actually it's not WordPress that knows how to act on a browser's user-agent string, it's a neat WordPress plugin called [WPTouch](https://wordpress.org/extend/plugins/wptouch/ "https://wordpress.org/extend/plugins/wptouch/") that does the magic.

But then I tried viewing my blog on my new [Windows Phone 7 handset](https://www.flickr.com/photos/vicchi/5470758996/ "https://www.flickr.com/photos/vicchi/5470758996/") and WPTouch doesn't work its magic.

[![](/wp-content/uploads/2011/02/WP7-Before-224x300.jpg "WP7 Before")](/wp-content/uploads/2011/02/WP7-Before.jpg "/wp-content/uploads/2011/02/WP7-Before.jpg")

It turns out that there's a clue to the solution in the name; WPTouch was designed to serve up the mobile view of a WordPress blog for the iPhone and the iPod Touch. Support was then added for Android and Blackberry handsets, but not for Windows Phone 7. Luckily, the plugin supports custom user-agent strings so adding support for Windows Phone 7 should be trivial. Well maybe not that trivial. A quick web search shows that there's [at least 10 variants](https://www.elucidsoft.com/blog/2010/11/19/windows-phone-7-user-agents/ "https://www.elucidsoft.com/blog/2010/11/19/windows-phone-7-user-agents/") of the Windows Phone 7 user-agent.

But rather than list them all explicitly, simply adding "*iemobile*", the lowest common denominator, as a custom user-agent string catches them all.

Armed with all this information, my blog now support Windows Phone 7 with ease, plus adding *"nokia, symbian*" as additional custom user-agent strings means that my Nokia N8 can also view the mobile version of my blog.

[![](/wp-content/uploads/2011/02/WP7-After1-224x300.jpg "WP7 After")](/wp-content/uploads/2011/02/WP7-After1.jpg "/wp-content/uploads/2011/02/WP7-After1.jpg")

As a final footnote, if you're wondering why I've used photos of Windows Phone 7 rather than screenshots, it's because along with multi-tasking and copy-and-paste, Windows Phone 7 doesn't currently support taking screen shots. Yet. But then again, the original version of the iPhone lacked a lot of this functionality too, which did nothing to dent the uptake of that handset. Multi-tasking and copy-and-paste is promised in the next upcoming WP 7 OS update, hopefully with screenshot taking as well.


