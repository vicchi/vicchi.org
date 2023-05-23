title: You May Have Helped Map The Internet Without Knowing It
slug: you-may-have-helped-map-the-internet-without-knowing-it
date: 2013-03-21 11:20:42
tags: botnet,geotagged,internet,ip,map,mapgasm,schwalbach,security
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: Nokia Location & Commerce, Am  Kronberger Hang, Schwalbach am Taunus, Germany
geo_lng: 8.53349
geo_lat: 50.16216

According to the Internet Systems Consortium there's somewhere [over 900 million things connected to the internet](https://www.isc.org/solutions/survey "https://www.isc.org/solutions/survey"). This isn't the amount of things, computers, mobile phones, tablets, that *use* the internet, but the number of things that have a public IP address. Maybe by correlating the locations of these public IP addresses you could make a map of the internet?

<!-- TEASER_END -->

[![worldmap_16to9_1600x900](/wp-content/uploads/2013/03/worldmap_16to9_1600x900-1024x576.png)](https://internetcensus2012.bitbucket.org/images.html "https://internetcensus2012.bitbucket.org/images.html")

Almost anything is possible, but the devil's in the details. Firstly you'd need to find all those internet connected things which respond to an ICMP Ping request, which is a technical way of asking something on the internet *are you there?* That's a really big amount of things to ask this question of and that would take a lot of time for just one computer to do. 

But a researcher tried to do this and in preliminary research found out that an awfully large amount of these internet connected things were servers running some version of UNIX and a scarily large amount of these also either had a `root` account with a password of `root` or `admin` or even *no password at all*. The root account is a superuser or administrator account on a UNIX system; if you can login with this account you have total control of a UNIX machine.

This is where things get technically interesting, legally dubious and morally questionable in pretty much equal measure.

The, so far anonymous, researcher wrote a small piece of code that could do three things. Firstly, run a scan of a very small subset of those 900 million odd connected things. Secondly, make a copy of itself on another of those connected things which were running UNIX and which had a wide open root account. Thirdly, make that copy of itself, small, unnoticeable, not consume too much system resources or bandwidth and delete itself after it had finished.

This is what's know as a [botnet](https://en.wikipedia.org/wiki/Botnet "https://en.wikipedia.org/wiki/Botnet") and this botnet mapped the internet and vanished once it was done. At its peak, there were over 420,000 servers unwittingly participating in this map making endeavour. You may even have contributed to the map without even being aware of it. If you know that you have a wide open UNIX server you probably did and you should also run, not walk, and lock down your server right now.

As a map, the [Internet Census 2012 map](https://internetcensus2012.bitbucket.org/paper.html "https://internetcensus2012.bitbucket.org/paper.html") is interesting. As a piece of technology, the map's origins are fascinating. You can also see why the researcher who did this chose to remain utterly anonymous, though I have to wonder how long his anonymity will last.






