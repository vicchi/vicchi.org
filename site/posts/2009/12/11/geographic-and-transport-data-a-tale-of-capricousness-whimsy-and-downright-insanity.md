title: Geographic and Transport Data; a Tale of Capricousness, Whimsy and Downright Insanity 
slug: geographic-and-transport-data-a-tale-of-capricousness-whimsy-and-downright-insanity
date: 2009-12-11 23:38:45
tags: data,geo,ip,licensing,ownership,transport,value
category: blog
link: 
description: 
type: text
has_math: no
status: published

The industry I work in thrives on data; we consume loads of the stuff and in turn we generate petabytes of it. I'm talking about data in general, not the geographic, mapping or place data that I usually write about.But the longer I work in the Internet industry the more convinced I become that, as an industry, we need to get our act together. How else to explain the bizarre, rapidly changing and capricious nature of how we gain access to, use, pay, don't pay and disseminate data?We're socially conditioned to assume that free does not equate to good, hence the adage "*there's no such thing as a free lunch*". So stuff that costs is good and stuff that's free isn't. But normal rules don't apply here.

[![](https://farm4.static.flickr.com/3558/3800340717_57b911ff05.jpg)](https://www.flickr.com/photos/10089490@N06/3800340717/ "https://www.flickr.com/photos/10089490@N06/3800340717/")

<!-- TEASER_END -->

Let's take geographic data; I'm on home ground here so this should be relatively straightforward.The proprietary data vendors, [Navteq](https://www.navteq.com/ "https://www.navteq.com/"), [TeleAtlas](https://www.teleatlas.com/ "https://www.teleatlas.com/") and others, charge for their data and limit what you can and can't do with it. [OpenStreetMap](https://www.openstreetmap.org/ "https://www.openstreetmap.org/") on the other hand charges nothing for its' data and only places limits on the data to protect the data by way of the [Creative Commons Attribution Share Alike](https://creativecommons.org/licenses/by-sa/2.0/ "https://creativecommons.org/licenses/by-sa/2.0/") license.So naturally the data you pay for should be good and the data you don't pay for should be ... less than good. Naturally.

Except OpenStreetMap data isn't less than good. [UCL's Muki Haklay](https://www.slideshare.net/mukih/beyond-good-enough-spatial-data-quality-and-openstreetmap-data "https://www.slideshare.net/mukih/beyond-good-enough-spatial-data-quality-and-openstreetmap-data") summed this up neatly as "*How good is OpenStreetMap? Good enough*" at the OpenStreetMap conference in Amsterdam this year. Conversely, the proprietary data vendors don't always get it right. One data vendor, who will remain anonymous, shipped a release of data with wildly incorrect centroids, the lat/long coordinate which represents the nominal centre of a place, which meant that amongst others, Covent Garden ended up being centred on Holborn Underground Station.

![](https://maps.google.com/staticmap?size=400x400&maptype=hybrid&markers=51.5130278,-0.12425,%7C51.5174084,-0.1202993,&key=ABQIAAAAPto2Ra3_nHWIBMUQbKO3-BQp4_UWMA4z1QnewsdCnJ5p83cmiRR0i-l_lgvcUd8t0PkeubTOeW2Gog)

This isn't an isolated incident.On the one hand, the [City of Vancouver](https://data.vancouver.ca/ "https://data.vancouver.ca/") in British Columbia makes its data, all of its data, free and open. On the other hand, the [City of Tempe](https://www.spatiallyadjusted.com/2009/12/01/tempe-responds-to-gis-data-request/ "https://www.spatiallyadjusted.com/2009/12/01/tempe-responds-to-gis-data-request/") in Arizona decides to charge a "fair approximation of market value" for its data, which as James Fee recently discovered means that you'll need to cough up $100,000 to use it commercially.

[![](https://farm2.static.flickr.com/1284/1368698913_120c55b803.jpg)](https://www.flickr.com/photos/11582814@N02/1368698913/ "https://www.flickr.com/photos/11582814@N02/1368698913/")

In San Francisco, [BART, the Bay Area Rapid Transit](https://www.bart.gov/schedules/developers/etas.aspx "https://www.bart.gov/schedules/developers/etas.aspx"), makes their data which includes train times freely available and taking a refreshingly prosaic approach to accessibility and licensing.

**Getting an API key**: Psyche: you don't need one. We're opting for "open" without a lot of strings attached. Just follow our simple License Agreement, give our customers good information and don't hog resources. If that doesn't work for you, we can certainly manage usage with keys and write more terms and conditions. But who wants that?

Here in the UK [TFL, Transport for London](https://www.tfl.gov.uk/tfl/businessandpartners/syndication/user-guide.aspx "https://www.tfl.gov.uk/tfl/businessandpartners/syndication/user-guide.aspx"), give you some data for free but not the train times and for overground trains the [Association of Train Operating Companies](https://www.atoc.org/rsp/_downloads/data_feeds/charging.pdf "https://www.atoc.org/rsp/_downloads/data_feeds/charging.pdf") (pdf link) value this data at a staggering £27,430 per year.

And elsewhere in the world, other operators are closing down people who want to use this data, in [New York](https://www.businessinsider.com/mta-train-and-bus-schedules-are-copyrighted-intellectual-property-2009-8 "https://www.businessinsider.com/mta-train-and-bus-schedules-are-copyrighted-intellectual-property-2009-8"), in [Berlin](https://www.techdirt.com/articles/20081106/0148582753.shtml "https://www.techdirt.com/articles/20081106/0148582753.shtml"), in [New South Wales](https://www.zdnet.com.au/news/communications/soa/RailCorp-targets-rogue-iPhone-app/0,130061791,339295241,00.htm?omnRef=https://www.google.com/search?hl=en&client=safari&rls=en&q=metro%20iphone%20app%20take%20down&aq=f&oq=&aqi=&omnRef=1337 "https://www.zdnet.com.au/news/communications/soa/RailCorp-targets-rogue-iPhone-app/0,130061791,339295241,00.htm?omnRef=https://www.google.com/search?hl=en&client=safari&rls=en&q=metro%20iphone%20app%20take%20down&aq=f&oq=&aqi=&omnRef=1337") and we can't really seem to work out who [owns the data](https://www.bbc.co.uk/blogs/technology/2009/03/who_owns_train_times_or_th.html "https://www.bbc.co.uk/blogs/technology/2009/03/who_owns_train_times_or_th.html") and whether there's intellectual property being infringed or a public service being undertaken.... and don't even talk about the British postal code data was closed, was then going to be [opened](https://www.theregister.co.uk/2009/12/10/ordnance_survey_data_postcode_paf/ "https://www.theregister.co.uk/2009/12/10/ordnance_survey_data_postcode_paf/") up but now isn't. [Apparently](https://giscussions.blogspot.com/2009/12/correction-poscodes-will-not-be-free.html?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed:+Giscussions+(GIScussions) "https://giscussions.blogspot.com/2009/12/correction-poscodes-will-not-be-free.html?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed:+Giscussions+(GIScussions)").

[![](https://farm1.static.flickr.com/60/175558343_6b38e4231f.jpg)](https://www.flickr.com/photos/geoffeg/175558343/ "https://www.flickr.com/photos/geoffeg/175558343/")

With all the data we consume and emit, we spend a lot of time and effort evangelising APIs and web services that use it. But as an industry we really need to start to act clearly and consistently in order to be taken seriously and in order for the Internet industry to realise the potential that we all think it's capable of.  
 

