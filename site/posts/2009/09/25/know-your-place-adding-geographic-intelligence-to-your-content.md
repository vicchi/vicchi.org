title: Know Your Place; Adding Geographic Intelligence to your Content
slug: know-your-place-adding-geographic-intelligence-to-your-content
date: 2009-09-25 15:37:37
tags: agi,conference,garygale,geo,geocom,geocommunity,geoplanet,placemaker,speaking,woeids,yahoo
category: blog
link: 
description: 
type: text
has_math: no
status: published

Day two of the AGI GeoCommunity conference and the conference as a whole has ended. We discussed neogeography, paleogeography and pretty much all points in between, finally agreeing that labels such as these get in the way of the geography itself. I was fortunate enough to have my paper submission accepted and presented a talk on how to *Know Your Place* at the end of the morning's geoweb track. The paper is reproduced below and the deck that accompanies it is on [SlideShare](https://www.slideshare.net/vicchi/know-your-place-adding-geographic-intelligence-to-your-content "https://www.slideshare.net/vicchi/know-your-place-adding-geographic-intelligence-to-your-content").

  

<!-- TEASER_END -->

[![](https://posterous.com/getfile/files.posterous.com/vicchi/57DAOXHqfN2w0AL18YqE8PtUhFwaj5gcod79awth68AlVIVbo9sqxRk6gKlE/2009-09-24_12.09.09.jpg.scaled.500.jpg)](https://posterous.com/getfile/files.posterous.com/vicchi/kyh2c0qEL72Yxc9aGabqRtrVWOGCqysx80X18QLODFLCsPDrvaE4zgk9gRxa/2009-09-24_12.09.09.jpg.scaled.1000.jpg "https://posterous.com/getfile/files.posterous.com/vicchi/kyh2c0qEL72Yxc9aGabqRtrVWOGCqysx80X18QLODFLCsPDrvaE4zgk9gRxa/2009-09-24_12.09.09.jpg.scaled.1000.jpg") 

**Know Your Place; Adding Geographic Intelligence to your Content**

**Abstract**

Yahoo! GeoPlanet exposes a geographic ontology of over six million named places, enabling technologies that join users with with most geographically relevant information possible and forms the heart of the Yahoo! Geo Technologies group's technology platform.

GeoPlanet uses a unique, language neutral identifier for (nearly) all named places around the world. Each place exists within a graph of other places; the relationships between places are categorised by the nature of the relationship, categorised by administrative hierarchy, geographical scope and place type, amongst other. 

GeoPlanet’s geodata repository is exposed by publicly available web service platforms that allow places to be identified within content (Yahoo! [Placemaker](https://developer.yahoo.com/geo/placemaker/ "https://developer.yahoo.com/geo/placemaker/")) and investigated by place name or identifier (Yahoo! [GeoPlanet](https://developer.yahoo.com/geo/geoplanet/ "https://developer.yahoo.com/geo/geoplanet/")). Users are able to navigate rich metadata associated with a place including the place hierarchies and obtain parent, child, belong-to and neighbouring relationships.

For example, a list of first level administrative entities in a given country may be obtained by requesting the list of the children of that country. In a similar manner the surrounding postal codes of a given post code by be obtained via a request for its neighbours.

The framework for this is uniform and consistent across the globe and facilities geo-enrichment and geo-identification in a wide range of content, both structured and unstructured.

**Place-based Thinking**

Traditionally geography has been treated as a purely spatial exercise; this is certainly the case on the internet. Places are specified in terms of their longitude and latitude, and so cities or towns are referenced by the co-ordinate pair that identifies the theoretical or arbitrary centre of the place.

From this it can be seen that everything on the internet which is location related is referenced by a co-ordinate pair that has little relevance to a human but much relevance to a geographer or software which can algorithmically undertake a radius search from a point. Instead of a spatially based approach to location, Yahoo! Geo Technologies take a place based approach.

  


[![](https://posterous.com/getfile/files.posterous.com/vicchi/2y2H4q0xcJnFrVkRIkpxtyD2TjoNviHv3OBiAEUhxmWFHqcilSDraNCPXT7A/Figure_1_-_Geographic_Tube_Map.jpg.scaled.500.jpg)](https://posterous.com/getfile/files.posterous.com/vicchi/O91XijygqcIy3pjrFNVe1UPEaT6GzJmuPVcaUHZF24v4gCTYG5iy2paGLGVy/Figure_1_-_Geographic_Tube_Map.jpg "https://posterous.com/getfile/files.posterous.com/vicchi/O91XijygqcIy3pjrFNVe1UPEaT6GzJmuPVcaUHZF24v4gCTYG5iy2paGLGVy/Figure_1_-_Geographic_Tube_Map.jpg") 

  


The map above shows a spatially correct map of the central area of the London Underground network similar to those produced up until the [early 1930s](https://www.clarksbury.com/cdl/maps.html "https://www.clarksbury.com/cdl/maps.html"); in the central area of London the map is compressed due to the close proximity of the lines and their stations.

In 1932 the familiar Tube map, shown below, was produced by Harry Beck in the form of a [non geographic linear diagram](https://www.tfl.gov.uk/corporate/projectsandschemes/communityandeducation/2443.aspx "https://www.tfl.gov.uk/corporate/projectsandschemes/communityandeducation/2443.aspx"). Whilst not geographically or spatially correct it is far more accessible and information rich due to Beck’s assumption that people are less concerned with the exact location of a station and more interested in how to change between lines and get to their destination.

  


[![](https://posterous.com/getfile/files.posterous.com/vicchi/OSU8zvPngpf25LCHAPbh92UJJi0R3oL8M7toXMmIiVWK8p5ByKukr7CkJm39/Figure_2_-_LUL_Tube_Map.jpg.scaled.500.jpg)](https://posterous.com/getfile/files.posterous.com/vicchi/3LSqTSSOP0N34JxOfIJlC2Obs2YrJHKpAK44T6gnizkYFSeNQO5GKkFjPwOl/Figure_2_-_LUL_Tube_Map.jpg "https://posterous.com/getfile/files.posterous.com/vicchi/3LSqTSSOP0N34JxOfIJlC2Obs2YrJHKpAK44T6gnizkYFSeNQO5GKkFjPwOl/Figure_2_-_LUL_Tube_Map.jpg") 

  


We have taken a not dissimilar approach with our repository of named places, where a place can be a monument, a park, a colloquial region such as the Home Counties and continent or even the Earth. We have taken each of these different place names at all of their differing granularities and given them unique identifiers, called Where On Earth Ids.

**WOEIDs**

The [Where On Earth ID](https://developer.yahoo.com/geo/geoplanet/guide/concepts.html "https://developer.yahoo.com/geo/geoplanet/guide/concepts.html") is a unique and permanent global identifier, shared publicly via the GeoPlanet and Placemaker API platforms.

They are language neutral, thus the WOEID for London is the same as for Londres, for Londra and for ロンドン, whilst recognising, for the London in the United Kingdom, that London, Central London, Greater London and the City of London are geographically related though separate places.

Their usage ensure that all Yahoo! APIs have the ability to employ geography consistently and globally.

**A Global Geographic Ontology**

Within our geodata repository we know not only where a place is geographically located, via its centroid, but also how these places relate to each other. This is more than an index of places, it is a geographic ontology of named places, each of which is referenced by a WOEID.Using the postal town of Stratford-upon-Avon as an example, we can determine the children of a place, its parent, its adjacent places and non administrative or colloquial areas that a place belongs to or is contained within, at the following granularities. 

* Supernames
* Continents
* Countries
* Counties
* Regions
* Neighbourhoods
* ZIP and Postal Codes
* Custom Geographies

[![](https://posterous.com/getfile/files.posterous.com/vicchi/uxkceAG6rKq1BxXskzjFKuEXweiWeQuIY6XE0160tdvlHRkoUyz0tUluTm6M/Figure_3_-_Global_Geographic_O.jpg.scaled.500.jpg)](https://posterous.com/getfile/files.posterous.com/vicchi/K46MDOwZjj3iH5XkB0Uz9BHf5yAo5u8PvrGobWGBBGd0IxN6AX6vWt0oB8Uv/Figure_3_-_Global_Geographic_O.jpg.scaled.1000.jpg "https://posterous.com/getfile/files.posterous.com/vicchi/K46MDOwZjj3iH5XkB0Uz9BHf5yAo5u8PvrGobWGBBGd0IxN6AX6vWt0oB8Uv/Figure_3_-_Global_Geographic_O.jpg.scaled.1000.jpg") **Joining People with Content and Content with People**

We can use Placemaker to parse structured and unstructured content and to identify the places referenced, each of which is represented by a WOEID. Where more than one potential place exists for each name, a ranked list of disambiguated names is presented.

Each of the WOEIDs returned by Placemaker have the notional centroid and the bounding box, described by the South West and North East coordinates, as attributes. This allows the concept of a place to be displayed, such as that for the postal town of Stratford-upon-Avon, as shown below.

  


[![](https://posterous.com/getfile/files.posterous.com/vicchi/qduFVSMAvWRKsnlp02KaBavISZMIzLLpDC11JXwzXqIK9WyIud66mNU8cQ1u/Figure_4_-_Stratford.jpg.scaled.500.jpg)](https://posterous.com/getfile/files.posterous.com/vicchi/wjEd1SPk3hAmyAGv1v6ta7yTxIzssaMDZODTAz38X4r94qWIM9inqx8QJbFA/Figure_4_-_Stratford.jpg.scaled.1000.jpg "https://posterous.com/getfile/files.posterous.com/vicchi/wjEd1SPk3hAmyAGv1v6ta7yTxIzssaMDZODTAz38X4r94qWIM9inqx8QJbFA/Figure_4_-_Stratford.jpg.scaled.1000.jpg") 

  


For each WOEID, we can use GeoPlanet to determine the vertical relationships of the place, such as which cities are in a country or which postal codes are within a city. We can determine the states, provinces or districts with in a country and which countries are on a continent. This powerful vertical hierarchy can be easily navigated from any WOEID.

GeoPlanet also contains a horizontal-like hierarchy, which frequently overlaps. If searching against a specific place such as a postal code, we can determine the surrounding postal codes as well; if searching for a town, we can determine the surrounding postal towns, as shown below.

  


[![](https://posterous.com/getfile/files.posterous.com/vicchi/0h997tYOgZ5pyLrjTF5YekhBFeW8hP0iB5AdjSgtUfwNCPURT0EC66MtKabS/Figure_5_-_Stratford_Environs.jpg.scaled.500.jpg)](https://posterous.com/getfile/files.posterous.com/vicchi/rQtKmdryCVhmjL2RaTc4b5hslZr0NJzogYPjZ0PmUvVcBJOmgDj4BS9RHs26/Figure_5_-_Stratford_Environs.jpg.scaled.1000.jpg "https://posterous.com/getfile/files.posterous.com/vicchi/rQtKmdryCVhmjL2RaTc4b5hslZr0NJzogYPjZ0PmUvVcBJOmgDj4BS9RHs26/Figure_5_-_Stratford_Environs.jpg.scaled.1000.jpg") 

  


GeoPlanet contains a rich ontology of named places, which allows us to look up places and where these places are. But more powerful is the relationship between places which allows users of GeoPlanet to add geographic intelligence to their use cases and applications, browsing the horizontal and vertical hierarchies with ease to discover geographic detail that no other point radius-based search would allow us to do.

**Capturing the World’s Geography as it is Used by the World’s People** 

The Oxford English Dictionary, often criticised for capturing transient or contentious terms, states its goal as “[to capture the English language as it is used at this time](https://www.oed.com/archive/oed2-preface/preface.html "https://www.oed.com/archive/oed2-preface/preface.html")” and not to impose how things are called. In the same vein, our goal is to capture the world’s geography as it is used by the world’s people.

We aim to follow the United Nations and ISO 3166-1 [guidelines on the official name for a place](https://developer.yahoo.com/geo/geoplanet/guide/additional_information.html "https://developer.yahoo.com/geo/geoplanet/guide/additional_information.html") but we strive to know the informal, the ethnic and the colloquial. We are less concerned with imposing a formal geography as we are with describing how a place is described today and what its relationship is with its parent, its children and its neighbours.

Thus we recognise that MOMA NYC (WOEIDs 23617044 and 2459115) is used to refer to the Museum of Modern Art in New York, that San Francisco (2487956) is the more commonly used form of The City and County of San Francisco and that the London Eye and the Millennium Wheel are synonymous (WOEID 22475381).

**A Tale of Two Stratfords**

Stratford is an important tourist destination, due to the town being William Shakespeare’s birthplace, with both the “on-Avon” and “upon-Avon” suffixes being used to refer to the town. GeoPlanet recognises both Stratford-on-Avon and Stratford-upon-Avon (WOEID 36424) when referring to the postal town and further recognises Stratford-on-Avon (WOEID 12696101) as the administrative District which is the parent for Stratford-upon-Avon.

“t*he Council often gets asked why there is a difference in using the terms 'Stratford-on-Avon' and 'Stratford-upon-Avon'. Anything to do with the town of Stratford is always referred to as Stratford-upon-Avon. However, as a district council, we cover a much larger area than the town itself, but did not want to lose the instantly recognised tag of Stratford, so anything to do with the district is referred to as*[*Stratford-on-Avon*](https://www.stratford.gov.uk/community/ "https://www.stratford.gov.uk/community/")*.*” 

**Appendix A - Data Background**

The GeoPlanet geodata repository is derived from a variety of sources, both spatial data vendors, openly available sources and Yahoo! sourced. In raw form, it occupies 25 GB of storage; after automated  topology generation and semi automated processing to clean the data and to remove duplicates, the final data footprint is around 9.5 GB. A specialised Editorial team assesses overall data quality and integrity, areas of ambiguity and challenging geographics, such as disputed territories and colloquial areas.

**Appendix B - Further Reading**

1. [Yahoo! Developer Network - Yahoo! Placemaker](https://developer.yahoo.com/geo/placemaker/ "https://developer.yahoo.com/geo/placemaker/")
2. [Yahoo! Developer Network - Yahoo! GeoPlanet](https://developer.yahoo.com/geo/geoplanet/ "https://developer.yahoo.com/geo/geoplanet/")
3. [The London Tube Map Archive](https://www.clarksbury.com/cdl/maps.html "https://www.clarksbury.com/cdl/maps.html")
4. [Transport for London - Design Classic](https://www.tfl.gov.uk/corporate/projectsandschemes/communityandeducation/2443.aspx "https://www.tfl.gov.uk/corporate/projectsandschemes/communityandeducation/2443.aspx")
5. [Yahoo! Developer Network - Where On Earth Identifiers](https://developer.yahoo.com/geo/geoplanet/guide/concepts.html "https://developer.yahoo.com/geo/geoplanet/guide/concepts.html")
6. [Oxford English Dictionary - Preface to the Second Edition (1989)](https://www.oed.com/archive/oed2-preface/preface.html "https://www.oed.com/archive/oed2-preface/preface.html")
7. [Yahoo! Developer Network - On Naming and Representation](https://developer.yahoo.com/geo/geoplanet/guide/additional_information.html "https://developer.yahoo.com/geo/geoplanet/guide/additional_information.html")
8. [Stratford-on-Avon District Council - Community and Living](https://www.stratford.gov.uk/community/ "https://www.stratford.gov.uk/community/")

  [Posted via email](https://posterous.com "https://posterous.com") from [Gary's Posterous](https://vicchi.posterous.com/know-your-place-adding-geographic-intelligenc "https://vicchi.posterous.com/know-your-place-adding-geographic-intelligenc") 

 

