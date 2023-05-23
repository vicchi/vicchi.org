title: Latitude Inconsistitude
slug: latitude-inconsistitude
date: 2010-05-20 16:57:16
tags: api,fireeagle,geotagged,google,latitude,london,privacy,yahoo
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: the Yahoo! London office
geo_lng: -0.1292006
geo_lat: 51.5141985

In the midst of yesterday's I/O event, Google announced the launch of the long rumoured API for their [Latitude](https://www.google.com/intl/en_us/latitude/intro.html "https://www.google.com/intl/en_us/latitude/intro.html") location sharing platform; there's ample coverage and commentary on [ReadWriteWeb](https://www.readwriteweb.com/archives/google_provides_free_location_awareness_to_any_app_with_free_latitude_api.php "https://www.readwriteweb.com/archives/google_provides_free_location_awareness_to_any_app_with_free_latitude_api.php") and on [TechCrunch](https://techcrunch.com/2010/05/19/google-latitude-api/ "https://techcrunch.com/2010/05/19/google-latitude-api/") and that's just fine because that's not what I want to write about.

When it was launched in early 2009, Latitude was the receipt of some fairly harsh press from the informed tech media and from the [uninformed](https://www.metro.co.uk/news/519982-fears-that-new-google-software-will-spy-on-workers "https://www.metro.co.uk/news/519982-fears-that-new-google-software-will-spy-on-workers") traditional media and I argued for some [latitude in the discussions](/2009/02/08/latitude-media-coverage-needs-more-latitude/ "/2009/02/08/latitude-media-coverage-needs-more-latitude/") on, err, Latitude.

<!-- TEASER_END -->

Latitude kept on getting compared to Yahoo's [Fire Eagle](https://fireeagle.yahoo.net "https://fireeagle.yahoo.net") and the main gripes seemed to be:


1. Latitude is a consumer application built into Google Maps, not a platform
2. Latitude doesn't have an API
3. Latitide's privacy model is opt-in but all or nothing


So now Latitude has an API and everyone's happy. Right?

[![Unofficial Google Latitude T-Shirt](https://farm4.static.flickr.com/3526/3253226650_73c1d59f42_d.jpg)](https://www.flickr.com/photos/blackbeltjones/3253226650/ "Unofficial Google Latitude T-Shirt")

Wrong. The previous gripes have been done away with and replaced with three more gripes.
1. Latitude needs to run in the background and so will either drain battery life or won't run in the background on an iPhone at all.
2. Latitude now has granular privacy controls but these are on the back-end so Google will know your location prior to federating it to location consumers via the API.
3. Latitude needs a Google account to use.


There's a lot of inconsistency here.
1. Latitude, as part of Google Maps, already runs in the background on handsets that support that. The iPhone doesn't, *yet*, but that's an iPhone OS issue not a Latitude issue. Short battery life is a feature of almost all smartphone class handsets, Latitude or not.
2. Latitude gains granular privacy controls but they're on the back-end so this is a bad thing. Fire Eagle has granular privacy controls and they're on the back-end but this has never been a source of complaint.
3. Latitude needs a Google account to use. Correction. Latitude has always needed a Google account to use, so this is a bad thing. Fire Eagle has always needed a Yahoo! Id to use, and yet this is something not seen as a contentious issue.


One of the criticisms that was levelled at Fire Eagle was lack of a definitive consumer application at launch; a not unfair criticism. Latitude's taken the inverse approach, launching with a consumer application and then opening up an API almost a year later.

Time will tell which of these two location sharing platforms will dominate or whether they will be usurped by another unseen contender.
Photo Credits: [moleitau](https://www.flickr.com/photos/blackbeltjones/3253226650/ "https://www.flickr.com/photos/blackbeltjones/3253226650/") on Flickr.


