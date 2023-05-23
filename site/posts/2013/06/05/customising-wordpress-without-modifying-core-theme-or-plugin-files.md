title: Customising WordPress Without Modifying Core, Theme Or Plugin Files
slug: customising-wordpress-without-modifying-core-theme-or-plugin-files
date: 2013-06-05 12:19:38
tags: code,css,geotagged,javascript,php,plugin,teddington,wordpress,wp-customizer
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

A standard WordPress install is incredibly powerful and flexible. For a lot of people, WordPress out of the box plus one of the stock WordPress themes is enough. But the possibilities for customization are endless; you can add plugins and other themes. Sometimes these do just what you want. Sometimes you need to ... tweak WordPress.

A very high proportion of the customization advice you'll find on the web starts with these lines ... *add the following to the end of your theme's `functions.php`* or even worse, advises that you modify the source code of your theme or your plugins. This is *bad* for many reasons:


* Editing your theme's `functions.php` makes *theme specific* customizations; change your theme and your customizations will no longer get loaded.
* When your theme and plugins get updated you'll find all your careful hand crafted customizations get overwritten and lost.
* A lot of theme and plugin authors won't offer support for changes you might have made to the source code.
* Your customizations might work; but you might also inadvertently make some other changes which will stop things working.


WordPress doesn't yet support a way for site specific customizations to be made and loaded without touching theme, plugin or core files; that's why I wrote [WP Customizer](/pages/codeage/wp-customizer/ "/pages/codeage/wp-customizer/") and that's what this plugin is for. When WordPress does support such a way, this plugin will thankfully be obsolete.

<!-- TEASER_END -->

[![screenshot-1](/wp-content/uploads/2013/06/screenshot-1.jpg)](/wp-content/uploads/2013/06/screenshot-1.jpg "/wp-content/uploads/2013/06/screenshot-1.jpg")
There's another, not entirely altruistic, reason behind this plugin. One of the most common support requests I get for [WP Biographia](/pages/codeage/wp-biographia/ "/pages/codeage/wp-biographia/") is to help with clashes between someone's theme's CSS and the plugin's CSS. Once that's been resolved, the next question is almost always *how do I load this custom CSS*? The answer is now straightforward. Put your CSS file in a directory in the root of your WordPress installation, install WP Customizer, tell it to load custom CSS files and where to find them and you're done. No editing of `functions.php`. No learning now to hook into the `wp_enqueue_scripts` action, no learning how to call `wp_register_style` and `wp_enqueue_style`. It should all just work.


But WP Customizer works with more than just custom CSS files. You can also load custom PHP functions and custom Javascript and jQuery files as well. What's more, you can configure these to load just for your site's publicly visible front end, just for your site's admin pages or even both.


WP Customizer uses the file system as a data-store metaphor and allows you to main a library of common customisations that are independent of the theme and plugins you're currently using. Out of the box, the plugin looks for custom files to load in the root of your WordPress installation in a set of named directories which should be relatively self explanatory, `functions`, `admin_functions`, `common_functions` and so on for CSS and for scripts.


But you can just as easily create your own directory structure, put together in a way that makes sense to you, perhaps something along the lines of ... `site/front-end/css`, `site/front-end/functions`, `site/admin/scripts` and so on


... you're limited only by the limitations of your file system and the way of organising things that make sense to you.


[![screenshot-5](/wp-content/uploads/2013/06/screenshot-5.jpg)](/wp-content/uploads/2013/06/screenshot-5.jpg "/wp-content/uploads/2013/06/screenshot-5.jpg")
One final word of caution though. In order to use this plugin, you have to know how to write the code that lives in the customisation files themselves. That means knowing how to write PHP functions to exercise the WordPress API. How to write JavaScript and jQuery that works with WordPress. How to write CSS. This plugin can't help you with that. But there's ample tutorials and information out there on the interwebs to help you.


Just remember, when you read something that says *just add the following code to your theme's `functions.php`*, ignore this little piece of advice and add it a local customisation file and load that through WP Customizer instead. Your WordPress site will thank you for it someday.


To download or install WP Customizer, either search for *WP Customize*r from the WordPress Dashboard or go to plugin’s page on the [official WordPress plugin repository](https://wordpress.org/plugins/wp-customizer/ "https://wordpress.org/plugins/wp-customizer/"). If you want to fork the source code of the plugin, you can find it on the plugin’s GitHub page at [https://github.com/vicchi/wp-customizer](https://github.com/vicchi/wp-customizer "https://github.com/vicchi/wp-customizer").





