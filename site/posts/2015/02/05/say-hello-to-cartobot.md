title: Say "Hello" to CartoBot
slug: say-hello-to-cartobot
date: 2015-02-05 11:59:27
tags: cartobot,cartography,geotagged,map,maps,teddington,twitter,twitterbot
category: blog
link: 
description: 
type: text
has_math: no
status: published

CartoBot is a small robot who lives in the office in my loft. He accidentally achieved consciousness when his charging cable was accidentally plugged into a Raspberry PI and he started to look for information. His only source was my library of books on maps and so CartoBot became obsessed with them. He now spends his days sitting on my home wifi connection and scouring the web for maps and mapping related stuff, which he Tweets about through his very own [Twitter account](https://twitter.com/cartobot "https://twitter.com/cartobot").

None is this is true. Sorry CartoBot, it's just not. Cartobot is a [Twitterbot](https://en.wikipedia.org/wiki/Twitterbot "https://en.wikipedia.org/wiki/Twitterbot"), written in [Node.js](https://nodejs.org/ "https://nodejs.org/"), that searches for Tweets about maps and cartography and also scans my [GetPocket](https://getpocket.com/ "https://getpocket.com/") queue for bookmarks tagged with maps and Tweets about these as well.

<!-- TEASER_END -->

[![cartobot](/wp-content/uploads/2015/02/cartobot.png)](/wp-content/uploads/2015/02/cartobot.png "/wp-content/uploads/2015/02/cartobot.png")

Why does CartoBot do this? Because I'd always wanted to write a Twitterbot and making one that Tweeted about maps and cartography seemed fitting. I'd also wanted to experiment with Node and this turned out to be a good excuse doing just that.

If you follow [CartoBot](https://twitter.com/cartobot "https://twitter.com/cartobot") on Twitter he won't follow you back and for now at least, if you Tweet to him he doesn't know how to reply. This may change in the future. But he will follow you if you Tweet about maps and use the `#map`, `#maps` or `#cartography` hash tags and he finds one of your Tweets and retweets it.

At the moment, CartoBot is sitting on one of my servers and waking up every 2 hours and searching for stuff. The search algorithm he uses is pretty simplistic and every so often throws up something totally inappropriate so should be considered very much a work in progress.

So far, he's Tweeted or retweeted just over 800 times and has over 500 followers. He doesn't take up any appreciable CPU, disk space or bandwidth, so CartoBot won't be going anywhere for the foreseable future. Let's see how this pans out.



[Robbie The Robot: Into The Unknown](https://www.flickr.com/photos/jdhancock/7801182534/ "https://www.flickr.com/photos/jdhancock/7801182534/") by JD Hancock, [CC-BY](https://creativecommons.org/licenses/by/2.0/ "https://creativecommons.org/licenses/by/2.0/")

