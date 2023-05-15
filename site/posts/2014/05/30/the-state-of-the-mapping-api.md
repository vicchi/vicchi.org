title: The State Of The Mapping API
slug: the-state-of-the-mapping-api
date: 2014-05-30 11:15:00
tags: 
category: blog
link: 
description: 
type: text
has_math: no
status: published

This week the <a href="http://geobusinessshow.com/" target="_blank">GeoBusiness</a> conference took place in London and as far as geo-themed conferences go it was a broad themed and mixed bag of an event. GIS was heavily represented as was the BIM element of this geo-discipline. The collection of raw data was a prevailing theme on the exhibition booths with drones aplenty and LIDAR cars out in the car park of the Business Design Centre. Thankfully the data and web driven part of the industry was also represented and I played my part by giving a talk.

I decided to talk about the current state of the wide range of web maps APIs we have in our toolkit and with tongue placed slightly in cheek I called the talk The State Of The Mapping API. A personal homage to OSM's State Of The Map conference if you will.

<!-- TEASER_END -->

[![Slide01](/wp-content/uploads/2014/05/Slide01.jpg)](/wp-content/uploads/2014/05/Slide01.jpg "/wp-content/uploads/2014/05/Slide01.jpg")
[![Slide02](/wp-content/uploads/2014/05/Slide02.jpg)](/wp-content/uploads/2014/05/Slide02.jpg "/wp-content/uploads/2014/05/Slide02.jpg")


So, hello, I’m Gary and I’m from the Internet. I’m a self-confessed map addict, a geo-technologist and a geographer. I’m Geotechnologist in Residence for Lokku in London. I used to be Director of Global Community Programs for Nokia’s HERE maps and before that I led Yahoo’s Geotechnologies group in the United Kingdom. I’m a founder of the Location Forum, a co-founder of WhereCamp EU, I’m the chair of the W3G conference and I’m also a Fellow of the Royal Geographical Society.


