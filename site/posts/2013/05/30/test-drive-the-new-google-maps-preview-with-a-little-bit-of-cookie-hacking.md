title: Test Drive The New Google Maps Preview; With A Little Bit Of Cookie Hacking
slug: test-drive-the-new-google-maps-preview-with-a-little-bit-of-cookie-hacking
date: 2013-05-30 12:22:35
tags: cookie,geotagged,google,map,mapgasm,maps,preview,teddington
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

There's a new version of Google Maps for the web but so far it's not for everyone. You need to <a href="https://maps.google.com/help/maps/helloworld/desktop/preview/" target="_blank">request an invite</a> and not everyone gets one of those it seems. But if you're impatient or curious and don't mind a tiny amount of technical hackery you can get to test drive the new version without the need to be one of those blessed with a preview invite.

If you go to Google Maps right now, you'll still see the current incarnation of Google's map. This is what the map of my home town looks like. The new preview version is there, you just can't see it.

<!-- TEASER_END -->

[![Google Maps](/wp-content/uploads/2013/05/Google-Maps.png)](/wp-content/uploads/2013/05/Google-Maps.png "/wp-content/uploads/2013/05/Google-Maps.png")

The key to unlocking the new preview is held in a cookie called `NID`. If you change the cookie's value from one impenetrable string of characters to another, equally impenetrable string of characters, the preview will automagically get unlocked. There's several ways to modify a cookie; as I use Chrome on a daily basis I used the [Edit This Cookie](https://chrome.google.com/webstore/detail/edit-this-cookie/fngmhnnpilhplaeedifhccceomclgfbg?hl=en "https://chrome.google.com/webstore/detail/edit-this-cookie/fngmhnnpilhplaeedifhccceomclgfbg?hl=en") extension, but there's other ways to do this depending on your browser of choice. Once you've found the `NID` cookie, change its value to ...

`67=MzRdy0T16I7lw9REhtIF5N5lkuoSy1s7cJGFa24wZ6pRK0kRpU9SqiTWy9r_DQ4UxdmHjSeMImvsqgrVUbC0T9FhuESvl__dlkZwRBTxkzxWcdq8vDcpuvnuve6yI78LeqFFK21yc0_6Bp3cHS4Z3a6nwwBQm_fW8DfHF7lv6OrkDosmMa-GaDOLVXR2ewK5-xAk`

... and reload the page. Hey presto. Welcome to the new Google Maps.

[![Google Maps Preview](/wp-content/uploads/2013/05/Google-Maps-Preview.png)](/wp-content/uploads/2013/05/Google-Maps-Preview.png "/wp-content/uploads/2013/05/Google-Maps-Preview.png")
One final word of warning; this is a hack. It's likely to change or go away at any time. If you're a Chrome user, it also seems to wreak havoc with Chrome's omnibox searches as well. Your mileage, as they say, may vary.





