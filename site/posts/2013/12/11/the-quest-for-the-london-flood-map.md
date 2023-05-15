title: The Quest For The London Flood Map
slug: the-quest-for-the-london-flood-map
date: 2013-12-11 22:43:49
tags: cartography,critique,data,geotagged,map,mapgasm,open,redlands,style
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: Augie's Coffeehouse, 113 N 5th Street, Redlands CA
geo_lng: -117.18151
geo_lat: 34.05693

My morning's reading today has been dominated by a map image that the UK's Environment Agency released on December 6th that, to quote the Tweet, shows "<a href="https://twitter.com/EnvAgency/status/408941460743278592" target="_blank">the extent of potential flooding of London if the Thames Barrier wasn't in place</a>". If you know London at all, it's certainly an arresting image but like so many times when I encounter a map, I want to interact with it, move it, see whether where I live in London would have been impacted. So I started investigating.

Some background context is probably in order. On December 5th. the UK's Met Office issued [severe weather warnings](http://www.metoffice.gov.uk/news/releases/archive/2013/storm-surge "http://www.metoffice.gov.uk/news/releases/archive/2013/storm-surge") for the East Coast of England. A combination of a storm in the Atlantic to the north of Scotland, low atmospheric pressure and high tides were all combining to push a massive swell of water through the narrows of English Channel, in effect squeezing the water through the Dover Strait. As the North Sea and English Channel are relatively shallow, the sea would back up and had the potential to flood large areas of the East Coast of England as well as the areas surrounding the tidal stretch of the River Thames and that means London and possibly even where I live in Teddington, which marks the upper limit of the tidal Thames. Thankfully for those of us who live West of Woolwich, the Thames Barrier exists to protect London from such flooding, though I'm sure this is less of a comfort to those people who live to the East of the barrier.

<!-- TEASER_END -->

