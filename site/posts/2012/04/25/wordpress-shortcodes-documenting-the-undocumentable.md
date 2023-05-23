title: WordPress Shortcodes; Documenting The Undocumentable
slug: wordpress-shortcodes-documenting-the-undocumentable
date: 2012-04-25 15:52:37
tags: berlin,code,documentation,geotagged,plugin,shortcode,wordpress
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: the Hilton Berlin Hotel, Berlin
geo_lng: 13.3926
geo_lat: 52.51191

WordPress [shortcodes](https://en.support.wordpress.com/shortcodes/ "https://en.support.wordpress.com/shortcodes/"). A great idea. Small snippets of text with a special meaning, enclosed in left and right angle brackets. Put one of these in a WordPress post or page and WordPress automagically expands the shortcode and replaces it with the thing that the shortcode does.

WordPress has a built-in set of shortcodes and many plugins add to this repertoire, adding one or more of their own shortcodes. But here's the problem. Shortcodes are meant to be expanded and in 99.999% of cases, that's just what you want to do. But what happens if you're one of those 0.001%; you've written a plugin that adds a shortcode and you want to document it. You can't just write the shortcode in a post as WordPress will go ahead and expand it for you.

You could take the time and effort to replace the `[` and `]` characters which surround a shortcode, writing something like `&#91;shortcode&#93;`, which is exactly what I've been doing since I released the first version of [WP Biographia](/pages/codeage/wp-biographia/ "/pages/codeage/wp-biographia/"). But this is a long and laborious process. Frankly, it's boring and a pain in the backside.

<!-- TEASER_END -->

[![](/wp-content/uploads/2012/04/2570514012_e00ca63340_b.jpg "WordPress Schwag ...")](https://www.flickr.com/photos/whiteafrican/2570514012/in/faves-vicchi/ "https://www.flickr.com/photos/whiteafrican/2570514012/in/faves-vicchi/")

But then I noticed a crucial phrase in the documentation for the [WordPress Shortcode API](https://codex.wordpress.org/Shortcode_API "https://codex.wordpress.org/Shortcode_API") ...




> The shortcode parser uses a single pass on the post content. This means that if the $content parameter of a shortcode handler contains another shortcode, it won’t be parsed



... in other words, if you put one shortcode inside another shortcode, the shortcode inside won't be automagically expanded by WordPress for you. Which is exactly what I wanted to stop me from constantly having to write posts using the HTML entities for `[` and `]`.

So, despite the irony inherent in writing a plugin to stop the shortcode from another plugin working, I hacked together [WP Shortcode Shield](/pages/codeage/wp-shortcode-shield/ "/pages/codeage/wp-shortcode-shield/"). As far as plugins go, it doesn't really do much, it just defines two shortcodes, one called `[wp_scs][wp_scs][/wp_scs]` and a slightly more long-winded one called `[wp_scs][wp_shortcode_shield][/wp_scs]` which allows me to wrap references to other shortcodes in a post without WordPress doing what it's supposed to do, but which I don't want it to do.

Which means I can write this post ... without having to worry about WordPress shortcodes. Of course, this *feature* of the WordPress shortcode API may well be *fixed* at some point, in which case WP Shortcode Shield will promptly stop working, but for now, it does the job. As with all of the other plugins for WordPress I've written, it's sitting in the [WordPress Plugin Repository](https://wordpress.org/extend/plugins/wp-shortcode-shield/ "https://wordpress.org/extend/plugins/wp-shortcode-shield/") right now, as well as living on [GitHub](https://vicchi.github.com/wp-shortcode-shield "https://vicchi.github.com/wp-shortcode-shield").

Photo Credits: [Erik Hersman](https://www.flickr.com/photos/foxgrrl/3974595767/ "https://www.flickr.com/photos/foxgrrl/3974595767/") on Flickr.



