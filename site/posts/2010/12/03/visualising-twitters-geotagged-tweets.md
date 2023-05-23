title: Visualising Twitter's Geotagged Tweets
slug: visualising-twitters-geotagged-tweets
date: 2010-12-03 22:51:39
tags: boston,geotag,geotagged,maps,tweets,twitter,visualisation
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: the Nokia Office, Boston, MA
geo_lng: -71.07146
geo_lat: 42.35071

You might have noticed but I'm a reasonably big Twitter user. Actually, I should be more precise. I'm a reasonably big Twitter API user ... I tend to use Tweetdeck on my mobile devices and on my laptop. I very rarely use Twitter on the web, and so I've only just noticed how Twitter are handling the display of geotagged Tweets. Take a look below and you'll see that on the accompanying map that they're rolling up from the point of the geocode to the nearest administrative geographic entity and highlighting this in a rather fetching shade of transparent red.

<!-- TEASER_END -->

For Tweets at home, the geotag rolls up to the London Borough of Richmond-upon-Thames, although I had to check this as I was pretty sure the Borough didn't have that shape; I was wrong on that count.

[![](/wp-content/uploads/2010/12/Twitter-Neigbourhoods.jpg "Twitter Neigbourhoods")](/wp-content/uploads/2010/12/Twitter-Neigbourhoods.jpg "/wp-content/uploads/2010/12/Twitter-Neigbourhoods.jpg")

In Berlin, the geotag rolls up to the Bezirke or borough, as shown in the example below, Tweeted from Berlin's Tegel airport. The vector of Reinickendorf can clearly be seen.

[![](/wp-content/uploads/2010/12/Twitter-Geotagged-Vector.jpg "Twitter Geotagged Vector")](/wp-content/uploads/2010/12/Twitter-Geotagged-Vector.jpg "/wp-content/uploads/2010/12/Twitter-Geotagged-Vector.jpg")

But sometimes the vector data just isn't there. The final example, Tweeted from Hampshire merely shows what I assume is the minimum bounding rectangle for the county.

[![](/wp-content/uploads/2010/12/Twitter-Geotagged-MBR.jpg "Twitter Geotagged MBR")](/wp-content/uploads/2010/12/Twitter-Geotagged-MBR.jpg "/wp-content/uploads/2010/12/Twitter-Geotagged-MBR.jpg")

As a final note, this feature doesn't appear in the "new" version of Twitters web site, where only the name of the geotag's location is displayed; if you want to see this in action yourself, you'll have to switch off the "new" version's preview and revert to the older user interface.