[![3WxNK](/wp-content/uploads/2013/12/3WxNK-1024x704.png)](http://ow.ly/i/3WxNK/original "http://ow.ly/i/3WxNK/original")

But back to that map. It's a nice overlay of flood levels on the Docklands area of London based on satellite imagery. The cartography is simple and pleasing; light blue for the River Thames and Bow Creek, darker blue for the banks of the rivers and a washed out aquamarine for areas that would be flooded. But it's a static image. I can't pan and scroll it. The [Tweet](https://twitter.com/EnvAgency/status/408941460743278592 "https://twitter.com/EnvAgency/status/408941460743278592") from the Environment Agency and the image itself contained no context as to where it came from or how it was made. So I browsed over to the Environment Agency's website in search of enlightenment.

The [Environment Agency](http://www.environment-agency.gov.uk/default.aspx "http://www.environment-agency.gov.uk/default.aspx") is a governmental body and that's very much apparent from the website. It simply screams *corporate website produced by a large contractor*. But no matter, I'm not here to critique website design; I'm here looking for a map. So I looked. I searched. If that map is on that website it's not wanting to be found. It's the map equivalent of the planning application for the demolition of Earth in the Hitchhiker's Guide To The Galaxy and is *on display in the bottom of a locked filing cabinet stuck in a disused lavatory with a sign on the door saying **Beware of the Leopard***. But what I did find was this map ... the [Risk Of Flooding From Rivers And Seas](http://maps.environment-agency.gov.uk/wiyby/wiybyController?topic=floodmap&layerGroups=default&lang=_e&ep=map&scale=8&x=518932&y=172934#x=454109&y=314486&lg=1,&scale=1 "http://maps.environment-agency.gov.uk/wiyby/wiybyController?topic=floodmap&layerGroups=default&lang=_e&ep=map&scale=8&x=518932&y=172934#x=454109&y=314486&lg=1,&scale=1") map. With this map I could finally find out what risk there was of flooding to my local area. Eventually.

Now it's only fair to state upfront that the original version of this post, from this point onwards, was less a critique of a map and much more of a scathing flaying alive of a map. But thankfully before I posted this, I'd also taken the time to read Gretchen Peterson's [Getting Along: The Objective And The Subjective In Mapping](http://www.gretchenpeterson.com/blog/?p=3456 "http://www.gretchenpeterson.com/blog/?p=3456"). After rereading my original post, it was only too evident that calling it a critique was unfair as it was far far too subjective. So I rewrote it, trying to adhere to being objective wherever I could be.

[![flood-1](/wp-content/uploads/2013/12/flood-1.png)](/wp-content/uploads/2013/12/flood-1.png "/wp-content/uploads/2013/12/flood-1.png")

So let's start ... this map has some significant flaws. The questions are why and what could be done to rectify those flaws?

[![flood-2](/wp-content/uploads/2013/12/flood-2.png)](/wp-content/uploads/2013/12/flood-2.png "/wp-content/uploads/2013/12/flood-2.png")

The map starts zoomed out to encompass the entirety of England, with no apparent flood information at all. There's a prompt to "enter a postcode or place name", but I know where I live so I try to zoom in by double clicking. The map's click event is trapped as I'm told to "zoom in query the map" which I work out to mean I have to use the map's zoom slider control. But if you take the time to write some code to trap the act of clicking on a map, why not go one step further and use the double click paradigm for map navigation which is by now almost universal? But this is also a flood map, so why not use my web browser's built in geolocation facility to automatically zoom the map to where I am right now, or at least present the map in a form where there's some flood information available. Why make the user do all of this additional work? With a few simple lines of Javascript code, the map could be made so much more immediate and easily usable.

[![flood-3](/wp-content/uploads/2013/12/flood-3.png)](/wp-content/uploads/2013/12/flood-3.png "/wp-content/uploads/2013/12/flood-3.png")

So I started to zoom in, using the pan control. The next zoom level was less than visually pleasing. Jagged, blocky and pixellated place labels are scattered across the map. It's almost as if the map's tiles were hand rolled, but more about that in a minute.

When zooming, the map's centre had changed and after my initial double click zooming attempts were rebuffed, I feared that I wouldn't be able to pan the map without recourse to the pan controls. Indeed my first attempt at panning looked more as if I was trying to drag the map image out of the browser window. But then a few seconds later the map redrew itself. This was less a slippy map and much more a *slow*-py map.

[![flood-4](/wp-content/uploads/2013/12/flood-4.png)](/wp-content/uploads/2013/12/flood-4.png "/wp-content/uploads/2013/12/flood-4.png")

After zooming in a further 3 times, the pixellation on the place labels had cleared up but the map itself was washed out and faded, almost as if there was a semi transparent overlay on top of the underlying base map, which itself looked like the Ordnance Survey map style. It also looked, to be frank, a bit of a mess. Given that I was trying to find out flooding information there was far too much information being displayed in front of me and apart from the map's legend, helpfully marked *legend*, none of it was flood related. Yet.

[![flood-5](/wp-content/uploads/2013/12/flood-5.png)](/wp-content/uploads/2013/12/flood-5.png "/wp-content/uploads/2013/12/flood-5.png")

One further zoom level in and I finally found what I was looking for. A visualisation of what looked like an overflowing River Thames. At first sight this explained the washed out nature of the map I'd seen earlier. Surely this was due to an overlay containing the flooded areas but rather than overlay just the flooded area, the entirety of the map was overlaid, with the non-flooded areas being made translucent to allow the underlying map to bleed through.

The great thing about Javascript web maps is that, if you know how, you can actually break apart the layers of the map and see how it's constructed. Doing just this led me to discover that the flood data I was seeing wasn't an overlay. With the exception of the map's pan and zoom controls, the map is a single layer. Whoever was behind that map has made their own tile set with the flood data an intrinsic part of the map. All of which is extremely laudable but at higher zoom levels the tile set just doesn't work and the choice of underlying base map leaves quite a bit to be desired.

[![flood-7](/wp-content/uploads/2013/12/flood-7.png)](/wp-content/uploads/2013/12/flood-7.png "/wp-content/uploads/2013/12/flood-7.png")

Finally, after several more pan and zoom operations I could see my local area. But it had taken 7 attempts at zooming in and almost as many panning operations to keep the map centred on where I wanted to see. Now it's true that entering my postal code would have taken me there immediately but one of the habits we've developed when viewing digital maps is to be able to dive in and get where we want to go by interacting with the map itself and not neccessarily with the map's controls.

Even when I'd found the information I want, the flood data seems placed on top of the base map almost as an afterthought, despite the two data sets being baked together into a single map layer. I can appreciate the cartographical choice of using shades of blue for the two flood zones, but the pink chosen to show existing flood defences is a questionable, albeit subjective, choice. The flood data just doesn't sit well on top of the underlying Ordnance Survey map, whose map style just clashes with the flood data's style. Finally and probably worst of all, the map is slow, almost to the point of being unusable. All of which makes me wonder how many people have come across this map and just simply given up trying to find the information they're looking for. If only the map looked as good as the original graphic that started me on this map quest (pun intended). Surely someone could do better?

Maybe someone will. The flood zones are available via WMS from the UK's [data.gov.uk](http://data.gov.uk/data/search?q=flood&publisher=environment-agency&theme-primary=Geography "http://data.gov.uk/data/search?q=flood&publisher=environment-agency&theme-primary=Geography") site, though that very same site warns you that registration is required and they're not under an open license. Even taking a simpler base map approach and overlaying the tiles from the WMS would make the map far more accessible and easier to comprehend. Some of the data itself looks like it could be available from Environment Agency's [DataShare](http://www.geostore.com/environment-agency/WebStore?xml=environment-agency/xml/application.xml "http://www.geostore.com/environment-agency/WebStore?xml=environment-agency/xml/application.xml") site, though it's only fair to say that this site and data.gov.uk does suffer from the same lack of discoverability and ease of use that the flood map suffers from.

For geospatial information such as flood data, there's no better way to make it easily comprehensible and visible than on a map. The mere fact that there is such a map is to be applauded. It just could be so much better and this would take a trivial amount of technical acumen from anyone who's used to making even simplistic digital maps. This map could be amazing and shine so brightly but as it currently stands, it can only receive the same score as I saw too many times on my school report cards. "*B-. Could try harder.*"



Image Credits: [Environment Agency](https://twitter.com/EnvAgency/status/408941460743278592 "https://twitter.com/EnvAgency/status/408941460743278592").


