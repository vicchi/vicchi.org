title: Reinventing The Geocoder With Just Three Words
slug: reinventing-the-geocoder-with-just-three-words
date: 2015-03-02 10:55:38
tags: addressing,barcelona,geocoding,geotagged,mwc15,what3words
category: blog
link: 
description: 
type: text
has_math: no
status: published

When I was a lot younger than I am now I learned the address of where I was growing up. More about that in a moment. First I want to mention what I *didn't* learn. 

I didn't learn that I was at TQ 23210 65789. Nor did I learn that I lived at 51.377792, -0.23107184. In just the same way that you probably pointed your browser at [www.vicchi.org]( "") rather than 91.146.108.26, because letters and words are easier to remember than numbers, I didn't learn the OS grid reference or the latitude and longitude of my home. 

Instead I learned the address. I learned I lived at 45 Ebbisham Road in Worcester Park in London's suburbs. Later, when I learned a bit more about the place I lived in I used to say my full address was 45 Ebbisham Road, Worcester Park, Surrey, KT4 8ND, United Kingdom. 

It puzzled me that I knew I lived in England and England was a country but not part of my address. It also puzzled me that I knew I lived in the London Borough of Kingston upon Thames but that also wasn't part of my address. 

Little did I know that I was being puzzled by the vague and capricious nature of addressing rules and that years later I'd try to work around these rules as part of my job. 

<!-- TEASER_END -->

Just as I learned names rather than coordinates and just as we use domain names rather than IP addresses, there's an unconscious sense that in Europe, North America and elsewhere an address is easy to remember, is hierarchical and structured in a certain consistent way. There’s also a sense that it’s easy to convert an address to and from coordinates and an address always identifies a position on a map precisely.

Which it does, mostly, except when it doesn't. 

Last year I was in India and found out first hand just how vague an address can be in a country where there's no postal codes, sometimes no house or property numbers and sometimes not even road names. If someone gave me an address for a hotel in London where the address was North Circular Road, London, I probably wouldn't believe them because I know that there's more to an address in London than just that. Yet an address of Ring Road, New Delhi is absolutely correct. It's also wildly inaccurate but that's all there is. That's the address.

Which brings me, in a roundabout way, to the point of this post and to the problems of geocoding. 

In the UK and elsewhere we instinctively know that an address is easy to parse, follows certain rules and identifies a unique location. It therefore follows that as there’s rules to an address, it should be easy to write a geocoder that understands and followed these rules. We know this to be so but in a lot of cases it's wrong. A lot of the time the best a geocoder can do is work out a rough position on a street, based on the fact it knows the start and end numbers on the street. A geocoder can make a good guess of where number 45 is on a street if it knows the street starts at number 1 and ends at number 100. This is often called address interpolation and this is used because gathering the precise coordinates for every single property on a street is a long and arduous task. If you have this sort of data it's called point addressing. It's difficult to make this data and it doesn't come cheap.

In Europe we smile wryly at online address forms which assume that European addresses work the same as US ones. That there's always 2 lines of street address. That there's always a state and ZIP code. We know it doesn't work that way over here.

But if we know that there's a difference in rules for UK and for US addresses why are we then often blind to the fact that other countries don't have street numbers? Or postal codes? Or street names? Or any other combination of the parts of an address we take for granted. 

This is why global geocoding is to difficult to do consistently well and it's why most geocoders are really meta geocoders with multiple geocoding engines tuned for different countries or languages or levels in an address hierarchy if that country has such a thing.

Maybe it's time for a different approach. Maybe it's time to stop relying on a method of addressing that seems to have been designed to deliver things to a property or location and look for an alternative that doesn’t need addressing rules, or a hierarchy and works consistently wherever in the world you're taking about.

Here’s how you might do this. Firstly you draw a grid over the surface of the earth. Then you give each of the squares, made by the grid you’ve just drawn, a label. Not an address. Not a number, which would make this easy for computers to work with but not so easy for humans. A label, with words that people can remember and easily get to grips with. Think of it as a location system for humans and not for geocoders.

That’s how you might do it, but in 2013 Chris Sheldrick and co-founder Jack Waley-Cohen *did* this. The grid they drew was 3m by 3m and the labels they assigned to each square were 3 words. They called it [what3words](https://what3words.com/ "https://what3words.com/"). In early 2014 I met with Chris and I have to say I didn’t quite get the concept. My initial reaction was that what we didn’t need was another unique set of location references. As an industry we’d been there, seen that and done it multiple times. Then a month later I was in India trying to help a cab driver navigate to my hotel whose address was the aforementioned Ring Road, New Delhi.

*Then I got it*.

[![w3w-barcelona](/wp-content/uploads/2015/03/w3w-barcelona.png)](/wp-content/uploads/2015/03/w3w-barcelona.png "/wp-content/uploads/2015/03/w3w-barcelona.png")

What we don’t need is another set of global location references that make it easy for geocoders to do their work. What we don’t need is another attempt to impose postal codes or consistent addressing schemes on the world, whether the world wants it or not.

What we do need is a way to say where something is, quickly, easily and unambiguously and to be able to tell someone. Think about it this way. Which is easier; to say I’m at 41.35636, 2.13491, I’m at Av. Joan Carles I, 64 08908 L’Hospitalet de Llobregat, Barcelona or to say I’m at [toffee chest totally](https://map.what3words.com/toffee.chest.totally "https://map.what3words.com/toffee.chest.totally")? I think the latter is by far the quickest way and one that offers the least potential for confusion when I’m sending this to someone, be that via text message, email or over the phone.

The possibilities for being able to say where you are suddenly got a lot easier and a whole lot wider in scope, allowing you to reference a place, no matter where you are in the world and regardless of what addressing system, if any exists in that place.

It also makes writing a geocoder far far easier too. The names and locations of each triple of words that what3words uses are all algorithmically generated, which makes it small, compact and easy to replicate. It also makes reverse geocoding, turning a set of coordinates into a locations, simpler as you just need to work out which 3m by 3m square you’re in and then looking that up.

Will this ever supplant the current systems out there in the world? Probably not. But does this make life a whole lot easier for people to talk about a place? Yes it does.



You are Here by [Roo Reynolds](https://www.flickr.com/photos/rooreynolds/92639417/ "https://www.flickr.com/photos/rooreynolds/92639417/"), CC-BY-NC


