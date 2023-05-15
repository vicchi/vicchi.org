title: WP Biographia In The Real World
slug: wp-biographia-in-the-real-world
date: 2011-08-31 07:41:48
tags: berlin,biographia,code,codeage,geotagged,plugin,wordpress,wp-biographia
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: the Nokia gate5 office in Schönhauser Allee, Berlin
geo_lng: 13.4108176
geo_lat: 52.5308072

It's been almost a month since [I released the first version of WP Biographia](/2011/08/08/wp-biographia-is-but-a-quarter-of-the-way-to-wp-mappa/ "/2011/08/08/wp-biographia-is-but-a-quarter-of-the-way-to-wp-mappa/") and in that time, according to the stats on the [WordPress plugin page](http://wordpress.org/extend/plugins/wp-biographia/ "http://wordpress.org/extend/plugins/wp-biographia/"), it's been downloaded 212 times. That's rather gratifying. Several people have also emailed me to tell me that they're using the plugin. That's even more gratifying.

But despite its simplicity, a [typical WordPress install](http://wordpress.org/download/ "http://wordpress.org/download/") is almost infinitely [customisable](http://wordpress.org/extend/ "http://wordpress.org/extend/") and so is almost never what's supplied in the installation download. People add in plugins, widgets and themes. This blog alone has 18 active plugins and a custom theme. While the plugins, widgets and themes should all play nicely together, sometimes there's strange and unforeseen side effects; here's two that have come to light over the first month of WP Biographia in the real world and not in the safe, sand-boxed environment of my blog.

<!-- TEASER_END -->

Firstly there's a CSS clash between WP Biographia and the [WPtouch plugin](http://wordpress.org/extend/plugins/wptouch/ "http://wordpress.org/extend/plugins/wptouch/"), which displays a mobile optimised version of WordPress when visiting the site on a smartphone browser. The combination of the default options for WPtouch sometimes messes slightly with the CSS for the Biography Box as can be seen below.



[![WPtouch - Restricted Mode Off](/wp-content/uploads/2011/08/WPtouch-Restricted-Mode-Off.png "WPtouch - Restricted Mode Off")](/wp-content/uploads/2011/08/WPtouch-Restricted-Mode-Off.png "/wp-content/uploads/2011/08/WPtouch-Restricted-Mode-Off.png")



This is something I'll have to look into in more detail, but for now, the workaround is to enable WPtouch restricted mode; once that's done, the CSS reverts to how it should look.

[![WPtouch - Restricted Mode On](/wp-content/uploads/2011/08/WPtouch-Restricted-Mode-On.png "WPtouch - Restricted Mode On")](/wp-content/uploads/2011/08/WPtouch-Restricted-Mode-On.png "/wp-content/uploads/2011/08/WPtouch-Restricted-Mode-On.png")



Another interesting oddity is when running WP Biographia with the Biography Box configured to be displayed on [Archive pages](http://codex.wordpress.org/Creating_an_Archive_Index "http://codex.wordpress.org/Creating_an_Archive_Index"). Some themes display this fine, but for other themes the Biography Box never appears. Each time I've seen this it turns out to be down to the way in which the theme renders the archive page. If the theme's archive.php uses [the\_content()](http://codex.wordpress.org/Function_Reference/the_content "http://codex.wordpress.org/Function_Reference/the_content") as part of the WordPress Loop then the Biography Box appears as it should, but if the theme uses [the\_excerpt()](http://codex.wordpress.org/Function_Reference/the_excerpt "http://codex.wordpress.org/Function_Reference/the_excerpt") as part of the Loop, then either the first 55 characters of the post or the post's specific excerpt will be displayed. As WP Biographia appends the Biography Box to the end of each post's content, themes which use [the\_excerpt()](http://codex.wordpress.org/Function_Reference/the_excerpt "http://codex.wordpress.org/Function_Reference/the_excerpt") will, sadly, never display as intended when used with WP Biographia. Thankfully, this is less a shortcoming of the plugin or of the theme, it's simply the way in which WordPress handles post excerpts.

All of this will appear in the [FAQ](http://wordpress.org/extend/plugins/wp-biographia/faq/ "http://wordpress.org/extend/plugins/wp-biographia/faq/") section of the plugin's README on the next release, which should, if I manage to write it, make the Biography Box available as a sidebar widget as well.


