title: Your Place Is Not My Place; The Perils of Disambiguation
slug: your-place-is-not-my-place-the-perils-of-disambiguation
date: 2010-05-10 13:52:43
tags: disambiguation,geo,geobabel,geotagged,location,london,place,yahoo
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: the Yahoo! London office
geo_lng: -0.1292006
geo_lat: 51.5141985

We take the art of geographic lookup for granted these days; type a place name into a form on a web site or feed it into a web service API and *hey presto!* Most of the time you'll be told whether or not the place name is valid or not and, in case there's more than one place with the same name, either asked to choose which one you mean or be presented with the most likely place.

Most of the time ... but not all of the time.


[![Which Way To The Town Centre?](https://farm4.static.flickr.com/3054/2803261256_5c87049b7e_d.jpg)](https://www.flickr.com/photos/foilman/2803261256/ "Which Way To The Town Centre?")

The *hey presto* bit of the process seems at first glance to be relatively trivial but isn't. Just ask anyone who's had to implement a system that handles place names. Actually, the hey presto part is actually two discreet processes in their own right. First of all we need to identify a place, or whether indeed there's a place at all; this is usually called geoidentification.


<!-- TEASER_END -->

> ***identify***; verb; establish or indicate who or what (someone or something) is


This is the thing that determines that there is a place in "*I'm in London today*" but not in "*I do love Yorkshire Pudding*".

Once a place has been identified, we need to work out if there's more than one place of the same name (which is more than likely as we're stunningly unimaginative where place names are concerned, duplicating and reusing the same name all over the world) and if so, which one. This is usually called geodisambiguation.

> ***disambiguate***; verb; remove uncertainty of meaning from (and ambiguous sentence, phrase or other linguistic unit)


Some places are pretty easy to disambiguate; as far as I know there's only one [Ouagadougou](https://en.wikipedia.org/wiki/Ouagadougou "https://en.wikipedia.org/wiki/Ouagadougou") and that's the capital of Burkina Faso. Some places should be easy to disambiguate, least at first sight; take London, that should be easy. It's the capital of the United Kingdom. Well that's true but it could also be the London in Ontario, or the one in Arkansas, in California, in Kentucky or any of the other 22 Londons that I'm aware of.

The gentle art of disambiguation is critical to the act of geocoding, geoparsing, geotagging and any of the other words the the location industry chooses to tack geo on as a prefix. Get disambiguation wrong and you fail on two counts.

Firstly, you're showing your audience that you don't know or don't care about what they're trying to tell you. Secondly, you allow your users the opportunity to specify the same place in a multitude of conflicting ways.

This is part of the [problem of GeoBabel](/2010/04/21/fighting-geobabel-on-two-fronts/ "/2010/04/21/fighting-geobabel-on-two-fronts/"); *your place is not my place*.

So far, so theoretical, but let's look at a concrete example of this. A few weeks back I added my Twitter account to the Twitter directory site [wefollow.com](https://wefollow.com/vicchi "https://wefollow.com/vicchi"). The first thing you're asked to do is to supply your location, or to "*Type Your City*" as wefollow.com phrases it. So I type London and the site starts to attempt to disambiguate on the fly; so do I mean "*London, United Kingdom*" or "*London, Ontario*"? But wait, what about the other options?

[![wefollow.com - London geo disambiguation fail #1](https://farm5.static.flickr.com/4049/4567091985_240032d1eb.jpg)](https://www.flickr.com/photos/vicchi/4567091985/ "wefollow.com - London geo disambiguation fail #1")

Which "*London*" is the one tagged by 436 people but with no indication of which country? What's the difference between "*London, United Kingdom*", "*London,UK*" and "*London England*". Space and punctuation, or the lack of it, is obviously important to wefollow.com here. So let's try and give the system some help and start to type United Kingdom ...

[![wefollow.com - London geo disambiguation fail #2](https://farm4.static.flickr.com/3297/4567092049_68cbb7e32d.jpg)](https://www.flickr.com/photos/vicchi/4567092049/ "wefollow.com - London geo disambiguation fail #2")

Oh dear. The "*London, United Kingdom*" still shows up but because I've put a space in there I don't get offered "*London,UK*" anymore but I do get offered the London in the lesser known country of "*Uunited Kingdom*" and also "*London, Ub2*", which one assumes is the UB2 postal code which specifies the London suburb of Southall.

*Your place is not my place.*

To be fair, I'm not singling wefollow.com out for attack here; this is just one of many examples of sites who try to use geographic lookup but end up making life difficult for their users (*but which London do I pick?*) and for themselves (*now, how many users in London in the UK do we have?*). I'd happily offer to help them; if only I could find any contact information anywhere on the site ...
Photo Credits: [foilman](https://www.flickr.com/photos/foilman/2803261256/ "https://www.flickr.com/photos/foilman/2803261256/") on Flickr.