[![Slide03](/wp-content/uploads/2014/05/Slide03.jpg)](/wp-content/uploads/2014/05/Slide03.jpg "/wp-content/uploads/2014/05/Slide03.jpg")
There’s a lot of URLs in the slides to follow and rather than try to frantically jot them down, [this is the only URL you really need to know about](http://vtny.org/nw "http://vtny.org/nw"). If you go there right now, this link will 404 on you but sometime tomorrow this where my slides and all my talk notes will appear here.


[![Slide04](/wp-content/uploads/2014/05/Slide04.jpg)](/wp-content/uploads/2014/05/Slide04.jpg "/wp-content/uploads/2014/05/Slide04.jpg")
I’m going to be talking about mapping APIs; the point where the web meets maps. This is a wide ranging topic so I’m going to concentrate solely on web maps, forgoing discussions on mobile app development or GIS. Don’t’ be scared. The lines of code you can see behind me is as technical as this talk gets.


But although this talk isn’t technical in itself, there’s a lot of technical stuff going on on the slide behind. You need a web browser to view the map. In that browser you need to be able to inject map images into the web page, to preload other images for when you pan and zoom, to fetch this data from another web server other than the one that’s producing this page and a programming language to make all of this happen.


[![Slide05](/wp-content/uploads/2014/05/Slide05.jpg)](/wp-content/uploads/2014/05/Slide05.jpg "/wp-content/uploads/2014/05/Slide05.jpg")
So before I talk about a suitable subset of what's available on today's internet, it's probably a good idea to look back. To see how we got here. To see how today’s web maps are able to be a ubiquitous part of our online experience. To indulge in a little bit of history, albeit a very subjective potted history.


[![Slide06](/wp-content/uploads/2014/05/Slide06.jpg)](/wp-content/uploads/2014/05/Slide06.jpg "/wp-content/uploads/2014/05/Slide06.jpg")


Let's start in 1990 and the birth of what we know as the web. Tim Berners Lee created the ability to link documents together, served up from a web server and viewed in a web browser. The language to enable this was called hypertext markup language, or HTML. But this wasn't the graphically rich and interactive medium we're used to today. This was a plain text environment. There wasn't even the ability to add images to web documents.


[![Slide07](/wp-content/uploads/2014/05/Slide07.jpg)](/wp-content/uploads/2014/05/Slide07.jpg "/wp-content/uploads/2014/05/Slide07.jpg")
3 years later, Marc Andreesen was working on the NCSA Mosaic Browser and realized they wanted a way to include images on webpages; so he proposed the `IMG` tag, implemented it, shipped the browser, and it's stayed to this day. That is a typical story for how HTML gains a new tag - someone needs it and implements it, others copy it, and eventually its considered part of the standard.


The `IMG` tag could point to image resources on external servers anywhere on the web, so it was actually the first way you could bring data from other servers onto your page, though the data had to be in image form.


Perhaps the first commonplace use of the `IMG` tag as an API of sorts was for "hit counters." People would put hit counters on their sites to track visitors, and each counter was actually just an `IMG` tag pointing at a server, passing in an ID parameter.


[![Slide08](/wp-content/uploads/2014/05/Slide08.jpg)](/wp-content/uploads/2014/05/Slide08.jpg "/wp-content/uploads/2014/05/Slide08.jpg")
And because there was now a way to embed images in web pages, this meant that if you had a map as an image file you could embed maps in web pages. Coinciding with the the launch of the final wave of the first set of GPS satellites were launched, the first web server that served up maps went online; the Xerox PARC Map Viewer. These were static maps with none of the clicking, tapping, dragging, panning and zooming that we associate with online maps today.


[![Slide09](/wp-content/uploads/2014/05/Slide09.jpg)](/wp-content/uploads/2014/05/Slide09.jpg "/wp-content/uploads/2014/05/Slide09.jpg")
In 1995, Netscape and Sun teamed together to introduce *JavaScript*, a language they predicted would transform the web. At the time they introduced it, JavaScript could only really programmatically do the things you could already do in HTML - like programmatically creating IMG tags -- but it was an important step towards making client-side APIs more possible.


[![Slide10](/wp-content/uploads/2014/05/Slide10.jpg)](/wp-content/uploads/2014/05/Slide10.jpg "/wp-content/uploads/2014/05/Slide10.jpg")
Along with JavaScript came the Document Object Model or DOM, a cross platform way of representing the elements that made up a web page and of accessing and manipulating them programmatically. This was a massive step. A web page could load a Javascript script and that script could start to change the content of the page, adding elements and responding dynamically. The way was paved for enough of today’s web to be present to make web maps.


[![Slide11](/wp-content/uploads/2014/05/Slide11.jpg)](/wp-content/uploads/2014/05/Slide11.jpg "/wp-content/uploads/2014/05/Slide11.jpg")
Also in 1995, MultiMap launched. This is important. We tend to think of digital maps as being a purely Silicon Valley product thanks to Yahoo, Google and the like. But MultiMap was a pioneer and more importantly, it was a British pioneer.


[![Slide12](/wp-content/uploads/2014/05/Slide12.jpg)](/wp-content/uploads/2014/05/Slide12.jpg "/wp-content/uploads/2014/05/Slide12.jpg")
In 1996, Macromedia launched the Flash Player plugin. The `EMBED` or `OBJECT` tags could now be used to embed a SWF file from anywhere on the web. Flash embeds meant we could embed something more interactive than just an image, like a game, an animation or maybe a map.


[![Slide13](/wp-content/uploads/2014/05/Slide13.jpg)](/wp-content/uploads/2014/05/Slide13.jpg "/wp-content/uploads/2014/05/Slide13.jpg")
In 1996, MapQuest started; a subsidiary of R. O’Donelly that produced maps for the Blue Pages, the local information section at the front of US phone directories. MapQuest launched the first commercial web maps application. You could now put maps and other map related content on web sites. The maps came from Navteq and other sources, including MapQuest’s own. The Automobile Association of America were an early customer with a very primitive form of turn-by-turn navigation; you called the AAA, told them your route and they printed a map for your journey.


[![Slide14](/wp-content/uploads/2014/05/Slide14.jpg)](/wp-content/uploads/2014/05/Slide14.jpg "/wp-content/uploads/2014/05/Slide14.jpg")
So we now have early digital maps. But they were small maps. Converting map vector data to raster images took time, the bigger the image the more time it took. Bandwidth over dial up modems also meant that putting a map in a browser was slow. So digital maps were small; they were quicker to produce and they downloaded quicker. They were also ugly maps; a stock cartography style and, in the UK, the dominance of OS map data didn’t make the maps appealing to the eye. Browsers were primitive compared with today and map functionality was very limited; no panning or zooming here. Even MultiMap used this way of producing digital maps though they did a much better job of it than most.


[![Slide15](/wp-content/uploads/2014/05/Slide15.jpg)](/wp-content/uploads/2014/05/Slide15.jpg "/wp-content/uploads/2014/05/Slide15.jpg")
Not many people realise that Yahoo were the first people to launch what we now term slippy maps, where you can click and drag to pan and zoom the map, and integration with search. This is a contested area. Yahoo maintain they launched first in March 2004. Google maintains they did. Even a decent amount of web searching doesn’t turn up a clear cut answer to who was first. But I used to work for Yahoo so for now I’ll believe their version.


[![Slide16](/wp-content/uploads/2014/05/Slide16.jpg)](/wp-content/uploads/2014/05/Slide16.jpg "/wp-content/uploads/2014/05/Slide16.jpg")
In March of 2004, a man called Steve Coast presented ideas for a publicly editable map of the world, OpenStreetmap, at EuroFOO after being inspired by the success of Wikipedia and a growing frustration with the license around proprietary data in general, but in the UK in particular.


[![Slide17](/wp-content/uploads/2014/05/Slide17.jpg)](/wp-content/uploads/2014/05/Slide17.jpg "/wp-content/uploads/2014/05/Slide17.jpg")
In 2005, Jesse James Garrett coined the term `AJAX` to describe the new GMail style of applications which fetch data asynchronously using the Microsoft originated `XMLHttpRequest` technique from 1999.


`XMLHttpRequest` could make a request to your server, get data back from it, process the data, and render it into the page however it liked. By default, you could only bring data in from your own server using `XMLHttpRequest`, but it reduced the time that users spent waiting for pages to load.


After he coined the term and popular JS libraries built in support for `AJAX`, it quickly rose in popularity amongst web developers as the new, right way to build web applications.


We were still limited to using `AJAX` to just getting data from our own domain, however.


[![Slide18](/wp-content/uploads/2014/05/Slide18.jpg)](/wp-content/uploads/2014/05/Slide18.jpg "/wp-content/uploads/2014/05/Slide18.jpg")
Despite being phenomenally popular, web maps were limited by complexity, cost and lack of interaction. Developing a web map app was complex, needing expensive maps and knowledge of how to manipulate geographic and spatial data sets. Surely there was an easier way to use maps on the web? Then, in 2005, it can be argued that the world of web maps changed. Then there was an easier way to use web maps.


[![Slide19](/wp-content/uploads/2014/05/Slide19.jpg)](/wp-content/uploads/2014/05/Slide19.jpg "/wp-content/uploads/2014/05/Slide19.jpg")
It’s February 2005 and Google Maps launches; according to the launch announcement *maps can be fun and useful*. Firstly in the US, then in Japan, Canada and the UK.


[![Slide20](/wp-content/uploads/2014/05/Slide20.jpg)](/wp-content/uploads/2014/05/Slide20.jpg "/wp-content/uploads/2014/05/Slide20.jpg")
2 months later and the first maps mashup emerges; a ride sharing app, built internally at Google using an undocumented API.


[![Slide21](/wp-content/uploads/2014/05/Slide21.jpg)](/wp-content/uploads/2014/05/Slide21.jpg "/wp-content/uploads/2014/05/Slide21.jpg")
This undocumented API didn’t remain private for long and by June people were discovering it and producing their own mashups, such as Housing Maps and the Chicago Crime Map.


[![Slide22](/wp-content/uploads/2014/05/Slide22.jpg)](/wp-content/uploads/2014/05/Slide22.jpg "/wp-content/uploads/2014/05/Slide22.jpg")
Google could have locked down this private API. Instead, John Hanke (ex of Keyhole) formally released the Google Maps API. It made sense. Google needed the internet to grow; more web content to index; more space to place ads on; more brand recognition. What would this free maps API do to the other businesses in this sector? I don’t think they took it too seriously ... at least to start with.


[![Slide23](/wp-content/uploads/2014/05/Slide23.jpg)](/wp-content/uploads/2014/05/Slide23.jpg "/wp-content/uploads/2014/05/Slide23.jpg")
Google’s Maps API was followed in quick succession by similar offerings from Yahoo! and from Microsoft.


[![Slide24](/wp-content/uploads/2014/05/Slide24.jpg)](/wp-content/uploads/2014/05/Slide24.jpg "/wp-content/uploads/2014/05/Slide24.jpg")
In December 2005, Bob Ippolitto wrote a blog post describing a technique he named `JSONP`, which used (hacked) the `SCRIPT` tag to asynchronously bring data in from other servers.


Finally, with `JSONP`, we had a way to bring data in from another server without using a server ourselves - as long as that server provides `JSONP`-compatible output.


With HTML and the `IMG` tag, with `AJAX` and with `JSONP`, all of the pieces we need to make a modern web map are in place.


[![Slide25](/wp-content/uploads/2014/05/Slide25.jpg)](/wp-content/uploads/2014/05/Slide25.jpg "/wp-content/uploads/2014/05/Slide25.jpg")
Maps are now an integral part of today's web. A lot of the products and APIs that started the explosion of web maps are still with us. Some aren't.


Ovi Maps became HERE Maps by way of Nokia Maps.


MultiMap was acquired by Microsoft and became part of Virtual Earth.


Yahoo! gave up on maps entirely by way of a strategic deal with Nokia.


And Virtual Earth gave way to Bing Maps.


The rest of these, and many others, are still with us.


[![Slide26](/wp-content/uploads/2014/05/Slide26.jpg)](/wp-content/uploads/2014/05/Slide26.jpg "/wp-content/uploads/2014/05/Slide26.jpg")
But time is limited, so I'm going to focus on 5 different maps APIs. [Leaflet](http://leafletjs.com/ "http://leafletjs.com/"), [OpenLayers](http://openlayers.org/ "http://openlayers.org/"), [Modest Maps](http://modestmaps.com/ "http://modestmaps.com/"), [Google Maps](https://developers.google.com/maps/ "https://developers.google.com/maps/"), [D3](http://d3js.org/ "http://d3js.org/") and [Raphaël](http://raphaeljs.com/ "http://raphaeljs.com/"). The one common denominator is that they're Javascript APIs. But you can categorise these maps APIs in many different ways.


Leaflet, OpenLayers, D3 and Raphael are all open source. While Google is very much proprietary.


Leaflet, OpenLayers, ModestMaps and Google all use bitmap map images, normally referred to as map files. While D3 and Raphaël use vector data for their map display.


But these are sweeping generalisations; there's a lot of overlap in capabilities and approach.


[![Slide27](/wp-content/uploads/2014/05/Slide27.jpg)](/wp-content/uploads/2014/05/Slide27.jpg "/wp-content/uploads/2014/05/Slide27.jpg")
Let's look at the pros and cons of a proprietary maps API first.


[![Slide28](/wp-content/uploads/2014/05/Slide28.jpg)](/wp-content/uploads/2014/05/Slide28.jpg "/wp-content/uploads/2014/05/Slide28.jpg")
* Provides free or low cost maps to low volume users
* Often must be for non commercial use and the map must be visible to the public
* Tend to be “all in one” solutions, the API as well as base maps and tile servers
* Can include additional features; routing, traffic, geocoding, street level imagery, etc


[![Slide29](/wp-content/uploads/2014/05/Slide29.jpg)](/wp-content/uploads/2014/05/Slide29.jpg "/wp-content/uploads/2014/05/Slide29.jpg")
Pros: Simple to use


Cons: Vendor lock in or lack of flexibility


[![Slide30](/wp-content/uploads/2014/05/Slide30.jpg)](/wp-content/uploads/2014/05/Slide30.jpg "/wp-content/uploads/2014/05/Slide30.jpg")
Compare and contrast the proprietary approach with that of open source.


[![Slide31](/wp-content/uploads/2014/05/Slide31.jpg)](/wp-content/uploads/2014/05/Slide31.jpg "/wp-content/uploads/2014/05/Slide31.jpg")
* Pick and choose the components you need
* Large choice of map styles
* Create your own maps and styles
* Use your own servers, cloud based maps or outsource your map hosting
* Write your own additional functionality or choose from existing plugins and extensions


[![Slide32](/wp-content/uploads/2014/05/Slide32.jpg)](/wp-content/uploads/2014/05/Slide32.jpg "/wp-content/uploads/2014/05/Slide32.jpg")
Pros: Flexibility and choice


Cons: Often need to cherry pick from components


[![Slide33](/wp-content/uploads/2014/05/Slide33.jpg)](/wp-content/uploads/2014/05/Slide33.jpg "/wp-content/uploads/2014/05/Slide33.jpg")
Another way of comparing these APIs is by size. A more complex and rich API give you more choice but at the risk of slowing down your web page load times. Version 2 of OpenLayers is the behemoth here, weighing in at over 700 KB of JavaScript to load. Modest Maps is more ... modest, requiring around 25 KB of code to be loaded.


[![Slide34](/wp-content/uploads/2014/05/Slide34.jpg)](/wp-content/uploads/2014/05/Slide34.jpg "/wp-content/uploads/2014/05/Slide34.jpg")
Then there's the type of map that will be displayed. Most of these APIs are what we generally call slippy maps.


[![Slide35](/wp-content/uploads/2014/05/Slide35.jpg)](/wp-content/uploads/2014/05/Slide35.jpg "/wp-content/uploads/2014/05/Slide35.jpg")
A slippy map is one that can be panned, zoomed and moved around by your mouse or your finger.


[![Slide36](/wp-content/uploads/2014/05/Slide36.jpg)](/wp-content/uploads/2014/05/Slide36.jpg "/wp-content/uploads/2014/05/Slide36.jpg")
Bitmap map tiles are used, with the API using AJAX and JSONP to not only load the tiles you need right now, but also those adjacent.


[![Slide37](/wp-content/uploads/2014/05/Slide37.jpg)](/wp-content/uploads/2014/05/Slide37.jpg "/wp-content/uploads/2014/05/Slide37.jpg")
So your map is like a window on the world, a view port into the area you want to display, but with the surrounding areas preloaded to giver you the impression of a smooth and seamless zooming and panning experience.


[![Slide38](/wp-content/uploads/2014/05/Slide38.jpg)](/wp-content/uploads/2014/05/Slide38.jpg "/wp-content/uploads/2014/05/Slide38.jpg")
There's also vector maps, which rather than using bitmap images, render the map as a series of points, lines and polygons.


Open source or proprietary, slippy or vector, small to load or large, there's many more ways you can slice and dice the categorisation of maps APIs.


[![Slide39](/wp-content/uploads/2014/05/Slide39.jpg)](/wp-content/uploads/2014/05/Slide39.jpg "/wp-content/uploads/2014/05/Slide39.jpg")
Now let's look closer at each of the 5 APIs, starting with [Google](https://developers.google.com/maps/ "https://developers.google.com/maps/").


[![Slide40](/wp-content/uploads/2014/05/Slide40.jpg)](/wp-content/uploads/2014/05/Slide40.jpg "/wp-content/uploads/2014/05/Slide40.jpg")
The “house style” of Google’s maps is instantly recognisable; watch out for it when you’re next browsing and see how many times you spot it.


You can find the [live version of this sample here](https://developers.google.com/maps/documentation/javascript/examples/map-simple "https://developers.google.com/maps/documentation/javascript/examples/map-simple").


[![Slide41](/wp-content/uploads/2014/05/Slide41.jpg)](/wp-content/uploads/2014/05/Slide41.jpg "/wp-content/uploads/2014/05/Slide41.jpg")
[OpenLayers](http://openlayers.org/ "http://openlayers.org/")


[![Slide42](/wp-content/uploads/2014/05/Slide42.jpg)](/wp-content/uploads/2014/05/Slide42.jpg "/wp-content/uploads/2014/05/Slide42.jpg")
A great example of the wide range of proprietary and open map tile styles available can be seen in this OpenLayers powered map comparison, with open tiles from OSM and Stamen Design but even including proprietary styles from Google, ESRI and HERE, though I wonder if the creators read these service’s terms of use which tend to forbid this sort of thing.


You can find the [live version of this sample here](http://mc.bbbike.org/mc/ "http://mc.bbbike.org/mc/").


[![Slide43](/wp-content/uploads/2014/05/Slide43.jpg)](/wp-content/uploads/2014/05/Slide43.jpg "/wp-content/uploads/2014/05/Slide43.jpg")
[Leaflet](http://leafletjs.com/ "http://leafletjs.com/")
[![Slide44](/wp-content/uploads/2014/05/Slide44.jpg)](/wp-content/uploads/2014/05/Slide44.jpg "/wp-content/uploads/2014/05/Slide44.jpg")
Here Leaflet is driving a choropleth map using the US Census Bureau’s data and map tiles from Stamen. You’d be surprised at how few lines of code are needed to produce this map.


You can find the [live version of this sample here](http://leafletjs.com/examples/choropleth-example.html "http://leafletjs.com/examples/choropleth-example.html").


[![Slide45](/wp-content/uploads/2014/05/Slide45.jpg)](/wp-content/uploads/2014/05/Slide45.jpg "/wp-content/uploads/2014/05/Slide45.jpg")
[Modest Maps](http://modestmaps.com/ "http://modestmaps.com/")
[![Slide46](/wp-content/uploads/2014/05/Slide46.jpg)](/wp-content/uploads/2014/05/Slide46.jpg "/wp-content/uploads/2014/05/Slide46.jpg")
This example of Modest Maps is suitably, well, modest. But not every use of a map on the web needs the full blown interactive experience. Sometimes just a map is enough.


You can find the [live version of this sample here](http://modestmaps.com/examples/two-maps.html "http://modestmaps.com/examples/two-maps.html").


[![Slide47](/wp-content/uploads/2014/05/Slide47.jpg)](/wp-content/uploads/2014/05/Slide47.jpg "/wp-content/uploads/2014/05/Slide47.jpg")
Now let's look at the vector map APIs, or to be more accurate the vector APIs that can also be used to display vector maps.


[![Slide48](/wp-content/uploads/2014/05/Slide48.jpg)](/wp-content/uploads/2014/05/Slide48.jpg "/wp-content/uploads/2014/05/Slide48.jpg")
[Raphaël](http://raphaeljs.com/ "http://raphaeljs.com/")
[![Slide49](/wp-content/uploads/2014/05/Slide49.jpg)](/wp-content/uploads/2014/05/Slide49.jpg "/wp-content/uploads/2014/05/Slide49.jpg")
This example of a Raphaël driven map is much less the style of web map we’re used to and much more of a visualisation of a map. It’s easy to underestimate how challenging producing a map of this sort was just a few years prior. But the combination of being able to draw vector graphics, coupled with open and free vector data sources such as Natural Earth Data makes this a relatively simple task.


You can find the [live version of this sample here](http://return-true.com/examples/map-orig.html "http://return-true.com/examples/map-orig.html").


[![Slide50](/wp-content/uploads/2014/05/Slide50.jpg)](/wp-content/uploads/2014/05/Slide50.jpg "/wp-content/uploads/2014/05/Slide50.jpg")
[D3](http://d3js.org/ "http://d3js.org/")
[![Slide51](/wp-content/uploads/2014/05/Slide51.jpg)](/wp-content/uploads/2014/05/Slide51.jpg "/wp-content/uploads/2014/05/Slide51.jpg")
These examples by Jason Davies using D3 illustrates how a web map can be very different from the other slippy map style maps we’ve seen.


You can find the [live version of this sample here](http://www.jasondavies.com/maps/voronoi/capitals/ "http://www.jasondavies.com/maps/voronoi/capitals/").


[![Slide52](/wp-content/uploads/2014/05/Slide52.jpg)](/wp-content/uploads/2014/05/Slide52.jpg "/wp-content/uploads/2014/05/Slide52.jpg")
And for the vocal community of users who complain about map tiles being rendered in the web Mercator projection, there’s plenty of other projections to go around. You can loose hours just watching this demo. I speak from experience on this.


You can find the [live version of this sample here](http://www.jasondavies.com/maps/transition/ "http://www.jasondavies.com/maps/transition/").


[![Slide53](/wp-content/uploads/2014/05/Slide53.jpg)](/wp-content/uploads/2014/05/Slide53.jpg "/wp-content/uploads/2014/05/Slide53.jpg")
Open source or proprietary. Slippy map or vector map? All in one solution or roll your own solution. Which maps API is right for you?


[![Slide54](/wp-content/uploads/2014/05/Slide54.jpg)](/wp-content/uploads/2014/05/Slide54.jpg "/wp-content/uploads/2014/05/Slide54.jpg")
At the end of the day, it’s your choice. Every one of these APIs have much to commend them. Some are quick and easy to use. Some need time and effort spent in learning. Some come with every sort of mapping tool you need, straight out of the box. Some you need to customise to your needs. Some lock you in to only using other geospatial APIs from the same company or vendor. Some allow you maximum flexibility, albeit with the viral nature inherent in many open source license schemes.


Google continues to dominate in this field and a Google map has almost become synonymous with a web map for many of today’s web users. But this is by no means game over for the other maps APIs, be they proprietary or open source. Leaflet continues to make continual progress and has fast become my maps API of choice. Vector maps from D3 and Raphaël continue to redefine what we think of as a web map, blurring the lines between a map showing data and a visualisation of geospatial data.


But it’s a personal thing as well as a professional one. As with everything else online and offline, it’s probably best to take some time to look at what’s out there and make an informed decision about what’s best for your needs. And remember, this is but 5 of the multitude of maps APIs that are out there.


[![Slide55](/wp-content/uploads/2014/05/Slide55.jpg)](/wp-content/uploads/2014/05/Slide55.jpg "/wp-content/uploads/2014/05/Slide55.jpg")

