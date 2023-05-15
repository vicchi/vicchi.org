title: The Non Golden Rules of Geo (Redux)
slug: the-non-golden-rules-of-geo-redux
date: 2011-06-05 09:16:52
tags: addressing,geo,geotagged,geotechnologies,golden,london,rules,uk,yahoo
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

Back when I used to work for Yahoo! I wrote a lot of posts for the Geo Technologies blog; for reasons partially explained in my [last post](/2011/06/04/the-opposite-of-geolocation-is-relocation/ "/2011/06/04/the-opposite-of-geolocation-is-relocation/"), that blog is now offline, presumed dead. But one post that seems to keep catching people's imagination is the one in which I, somewhat tongue in cheek, codified the Six Non Golden Rules Of Geo. Much to my satisfaction, it keeps getting mentioned, although the [full original post](http://www.ygeoblog.com/2009/02/uk-addressing-the-non-golden-rules-of-geo-or-help-my-county-doesnt-exist/ "http://www.ygeoblog.com/2009/02/uk-addressing-the-non-golden-rules-of-geo-or-help-my-county-doesnt-exist/") is inaccessible, as is the rest of that blog. [Nate Kelso](https://twitter.com/#!/kelsosCorner "https://twitter.com/#!/kelsosCorner") reproduced [part of i](http://kelsocartography.com/blog/?p=2611 "http://kelsocartography.com/blog/?p=2611")t, as did [John Goodwin](http://johngoodwin225.wordpress.com/2009/02/26/the-non-golden-rules-of-geo/ "http://johngoodwin225.wordpress.com/2009/02/26/the-non-golden-rules-of-geo/") but until earlier today I'd not been able to find the full post.

Step forward the aforementioned [John Goodwin](https://twitter.com/#!/gothwin "https://twitter.com/#!/gothwin") who, with a bit of internet detective work, [managed to find a mirror](https://twitter.com/#!/gothwin/statuses/76927877337186304 "https://twitter.com/#!/gothwin/statuses/76927877337186304") of the post. While I much prefer to link to blog posts rather than reproduce them in full, in this case I'm plagiarising myself and making an exception on the ground of inaccessibility, and have mirrored the post in full here. It's worth mentioning that this post was originally written in February of 2009, when I was still working for Yahoo! so it's a little out of date and was originally posted as ...

<!-- TEASER_END -->

### UK Addressing, The Non Golden Rules of Geo or Help! My County Doesn’t Exist


George Bernard Shaw once said *the golden rule is that there are no golden rules* and at Geo Technologies we understand that there is no one golden rule for geo and so we try to capture and express the world’s geography as it is used and called by the world’s people. Despite the pronouncement on golden rules, a significant proportion of the conversations we have with people about geo lend themselves to the Six Non Golden Rules of Geo, namely that:
1. Any attempt to codify a series of geo rules into a formal, one size fits all, taxonomy will fail due to Rule 2.
2. Geo is bizarre, odd, eclectic and utterly human.
3. People will in the main agree with Rule 1 with the exception of the rules governing their own region, area or country, which they will think are perfectly logical.
4. People will, in the main, think that postal, administrative and colloquial hiearachies are one and the same thing and will overlap.
5. Taking Rule 4 into account, they will then attempt to codify a one size fits all geo taxonomy.
6. There is no Rule 6, see Rule 1.


I codified these rules after a conversation last week, via Twitter and Yahoo! Messenger, with [Andrew Woods](http://twitter.com/awoods "http://twitter.com/awoods"), a US based developer who was, understandably, confused by the vagaries of the how addresses work in the UK. [Andrew’s blog](http://www.andrewwoods.net/blog/2009/02/19/mystery-in-the-uk/ "http://www.andrewwoods.net/blog/2009/02/19/mystery-in-the-uk/") contains the full context but it can be distilled into three key questions:
* If the country is The United Kingdom, how come the ISO 3166-2 code is GB?
* If the country is The United Kingdom, is England a country?
* If England is a country, do I use it in an address?


As a US developer, Andrew is naturally fluent with the US style of addressing, with all of its’ localised and regional exceptions. This is a good example of both Rules 3 and 4 in the real world; most people in the US will use number, street, city, State and ZIP for specifying an address. But how does this transfer to the UK? What’s the equivalent of a State … England, Scotland or Wales? Let’s try to answer some of these problems:

[![Middlesex In 1824](/wp-content/uploads/2011/06/489px-Gray1824.middlesex.jpg)](http://en.wikipedia.org/wiki/File:Gray1824.middlesex.jpg "Middlesex In 1824")
### If the country is The United Kingdom, how come the ISO 3166-2 code is GB?


The UK’s full name is The United Kingdom of Great Britain and Northern Ireland and although the United Kingdom and Great Britain are used interchangeably, Great Britain really refers to England, Scotland and Wales. At the time of writing, both GB and UK are formal ISO 3166-2 codes for the United Kingdom with GB being the assigned code for Great Britain and UK being exceptionally reserved by the United Kingdom.
### If the country is The United Kingdom, is England a country?


To be formal and precise, the United Kingdom is a unitary state, not a country, with four “member” countries; England, Northern Ireland, Scotland and Wales.
### If England is a country, do I use it in an address?


Normally, no. A full UK address consists of the following:
* The addressee’s name, if known or applicable
* The company or organisation, if known or applicable
* The building name; optional if the building has a number
* The number of the building and the name of the street
* The locality name;optional
* The Post Town
* The county; optional if a Post Town and Postcode are supplied
* The Postcode


… for example, take our office address of Yahoo! Geo Technologies, 125 Shaftesbury Avenue, London, WC2H 8AD. This address has no building name, a building number and street, no locality name, a Post Town, no county as we have a Post Town and a Post Code, and a Post Code.

Which brings me neatly to another example of Rule 4 and the missing county of this post’s title. The UK’s postal hierarchy and administrative hierarchy are not the same. Since 1996 the first half of a UK postcode, known as the outward code, has been used to help in the sorting of mail but prior to this a set of postal counties were used as part of addresses and these frequently do not match the current set of administrative counties. For example, the county of Middlesex was formally abolished in 1965 with the majority of the county becoming part of Greater London. Despite this and despite the 1996 postcode changes, Middlesex lives on as a postal county and as informal area name with the side effect that it is still possible to send mail, and have it delivered, to places in a county which hasn’t existed for over 40 years.

Oh, and Yahoo! GeoPlanet, naturally, recognises Middlesex and correctly identifies it as a [Historical County](http://where.yahooapis.com/v1/places.q%28%27middlesex%27%29?appid=%5Byour-appid-here%5D "http://where.yahooapis.com/v1/places.q%28%27middlesex%27%29?appid=%5Byour-appid-here%5D").


