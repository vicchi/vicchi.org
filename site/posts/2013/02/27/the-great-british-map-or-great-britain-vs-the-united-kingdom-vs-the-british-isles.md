title: The Great British Map; Or Great Britain vs. The United Kingdom vs. The British Isles
slug: the-great-british-map-or-great-britain-vs-the-united-kingdom-vs-the-british-isles
date: 2013-02-27 16:53:01
tags: code,d3,gb,geotagged,greatbritain,javascript,map,mapgasm,maps,teddington,uk,unitedkingdom,visualisation
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

Last night I made [another map](http://maps.geotastic.org/great-british-map/ "http://maps.geotastic.org/great-british-map/"). It tries to answer some of more perplexing and confusing facets of the geography surrounding the world's 9th largest island. I mean of course Great Britain. No, *wait*. I mean the United Kingdom. No, *wait*. I mean Britain. Or do I mean England? See, it's *confusing*.



* So if the ISO 3166-2 code is GBR, how come the country is called the United Kingdom?
* But if England is a country and the United Kingdom is a country, how come England is part of the United Kingdom?
* What about Scotland, Wales and Northern Ireland?



This isn't the first time I've covered this topic. The first time was for a post on the now defunct Yahoo! Geo Technologies blog entitled *UK Addressing, The Non Golden Rules Of Geo Or Help! My Country Doesn't Exist*. The `ygeoblog.com` domain is now long gone and redirects to the Yahoo! corporate blog but I was able to reproduce this post [here](/2011/06/05/the-non-golden-rules-of-geo-redux/ "/2011/06/05/the-non-golden-rules-of-geo-redux/") and it's also captured in the Internet Archive's [WayBackMachine](http://web.archive.org/web/20090519023002/http://www.ygeoblog.com/2009/02/uk-addressing-the-non-golden-rules-of-geo-or-help-my-county-doesnt-exist/ "http://web.archive.org/web/20090519023002/http://www.ygeoblog.com/2009/02/uk-addressing-the-non-golden-rules-of-geo-or-help-my-county-doesnt-exist/"). The second time was when I made a [variation of The Great British Venn Diagram](/2010/01/19/is-it-great-britain-the-united-kingdom-the-british-isles-or-what-exactly/ "/2010/01/19/is-it-great-britain-the-united-kingdom-the-british-isles-or-what-exactly/"). But this is the first time (though probably not the last) that I've used a map, which is odd as this is something that's tailor-made for a *map*.

<!-- TEASER_END -->

I'd been looking for a good source of geographic vector data that I could use to easily overlay polygons on a map and came across a rich source of free vector and raster map data from [Natural Earth](http://www.naturalearthdata.com/ "http://www.naturalearthdata.com/"). But instead of overlaying that data on top of a standard slippy map using a JavaScript maps API to tap into a tile server's bitmap tiles, I soon wondered whether I could actually *make* a map from the vector data. It turned out I could and decided to revisit the structure of the group of islands I live on one more time and try to visualise the difference between Great Britain, the United Kingdom and the British Isles. The end result, punningly entitled the [Great British Map](http://maps.geotastic.org/great-british-map/ "http://maps.geotastic.org/great-british-map/"), looks something like this ...

[![Great British Map](/wp-content/uploads/2013/02/Great-British-Map-1024x737.jpg)](/wp-content/uploads/2013/02/Great-British-Map.jpg "/wp-content/uploads/2013/02/Great-British-Map.jpg")

When the page first loads you'll see the coastlines of Britain, Ireland and towards the bottom, the Channel Islands. There's then five ways of looking at this particular map.

There's the group of geographic islands that's termed the British Isles; these show up in purplish-grey and if you're observant, the Channel Islands vanish as they're not part of this island group.

[![Great British Map - Great Britain](/wp-content/uploads/2013/02/Great-British-Map-Great-Britain-1024x737.jpg)](/wp-content/uploads/2013/02/Great-British-Map-Great-Britain.jpg "/wp-content/uploads/2013/02/Great-British-Map-Great-Britain.jpg")

Then there's the individual geographic islands of Great Britain, Ireland, the Isle Of Man and The Channel Islands; these show up in green.

[![Great British Map - United Kingdom](/wp-content/uploads/2013/02/Great-British-Map-United-Kingdom-1024x737.jpg)](/wp-content/uploads/2013/02/Great-British-Map-United-Kingdom.jpg "/wp-content/uploads/2013/02/Great-British-Map-United-Kingdom.jpg")

There's two sovereign states, The United Kingdom of Great Britain And Northern Island and the Republic Of Ireland; these show up in red.

[![Great British Map - England](/wp-content/uploads/2013/02/Great-British-Map-England-1024x737.jpg)](/wp-content/uploads/2013/02/Great-British-Map-England.jpg "/wp-content/uploads/2013/02/Great-British-Map-England.jpg")

Next comes the administrative countries which make up the United Kingdom; England, Scotland, Wales and Northern Ireland. These show up in yellow.

[![Great British Map - Crown Dependencies](/wp-content/uploads/2013/02/Great-British-Map-Crown-Dependencies-1024x737.jpg)](/wp-content/uploads/2013/02/Great-British-Map-Crown-Dependencies.jpg "/wp-content/uploads/2013/02/Great-British-Map-Crown-Dependencies.jpg")

Finally, there's the Crown Dependencies, the self governing possessions of the British Crown; the Isle of Man and the Channel Islands are these and they show up as purple.

What's missing from the map? The British Overseas Territories, which is a polite way of saying what's left of the British Empire that didn't gain independence and which the United Kingdom still asserts sovereignty over. These are Anguilla, Bermuda, British Antarctic Territory, British Indian Ocean Territory, British Virgin Islands, Cayman Islands, Falkland Islands, Gibraltar, Montserrat, Pitcairn Islands, St. Helena, Ascension Island, Tristan da Cunha, the Sovereign Base Areas of Akrotiri and Dhekalia and the Turks and Caicos Islands.

If you're interested in how I actually made the map, read on.

The source data from the map are [two public domain datasets](http://www.naturalearthdata.com/downloads/10m-cultural-vectors/ "http://www.naturalearthdata.com/downloads/10m-cultural-vectors/") from Natural Earth; the [1:10m map Admin 0 Subunits](http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_0_map_subunits.zip "http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_0_map_subunits.zip") dataset and the [1:10m Populated Places](http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places.zip "http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_populated_places.zip") dataset. This data includes shapefiles which can be converted into GeoJSON format by the GDAL `ogr2ogr` command line tool. I extracted the vectors for the UK, Ireland, Isle of Man and Channel Islands from the Admin 0 Subunits dataset, keying on their ISO 3166-1 Alpha-3 country codes.

```bash
$ ogr2ogr -f GeoJSON -where "adm0\_a3 IN ('GBR','IRL','IMN','GGY','JEY','GBA')" subunits.json ne\_10m\_admin\_0\_map\_subunits/ne\_10m\_admin\_0\_map\_subunits.shp
```

I then extracted the place data from the Populated Places dataset, again extracting data for the UK, Ireland, Isle of Man and Channel Islands, this time keying on their ISO 3166-1 Alpha-2 country codes. Not entirely sure why one dataset uses Alpha-2 and the other uses Alpha-3 but go figure; the data is free, accurate and open so who am I to complain?

```bash
$ ogr2ogr -f GeoJSON -where "iso\_a2 IN ('GB','IM','JE','GG') AND SCALERANK < 8" places.json ne\_10m\_populated\_places/ne\_10m\_populated\_places.shp
```

Finally, I merged subunits.json and places.json into a single TopoJSON file, with the added bonus that TopoJSON is much much smaller than GeoJSON. The source GeoJSON weighed in at 549 KB whereas the combined TopoJSON is a mere 78 KB.

```bash
$ topojson --id-property su\_a3 -p NAME=name -p name -o great-british-map.json subunits.json places.json
```

The main reason for use of TopoJSON is not that it's much more lightweight than GeoJSON, but that Mike Bostock's excellent [D3](http://d3js.org/ "http://d3js.org/") JavaScript library can easily slurp in TopoJSON and inject SVG straight into an HTML document. Which is precisely what the map's underlying code does. There's a lot more that D3 could do with this map, but it's early days and for a first step into a new maps library, I'm pretty happy with how it's turned out.

Speaking of code, it should come as no surprise that the map's code base is available on [GitHub](https://github.com/vicchi/great-british-map "https://github.com/vicchi/great-british-map"). The Great British Map is based on great D3 tutorial that Mike has written on [vector mapping using Natural Earth](http://bost.ocks.org/mike/map/ "http://bost.ocks.org/mike/map/"), so the similarity between Mike's map and my map is entirely intentional.



