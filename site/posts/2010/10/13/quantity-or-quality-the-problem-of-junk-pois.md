title: Quantity Or Quality? The Problem Of Junk POIs 
slug: quantity-or-quality-the-problem-of-junk-pois
date: 2010-10-13 14:17:17
tags: berlin,foursquare,geotagged,location,place,poi,quality,quantity,social
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: the Nokia gate5 office in Berlin
geo_lng: 13.38521
geo_lat: 52.53105

In my [recent talk](/2010/10/09/finding-inspiration-and-teaching-myself-location-history-at-the-bcs-geospatial-sg/ "/2010/10/09/finding-inspiration-and-teaching-myself-location-history-at-the-bcs-geospatial-sg/") to the British Computer Society's Geospatial Specialist Group, I touched on the "*race to own the Place Space*". While the more traditional geographic data providers, such as Navteq and Tele Atlas are working away adding Points Of Interest to their data sets, it's the smaller, social location startups, that are getting the most attention and media coverage. With their apps running on smartphone hardware, Foursquare, Gowalla and Facebook Places, amongst others, are using crowd sourcing techniques to build a large data set of their own.

For them to do this, the barriers to entry have to be very low. Ask a user for too much information and you'll substantially reduce the number of Places that get created; and thereby hangs the biggest challenge for these data sets. Both the companies and their users want the Holy Grail of data, ***quantity and quality***. But the lower the barriers to entry, the more quality suffers, unless there's a dedicated attempt to manage and clean up the resultant data set.

<!-- TEASER_END -->

Nowhere is this more evident than in the [Foursquare entry for the BCS](https://foursquare.com/venue/1023691 "https://foursquare.com/venue/1023691") itself. According to the [BCS website](https://www.bcs.org/server.php?show=nav.8401 "https://www.bcs.org/server.php?show=nav.8401"), the London HQ of the UK's Chartered Institude for IT is at *The Davidson Building, 5 Southampton Street, London, WC2E 7HA*. Now compare that to Foursquare, which lists *BCS HQ LONDON as 5 south hompton road, The strand, london, london uk*. Complete with interesting use of capitalisation. That's the first problem.

[![](/wp-content/uploads/2010/10/BCS-Foursquare-Incorrect.jpg "The BCS On Foursquare Take 1")](/wp-content/uploads/2010/10/BCS-Foursquare-Incorrect.jpg "/wp-content/uploads/2010/10/BCS-Foursquare-Incorrect.jpg")

Foursquare helpfully shows this on a map but evidently uses the provided address information as opposed to any associated geo-coordinate that was gleaned from the onboard GPS on whichever smartphone was used to create this "*place*". Google has evidently tried to interpret *south hompton road* and displays the map at the first entry that Google's reverse geocoder returns, which is *5 Hampton Road*, in Hampton Hill. That's not Covent Garden. That's not even Central London. That's way out in the suburbs of Richmond-upon-Thames. That's the second problem.

[![](/wp-content/uploads/2010/10/Google-Disambiguation.jpg "Google Disambiguation")](/wp-content/uploads/2010/10/Google-Disambiguation.jpg "/wp-content/uploads/2010/10/Google-Disambiguation.jpg")

But there's also more than one entry in [Foursquare for the BCS in London](https://foursquare.com/venue/206285 "https://foursquare.com/venue/206285") which highlights the third problem; large amounts of duplicate Places created by users either unwilling to search too closely for an existing Place or who are trying to subvert the gaming aspect to social location apps in order to gain points or recognition in the community for number of Places created, number of Mayorships gained and so on.

[![](/wp-content/uploads/2010/10/BCS-Foursquare-Correct.jpg "BCS Foursquare Correct")](/wp-content/uploads/2010/10/BCS-Foursquare-Correct.jpg "/wp-content/uploads/2010/10/BCS-Foursquare-Correct.jpg")

Quantity? Yes. Quality? Sadly no. Foursquare are reliant on their user community to clear up their data and as this example shows, that's not always an effective strategy. As an industry we may be building a massive Place based view of the world but we've a long way to go before we can rely on data produced in this manner.

A geographic nod of the hat must go to [Harry Wood](https://twitter.com/#!/harry_wood/statuses/27226371393 "https://twitter.com/#!/harry_wood/statuses/27226371393") for spotting this classic example of a "*junk POI*"; I'm not singling Foursquare out for any particular opprobrium here by the way, all of the social location data sets have their own howlers, as do the commercial POI data sets, ready and waiting for people to stumble across.




