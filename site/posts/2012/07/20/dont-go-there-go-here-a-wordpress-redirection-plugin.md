title: Don't Go There, Go Here; A WordPress Redirection Plugin
slug: dont-go-there-go-here-a-wordpress-redirection-plugin
date: 2012-07-20 13:50:02
tags: code,geotagged,http,plugin,redirect,redirection,teddington,wordpress,wp-avertere
category: blog
link: 
description: 
type: text
has_math: no
status: published

Despite having written 5 plugins for WordPress I've only just scratched the surface of what it's possible to make WordPress do. So when I want to make WordPress do something that I'm not sure a) how to do and b) whether it's even possible or not, I turn to a search engine. More often than not I get an answer. Often that answer seems to start along the lines of

> 
> put the following code in your theme's functions.php file
> 

<!-- TEASER_END -->

It's not that this is *wrong* but I have a slight issue with hacking a theme's `functions.php file`, for a number of reasons. Firstly this is theme specific; change your theme and your modifications still exist, they're just in your old theme and you'll need to remember to copy and paste them over to the new theme. Secondly, any file which is part of a theme can, and probably will, be overwritten on a theme update and unless you've saved a copy of your changes to `functions.php`, you can wave them goodbye.

So whenever I see the magic phrase *put the following code in your theme's functions.php file*, nine times out of ten I mentally read this as *this should really live in a plugin*.

Which is exactly what happened when I wanted to set up a redirection so that anyone hitting the URL of a certain post on my blog would be automagically redirected to another URL. The most common solution to this was to set up a custom field, called something like `redirect` and then hook into `template_redirect`, check for the custom field in the post metadata and then fire off an HTTP 301 redirect via `wp_redirect`. Where should I do this? In my theme's `functions.php` of course. I naturally read this as *this should be in a plugin*. A quick search through the WordPress plugin repository revealed that there were plugins that sort of did this, but none of them did precisely what I wanted.

Thus was WP Avertere born. It was originally going to be called WP Redirect but that plugin name was already taken and so, in line with some of my other WordPress plugins, WP Biographia and WP Quadratum, WP Avertere, named from the latin for "*divert*" came into being.

[![](/wp-content/uploads/2012/07/v1.0.0-screenshot-1.jpg "v1.0.0-screenshot-1")](/wp-content/uploads/2012/07/v1.0.0-screenshot-1.jpg "/wp-content/uploads/2012/07/v1.0.0-screenshot-1.jpg")

The plugin does all of the above custom field mangling, `template_redirect` hooking and `wp_redirect` redirecting that I could have done in `functions.php`. But it does this ... cleaner.

The plugin adds a custom meta box to the Admin Edit screen for posts, for pages and for any custom post type. It allows you to check your redirection URL for well formed-ness. It allows you to set up temporary and permanent redirections. It hooks into the `page_link` and `post_link` hooks so that whenever you see a permalink to the old URL it'll read as a permalink to the new, redirected URL. And most importantly of all, it allows you to cancel an existing redirection for those times when you decide you don't want a URL to be redirected after all.

As with all the WordPress plugins I've written, and this is plugin number 6, the code is up for forking and hacking around on [GitHub](https://github.com/vicchi/wp-avertere "https://github.com/vicchi/wp-avertere"). It'll also be on the WordPress Plugin Repository once I've published this post and submitted the plugin to the benevolent WordPress plugin overlords. Until then, you can download the plugin's source in one convenient archive [right here](/pages/codeage/wp-avertere/ "/pages/codeage/wp-avertere/"), as GitHub's downloads don't, for some reason, include Git submodules.

[![](/wp-content/uploads/2012/07/v1.0.0-screenshot-2.jpg "v1.0.0-screenshot-2")](/wp-content/uploads/2012/07/v1.0.0-screenshot-2.jpg "/wp-content/uploads/2012/07/v1.0.0-screenshot-2.jpg")

But one final caveat. What happens if the original post or page that you want to redirect has comments? With this first version of the plugin the comments will still be there but you won't be able to see them as the redirect will automagically push you to the new, redirected, URL. I'm well aware that this is a shortcoming and the next version of the plugin will support the ability to copy the comments from the source post to the new, redirected, post.

