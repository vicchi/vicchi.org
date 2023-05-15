title: Location vs. Place vs. POI
slug: location-vs-place-vs-poi
date: 2010-11-16 06:25:03
tags: geotagged,location,place,poi,w3c,workingroup
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: the BA North Lounge, Heathrow Airport, Terminal 5
geo_lng: -0.484344
geo_lat: 51.474161

With Nokia, Google, Facebook and a whole host of other players recognising the inherent value in the concept of Places and Points Of Interest (POIs), it's good to see that the [World Wide Web Consortium](http://www.w3.org/ "http://www.w3.org/") (W3C), the standards body of the Web, is getting involved. On the 30th. September 2010, the [W3C Points Of Interest Working Group](http://www.w3.org/2010/POI/ "http://www.w3.org/2010/POI/") (POIWG) was launched with a "mission to develop technical specifications for representation of POI information on the Web". I should pause to make a brief disclaimer here; I'm sitting on the POIWG as part of my day job with Ovi Places at Nokia.

Of course, in order to develop those technical specifications, we need to define what a POI is in the first place. There's a lot of acronyms flying around (3 in the first paragraph of this post alone) and a lot of conflicting terminology further confusing the matter. Even the most cursory of glances through Web content on this topic shows the terms Place, Location and POI being used interchangably and so as part of the discussion I tried to codify the difference between, and most importantly the inter-relationships between, these three seemingly straightforward terms. The genesis for this post first [appeared on the POIWG public mailing lis](http://lists.w3.org/Archives/Public/public-poiwg/2010Nov/0044.html "http://lists.w3.org/Archives/Public/public-poiwg/2010Nov/0044.html")t last week (and W3C working groups conduct their business as much as possible in public) but I've fleshed it out in a bit more detail here.

<!-- TEASER_END -->

[![Locations vs. Places vs. POIs](http://farm2.static.flickr.com/1438/5180578855_a73d97cce7_d.jpg)](http://www.flickr.com/photos/vicchi/5180578855/ "Locations vs. Places vs. POIs")

So what is a POI? ... [Wikipedia defines a POI](http://en.wikipedia.org/wiki/Point_of_interest "http://en.wikipedia.org/wiki/Point_of_interest") as a Point Of Interest ... a "specific point location that someone may find useful or interesting". But we really need a more subtle and complex definition.

To my mind, a POI is part of a loosely coupled and inter-related geographical terms, comprised of (in generalised order of scope and granularity) Locations, POIs and Places.

A Location is a geographical construct; a physical fixed point on the surface of the Earth. It could also be used to describe a fixed point on the surface of another celestial body but for the purposes of this Working Group, we'll restrict the scope to terrestrial geographies. A Location is described by a centroid (a longitude and latitude in a widely adopted system, such as WGS-84) and an extent, either a Minimum Bounding Rectangle or a vector set. A Location is temporally persistent, it does not generally change over time.

A POI is a human construct, describing what can be found at a Location. As such a POI typically has a fine level of spatial granularity. A POI has the following attributes ...


1. A name
2. A current Location (see the commentary below on the loose coupling of POI and Location)
3. A category and/or type
4. A unique identifier
5. A URI
6. An address
7. Contact information


A POI has a loose coupling with a Location; in other words, a POI can move. When this occurs, the loose coupling with the previous location is removed and, providing the POI continues to exist, it is then coupled with its new Location. This can happen when the human activity at the POI relocates, such as when your local coffee shop relocates to a new address. It's still your local coffee shop, it's now found at a different Location.

A POI has temporal boundaries; it starts when the human activity at that Location commences and ends when human activity ceases, such as when a company or organisation goes out of business.

And then there's a Place, which is also a human construct and typically has a coarse level of spatial granularity. Places are typically larger scale administrative constructs, either informally or formally defined. Countries, States, Counties, Districts, Neighbourhoods and postal codes or telephone area codes are all Places. Places are also informally or colloquially defined, such as the Home Counties in the United Kingdom and The Bay Area in the United States.

Places have spatial relationships; with parents, children, adjacencies and "contained by" semantics. Places also have the same attribute set as POIs, although with differing interpretations based on scale; for example, the address of a Place or its URI would refer to the address of the administrative or governing body of the Place.

A Place typically contains multiple POIs and can also be coterminous with a POI. In the former case, a Place, such as a city or a neighbourhood, will contain multiple POIs. In the latter case, a Place and a POI will occupy the same position and extent, such as in the case of Yellowstone National Park, which is both a Place and a POI.

As discussions in the POIWG get deeper and deeper into what constitutes a POI and, equally importantly, what doesn't, it'll be interesting to see how much of my take on the subject survives.



