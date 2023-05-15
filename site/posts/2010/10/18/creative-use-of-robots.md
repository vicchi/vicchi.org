title: Creative Use Of Robots
slug: creative-use-of-robots
date: 2010-10-18 17:23:24
tags: asimov,geotagged,laws,london,robotics,robots,seo,text
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

I'm not talking about vaguely human looking machines here, the sort that crop up in Forbidden Planet and Lost In Space, waving their metal arms and saying things like "*Danger Will Robinson*". What I'm talking about is a small file called robots.txt.

[![T is for Tofu Robot](http://farm3.static.flickr.com/2185/2385041554_5a3f940c6c_d.jpg)](http://www.flickr.com/photos/donsolo/2385041554/ "T is for Tofu Robot")

If you run your own web server you probably have one of these. It tells the web robots sent out by the search engines, such as Google, Yahoo! and Bing, what pages on your web site should and shouldn't be indexed and searchable. This doesn't mean that those pages can't be viewed, just that they shouldn't be able to be searched for.

Most of the time, a web site's robots.txt file contains stuff that is only of interest to the owner of the site and to people who specialise in getting the content of your web site to figure prominently in search engines. But sometimes, if you're willing to poke around a bit, they contain hidden gems, like a job advert for one of those aforementioned web search specialists, hidden in the UK Daily Mail's robots.txt file.

<!-- TEASER_END -->


```
User-agent: *
Disallow: /tvshowbiz/tvlistings/
Disallow: /home/ireland/
Disallow: /home/scotland/

# August 12th, MailOnline are looking for a talented
# SEO Manager so if you found this then you're the kind
# of techie we need!
# Send your CV to holly dot ward at
# mailonline dot co dot uk
```


Sometimes the lines between a metal robot and the robots.txt file gets blurred; [yelp.com](http://yelp.com "http://yelp.com")'s robots.txt file starts with the famous Three Laws Of Robotics that Isaac Asimov wrote about back in 1942.

```
#
# 1. A robot may not injure a human being or, through
#     inaction, allow a human being to come to harm.
#
# 2. A robot must obey orders given it by human beings
#     except where such orders would conflict with the
#     First Law.
#
# 3. A robot must protect its own existence as long as
#     such protection does not conflict with the First or
#     Second Law.

User-agent: *
Disallow: /advertise?
Disallow: /biz_share?
```

Social music site [last.fm](http://last.fm "http://last.fm") has taken this one step further and represents Asimov's laws as faked URLs on their web site.

```
User-Agent: *
Disallow: /music?
Disallow: /harming/humans
Disallow: /ignoring/human/orders
Disallow: /harm/to/self
```

And finally, in a particularly creative use of robots.txt, Scottish whisky brand Whyte & Mackay have hidden a giveaway promotion in their file.

[![](/wp-content/uploads/2010/10/WhyteAndMackayRobots.jpg "WhyteAndMackayRobots")](/wp-content/uploads/2010/10/WhyteAndMackayRobots.jpg "/wp-content/uploads/2010/10/WhyteAndMackayRobots.jpg")

An SEO nod of the hat must go to [Tyler Bell](http://twitter.com/twbell "http://twitter.com/twbell") for spotting the robots.txt file on yelp.com and Malcolm Coles for the [Daily Mail](http://www.malcolmcoles.co.uk/blog/seo-job-mail-robots/ "http://www.malcolmcoles.co.uk/blog/seo-job-mail-robots/") and [Whyte & Mackay](http://www.malcolmcoles.co.uk/blog/whisky-hidden-in-robots-txt-file/ "http://www.malcolmcoles.co.uk/blog/whisky-hidden-in-robots-txt-file/") robots.txt gems.
Photo Credits: [Don Solo](http://www.flickr.com/photos/donsolo/2385041554/ "http://www.flickr.com/photos/donsolo/2385041554/") on Flickr.


