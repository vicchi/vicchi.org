title: WP Biographia Is But A Quarter Of The Way To WP Mappa
slug: wp-biographia-is-but-a-quarter-of-the-way-to-wp-mappa
date: 2011-08-08 19:53:02
tags: biographia,bloggage,code,codeage,geotagged,git,github,javascript,maps,php,plugin,teddington,widget,wordpress,wp-biographia
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

In a way, this was all [Matt Whatsit](https://twitter.com/#!/mattwhatsit "https://twitter.com/#!/mattwhatsit")'s fault; he writes very profane and very funny blog posts and reading his recent [The Five Stages Of P\*\*\*\*d Wife](https://mattwhatsit.net/2011/04/29/the-5-stages-of-pissed-wife/ "https://mattwhatsit.net/2011/04/29/the-5-stages-of-pissed-wife/") (which you should read if you haven't already, err, read it) made me laugh, hell, it made me [ROFL](https://www.urbandictionary.com/define.php?term=rofl "https://www.urbandictionary.com/define.php?term=rofl") and [LMAO](https://www.urbandictionary.com/define.php?term=lmao "https://www.urbandictionary.com/define.php?term=lmao") at the same time but it also made me think, though not necessarily about wives or drunkenness ...

Now background reading and general swotting up on a topic is all very well but to really learn how to do something you just have to roll your sleeves up and do it yourself. Though it's probably stretching a comparison too far, you don't learn to drive a car through reading the highway code; you actually get behind the wheel (preferably under supervision) and ... drive. You don't learn about what food tastes good from a recipe book; you ... taste the stuff yourself.

And so it is with writing code and using new and unfamiliar APIs. It was definitely the case with my recent (reacquaintance of, and) foray into JavaScript and the addition of [support for Nokia's Ovi Maps API to the Mapstraction project](/2011/07/14/mapstraction-maps-and-me/ "/2011/07/14/mapstraction-maps-and-me/"), with the added benefit of having to teach myself how to move from my (by now very dated) knowledge of version and revision control under CVS to git.

<!-- TEASER_END -->

[![May the source code be with you](https://farm4.static.flickr.com/3031/3085727039_f2ee2de22f_d.jpg)](https://www.flickr.com/photos/ficek/3085727039/in/photostream/ "May the source code be with you")

So, first JavaScript and Mapstraction and the Nokia Maps API and now to PHP and the [WordPress API](https://codex.wordpress.org/WordPress_API's "https://codex.wordpress.org/WordPress_API's"). There's a lot of WordPress plugins that do [geo-related stuff](https://wordpress.org/extend/plugins/search.php?q=geo "https://wordpress.org/extend/plugins/search.php?q=geo") with your blog but none of them actually do what I want. [WP Geo](https://wordpress.org/extend/plugins/wp-geo/ "https://wordpress.org/extend/plugins/wp-geo/") comes close, but it uses Google Maps and Google Maps only. Now I have nothing against Google Maps or the Google Maps APIs but I want maps from the company I work for on my blog.

When I came to add Nokia's Maps API to Mapstraction I at least had a head start. I'd done some JavaScript and I was at least familiar with the Mapstraction API. But writing a WordPress plugin was another thing entirely. Despite hosting my blog on WordPress since 2004 and being able to hack a moderate amount of PHP, I'd never needed to use the WordPress API. Until now.

Bearing in mind the old adage about walking before you can run I decided the best way to tackle this was to write a WordPress plugin for something much more simplistic and this is where Matt Whatsit comes in. At the foot of each post is a nice little biography; in Matt's case it read "*Stole some Chewits in 1979. The guilt still haunts me*".

So I searched for a plugin that would give me this capability. There's lots. But as with the desire for a geo-related plugin, none of them did exactly what I wanted. The closest I could find was [Jon Bishop's](https://www.jonbishop.com/ "https://www.jonbishop.com/") [WP About Author](https://wordpress.org/extend/plugins/wp-about-author/ "https://wordpress.org/extend/plugins/wp-about-author/") plugin. So, as all WordPress plugins are licensed under the version 2 of the GNU Public License, I took Jon's plugin and hacked it to do what I wanted it to do. The result is what I've called [WP Biographia](https://wordpress.org/extend/plugins/wp-biographia/ "https://wordpress.org/extend/plugins/wp-biographia/") and you should be able to see the results of it at the foot of this post, if you're reading it from this [URL](/2011/08/08/wp-biographia-is-but-a-quarter-of-the-way-to-wp-mappa "/2011/08/08/wp-biographia-is-but-a-quarter-of-the-way-to-wp-mappa").

I now know, or at least understand at a conceptual level with much web searching of the [WordPress Codex](https://codex.wordpress.org/ "https://codex.wordpress.org/"), how to write and structure a WordPress plugin. I still need to know how to write and structure a WordPress widget but that will form part of the next version of WP Biographia. By then, I should be armed with enough WordPress API knowledge to start to write what I really wanted to write, which is my geo-related plugin, which may, or may not be called WP Mappa. I'm only a quarter of the way there, but it's a quarter more than when I started this.

In the meantime, [WP Biographia is now part of the official WordPress plugin repository](https://wordpress.org/extend/plugins/wp-biographia/ "https://wordpress.org/extend/plugins/wp-biographia/") and is also [up on github as well](https://github.com/vicchi/wp-biographia "https://github.com/vicchi/wp-biographia"). It also now has a [resident page here on my blog](/pages/codeage/wp-biographia/ "/pages/codeage/wp-biographia/") which I'll update as and when I make sufficient changes and improvements to warrant a new version.

Starting to code again is addictive and I seem to have managed to rack up a few [github repositories](https://github.com/vicchi "https://github.com/vicchi") of recent. WP Biographia is but one of what I've christened, in line with the theme of [Gary's Bloggage](/ "/"), [Gary's Codeage](/pages/codeage/ "/pages/codeage/"). For now, it's a holding pen for those code projects that live in github but for which I've yet to write a formal page on. These may appear sometime in the not too distant future as and when time permits.


Photo Credits: [ficek1618](https://www.flickr.com/photos/ficek/3085727039/in/photostream/ "https://www.flickr.com/photos/ficek/3085727039/in/photostream/") on Flickr.


