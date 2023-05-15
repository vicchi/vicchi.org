title: Of CSS, Pointers, Archive Pages and Meta Boxes; WP Biographia Reaches v3.2
slug: of-css-pointers-archive-pages-and-meta-boxes-wp-biographia-reaches-v3-2
date: 2012-07-23 14:16:55
tags: code,geotagged,plugin,release,teddington,wordpress,wp-biographia
category: blog
link: 
description: 
type: text
has_math: no
status: published

WP Biographia v3.2 got pushed to the WordPress plugin repository this afternoon. In the grand scheme of things it's not a massive release but it goes a long way to solving some of the most frequently asked questions that arrive in my Inbox and via the plugin's support forums.

As I've mentioned a few times in the past, it's nigh on impossible to test a WordPress plugin against the myriad combinations of themes and plugins that exist in the WordPress ecosystem. Especially where CSS is concerned, plugins and themes frequently don't play well together and bleed over from another theme or plugin's CSS often makes WP Biographia's formatting look ... interesting. This tends to happen in two places. Firstly in the formatting of the contact links in the Biography Box and secondly in the positioning of the user's avatar image.

Wp Biographia v3.2 provides two workarounds for this. The plugin's CSS now uses the `!important` CSS specifier to ensure the CSS is applied as it should be in as many cases as is possible.

But sometimes this isn't enough to fix formatting issues, especially if the plugin's `the_content` filter priority has been dropped below the default value of `10`, to get the Biography Box to appear in the right order with the output of other plugins. In this case, the WordPress `wpautop` filter, which automagically adds paragraph tags, runs after the Biography Box is produced. In this situation you can now tell the plugin to synchronise the `wpautop` filter to run after the Biography Box is produced.

<!-- TEASER_END -->

[![](/wp-content/uploads/2012/05/v3-2-screenshot-3.jpg "v3-2-screenshot-3")](/wp-content/uploads/2012/05/v3-2-screenshot-3.jpg "/wp-content/uploads/2012/05/v3-2-screenshot-3.jpg")

WordPress v3.3 added support for Pointers; helpful little pop-ups in the WordPress admin screens that display useful information. WP Biographia now supports these and when you install or upgrade you'll see a what's new popup, plus a guided tour of the plugin's settings tabs.

[![](/wp-content/uploads/2012/07/Whats-New-1024x728.jpg "What's New?")](/wp-content/uploads/2012/07/Whats-New.jpg "/wp-content/uploads/2012/07/Whats-New.jpg")

Another frequently requested feature was the ability to break down the display of the Biography Box on archive pages from an all or nothing basis to one where you can select which one of the author, category, date or tag archives you want the Biography Box to appear on. WP Biographia v3.2 now supports this ability.

[![](/wp-content/uploads/2012/05/v3-2-screenshot-1.jpg "v3-2-screenshot-1")](/wp-content/uploads/2012/05/v3-2-screenshot-1.jpg "/wp-content/uploads/2012/05/v3-2-screenshot-1.jpg")

The full list of new features and bug fixes for v3.2 looks something like this.



* Added: Support for synchronising the use of `wpautop` via the `the_content` and `the_excerpt` filters to ensure these filters fire before the Biography Box is produced when the plugin's filter priority is less than the default filter priority to avoid formatting issues for contact links.
* Added: Support for WordPress Pointers to display "what's new" information post install or upgrade and to provide a "guided tour" of the plugin's settings and options.
* Added: Support for displaying the Biography Box as a widget.
* Added: Support for a shorter biography to the user's profile to be used in conjunction with the Biography Box widget.
* Added: Support to display the Biography Box for all types of archive page; author, category, date and tag.
* Added: Custom meta boxes to the post/page/custom-post creation/editing screens to hide the Biography Box, making it easier to define the Admin screen's Exclusion settings.
* Added: Support for the shortcode's `user` attribute; deprecating support for the `author` attribute.
* Added: Increased the width of text and select boxes for the Admin and Exclusion admin tabs to allow for longer category names and longer lists of post IDs to be displayed.
* Added: Wrap the plugin's avatars (if present) in plugin specific CSS code to prevent theme specific CSS bleeding into the Biography Box.
* Fixed: The layout of the Biography Box for feeds now ignore displaying contact links as icons and formats them as plain text.
* Fixed: Example use of the `wp_biographia_feed` filter in `readme.txt`.
* Fixed: Bug where the `wp_biographia_feed` filter was never called in the context of a feed.
* Fixed: Formatting of HTML for the Biography Box post/page hiding options in the user's profile.
* Fixed: Use the term "hide" consistently across the plugin and documentation; previous versions used "hide" and "suppress" interchangeably.
* Fixed: Use the term "user" consistently across the plugin and documentation; previous versions used "author" and "user" interchangeably.
* Fixed: Bug where the last page of a multiply paged post was not correctly detected, resulting in the Biography Box being displayed for all pages.



So where does WP Biographia go from here? That's a very good question. Unless there's a major feature which the plugin doesn't support and which no-one has (yet) asked for I think the plugin will stay pretty much as is for the foreseeable future. For now, the plugin is relatively flexible and fast and I want it to stay that way. Unless you know better. In which case, let me know in the comments.

