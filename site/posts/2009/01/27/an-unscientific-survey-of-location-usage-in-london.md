title: An Unscientific View of Location Usage in London
slug: an-unscientific-survey-of-location-usage-in-london
date: 2009-01-27 10:50:05
tags: #geomob,crunchbase,geo,location,london
category: articles
link: 
description: 
type: text
has_math: no
status: published

With the [Yahoo! Geo Technologies](https://wwww.ygeoblog.com/ "https://wwww.ygeoblog.com/") sponsored, [London #geomob meetup](https://gmdlondon.ning.com/ "https://gmdlondon.ning.com/") coming up this week, this weekend I took a look at how many companies were actively using location within London. No easy task. After much web searching this weekend I took a trawl through those companies tagged as being in London in [CrunchBase](https://www.crunchbase.com "https://www.crunchbase.com"), the database of tech companies that [TechCrunch](https://www.techcrunch.com "https://www.techcrunch.com") operates.

Not strictly scientific but then again this is more about gauging a trend than being strictly empirical.

<!-- TEASER_END -->

[![crunchbase_thumbnail](/wp-content/uploads/2009/01/crunchbase_thumbnail.gif "crunchbase_thumbnail")](/wp-content/uploads/2009/01/crunchbase.gif "/wp-content/uploads/2009/01/crunchbase.gif")Minor detour; in CrunchBase you can search for companies by location with [London](https://www.crunchbase.com/maps/city/London "https://www.crunchbase.com/maps/city/London") being flagged as a popular city. For the first page of London companies this works fine, with all the companies being shown within the boundary of the M25 on an embedded Google map. But on the [second page](https://www.crunchbase.com/maps/city/London?page=2 "https://www.crunchbase.com/maps/city/London?page=2") it would seem that rather than geocoding the company address, CrunchBase are either doing keyword matching on tokenised text, picking up London Ontario or using the address of a parent company in the continental US. Whatever is happening it looks very odd when a company with an address in London WC2 is shown in Kansas.

The executive summary is that one of the prime drivers, and one presumes source of direct or indirect monetisation, is real eastate and property search, either as a direct USP for a site or as a side effect of a social network community. Another is that Google Maps API integration continues to dominate, both from a geocoding API perspective and as a geospatial presentation layer. I'm also particularly pleased to see innovators within this domain recognise the benefits and appeal of integrating with [Fire Eagle](https://fireeagle.yahoo.net "https://fireeagle.yahoo.net"), with the disclosure that I'm both a massive fan of Fire Eagle and work for the group within Yahoo! which provides the [geotechnology](https://www.ygeoblog.com "https://www.ygeoblog.com") which underpins the Fire Eagle platform.


#### [Adviva](https://www.adviva.com/ "https://www.adviva.com/")


Online ad network offering geotargeted campaigns.
#### [Archlight Media Technology](https://www.arclightmediatech.com/ "https://www.arclightmediatech.com/")


Operates [Zoomf](https://www.zoomf.com "https://www.zoomf.com"), a property search engine allowing searches tailored to a range of geo granularities from city to postcode district, though not to postcode sector or unit.
#### [Cheapflights.com](https://www.cheapflights.com/ "https://www.cheapflights.com/")


Flight price search and comparison engine; allows geo search by country, city, resort and airport name and IATA code.
#### [Chinwag](https://www.chinwag.com "https://www.chinwag.com")


Not a location user per se but a media community platform which is particularly strong in championing LBS/LBMS and location in general.
#### [Dopplr](https://dopplr.com/ "https://dopplr.com/")


Travel sharing platform with [Fire Eagle](https://fireeagle.yahoo.net "https://fireeagle.yahoo.net") integration.
#### [Dothomes](https://www.dothomes.com/ "https://www.dothomes.com/")


Real estate search engine allowing searches tailored to range of granularities from city to postcode district, but again not to postcode sector or unit.
#### [Mapness](https://mapness.net/ "https://mapness.net/")


Online travel journal sharing platform. Places/locations are geotagged within each entry via the [Google Maps API](https://code.google.com/apis/maps/index.html "https://code.google.com/apis/maps/index.html").
#### [My Neighbourhoods](https://www.myneighbourhoods.co.uk/ "https://www.myneighbourhoods.co.uk/")


Service allowing users to find out more about the area in which they live. The service would appear to support full postcode search, which implies [PAF](https://en.wikipedia.org/wiki/Postcode_Address_File "https://en.wikipedia.org/wiki/Postcode_Address_File") licensing, but searches are truncated to postcode district. Biased towards property search, which is supplied via [Nestoria](https://www.nestoria.co.uk "https://www.nestoria.co.uk").
#### [Rightmove](https://www.rightmove.co.uk/ "https://www.rightmove.co.uk/")


The "UK's number one property website"; property searching can be selected by county, city/town/village, borough/suburb, postcode district (again full postcode search is claimed but not implemented) and some POIs. Searches can also be constrained at a distance from the focus of the search.
#### [Rummble](https://www.rummble.com/ "https://www.rummble.com/")


A location based discovery tool and social search platform which is integrated with [Fire Eagle](https://fireeagle.yahoo.net "https://fireeagle.yahoo.net").
#### [School of Everything](https://www.schoolofeverything.com/ "https://www.schoolofeverything.com/")


Social networking platform which attempts to match tutors with pupils by subject and location.
#### [Where Are You Now?](https://www.wayn.com/ "https://www.wayn.com/")


Travel based social networking platform, which is directly competing with TripUp, [HereOrThere](https://www.hereorthere.com/ "https://www.hereorthere.com/") and [TravelMuse](https://www.travelmuse.com/ "https://www.travelmuse.com/"), allowing 'friends' met whilst travelling to keep in touch.
#### [Here Or There?](https://hereorthere.com "https://hereorthere.com")


Travel based social networking platform, using [Yahoo! Maps](https://developer.yahoo.com/maps/ "https://developer.yahoo.com/maps/") based location identification and geotagging.
#### [WorkHound](https://www.workhound.co.uk/ "https://www.workhound.co.uk/")


Job and recruitment inventory platform; offering job searches by county, city/town/village, borough/suburb and postcode district. Searches can also be constrained at a distance from the focus of the search.
#### [Nestoria](https://www.nestoria.co.uk/ "https://www.nestoria.co.uk/")


Home and property search engine which aggregates content from property portals. Used by Google as a [Maps](https://code.google.com/apis/maps/index.html "https://code.google.com/apis/maps/index.html") showcase and Yahoo! as a [YUI](https://developer.yahoo.com/yui/ "https://developer.yahoo.com/yui/") showcase. Nestoria has also recently launched [where-can-i-live.com](https://www.where-can-i-live.com/londonproperty "https://www.where-can-i-live.com/londonproperty") which uses [OpenStreetMap](https://www.openstreetmap.org/ "https://www.openstreetmap.org/") as the preferred Maps API and presentation layer.
#### [GeoPostcodes](https://www.geopostcodes.com/ "https://www.geopostcodes.com/")


A ZIP and postcode search engine which offers geocoded databases of localities, ZIPs (to district level), admin hierarchies and subdivisions and centroids in 60 countries. As an example the Jan 2009 update for the UK, with ~37,000 records is on offer for EUR 29.95/GBP 28.00/USD 39.00.

