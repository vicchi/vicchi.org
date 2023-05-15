title: Reclaim and Own Your Short URLs
slug: reclaim-and-own-your-short-urls
date: 2010-03-03 11:05:27
tags: bitly,brand,cli.gs,data,delicious,geotagged,home,identity,ownership,tinyurl.com,vtny.org,yourls
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

There are many reasons to like the use of URL shorteners such as [bit.ly](http://bit.ly "http://bit.ly") and [tinyurl.com](http://tinyurl.com "http://tinyurl.com"). These free services take a long URL such as this post - [/2010/03/03/reclaim-and-own-your-short-urls](/2010/03/03/reclaim-and-own-your-short-urls "/2010/03/03/reclaim-and-own-your-short-urls") - and compresses them down to a much more manageable shorterned version - [http://bit.ly/aG1RBx](http://bit.ly/aG1RBx "http://bit.ly/aG1RBx") or [http://tinyurl.com/ylaodny](http://bit.ly/aG1RBx "http://bit.ly/aG1RBx").

<!-- TEASER_END -->

*They increase link sharing*; the vast majority of social networking sites use 140 characters as the maximum size for an update, using the full version of a URL you're sharing reduces the amount of space for you to put your own thoughts into the update. Just compare the full URL [/2010/03/03/reclaim-and-own-your-short-urls](/2010/03/03/reclaim-and-own-your-short-urls "/2010/03/03/reclaim-and-own-your-short-urls") at 65 characters against [http://bit.ly/aG1RBx](http://bit.ly/aG1RBx "http://bit.ly/aG1RBx") at 21 characters.

*They can track and yield click and referrer information*; the information that bit.ly provides is so useful, showing live clicks, geographic and referrer information amongst others.

[![another awesome bit.ly site down graphic](http://farm4.static.flickr.com/3414/3275068102_f753109c3e_d.jpg)](http://www.flickr.com/photos/revrev/3275068102/ "another")

But almost a year ago, Delicious founder and ex-Yahoo! Joshua Schachter made some pretty compelling arguments [against short URLs](http://joshua.schachter.org/2009/04/on-url-shorteners.html "http://joshua.schachter.org/2009/04/on-url-shorteners.html"):



> The worst problem is that shortening services add another layer of indirection to an already creaky system. A regular hyperlink implicates a browser, its DNS resolver, the publisher's DNS server, and the publisher's website. With a shortening service, you're adding something that acts like a third DNS resolver.



> ...



> But the biggest burden falls on the clicker, the person who follows the links. The extra layer of indirection slows down browsing with additional DNS lookups and server hits. A new and potentially unreliable middleman now sits between the link and its destination. And the long-term archivability of the hyperlink now depends on the health of a third party.


Or to put it another way, you no longer own your links or the data clicks that those links yield. If the service dies, your links break, pure and simple, and that does happen, as the demise of the original [tr.im](http://www.guardian.co.uk/technology/blog/2009/aug/10/url-shortening-shutdown-trim-bitly "http://www.guardian.co.uk/technology/blog/2009/aug/10/url-shortening-shutdown-trim-bitly") and [cli.gs](http://www.downloadsquad.com/2009/10/05/cli-gs-url-shortener-closes-up-shop/ "http://www.downloadsquad.com/2009/10/05/cli-gs-url-shortener-closes-up-shop/") services show.

[![Get used to it... tr.im is currently unavailable](http://farm4.static.flickr.com/3502/3812229111_b782326e13_d.jpg)](http://www.flickr.com/photos/playerx/3812229111/ "Get used to it... tr.im is currently unavailable")

But there is a way to take all the benefit that short URLs offer and keep ownership of your links and all the data that clicks on those links will give you and that's to run your own URL shortening service, which is precisely what I've done with [vtny.org](http://vtny.org/ "http://vtny.org/") which is running the [YOURLS](http://yourls.org/ "http://yourls.org/") code behind the scenes. This gives me all the benefits and metrics that other URL shorteners provide but with the added and crucial benefit that I now own the links and the data they generate, in this case via the [vtny.org/4](http://vtny.org/4 "http://vtny.org/4") short URL.

[![The URL shortener at vtny.org goes live](http://farm5.static.flickr.com/4023/4403812096_e8bce41c98.jpg)](http://www.flickr.com/photos/vicchi/4403812096/ "The URL shortener at vtny.org goes live")
Photo credit: [playerx](http://www.flickr.com/photos/playerx/3812229111/ "http://www.flickr.com/photos/playerx/3812229111/") and [revrev](http://www.flickr.com/photos/revrev/3275068102/ "http://www.flickr.com/photos/revrev/3275068102/") on Flickr


