title: Hacking WP Biographia's Appearance With CSS
slug: hacking-wp-biographias-appearance-with-css
date: 2012-04-05 00:29:55
tags: appearance,css,geotagged,marriott,plugin,sanfrancisco,sf,style,where,wordpress,wp-biographia
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: the Marriott Marquis, San Francisco
geo_lng: -122.4056
geo_lat: 37.7581

The contents of the Biography Box that the [WP Biographia](/pages/codeage/wp-biographia/ "/pages/codeage/wp-biographia/") WordPress plugin produces are easily customisable through the plugin's settings and options. The upcoming new version of the plugin will add to this, allowing almost limitless options for adding to the Biography Box though cunning use of the WordPress filter mechanism. But what if you're happy with the content of the Biography Box, but want to change the *way* in which the Biography Box looks? This is easily achievable with a little bit of CSS know-how.

<!-- TEASER_END -->

[![](/wp-content/uploads/2012/04/WP-Biographia-Style.png "Hacking WP Biographia's Style")](/wp-content/uploads/2012/04/WP-Biographia-Style.png "/wp-content/uploads/2012/04/WP-Biographia-Style.png")

The layout of the Biography Box that WP Biographia produces looks something like this ...
`<div class="wp-biographia-container-xxx" style="background-color:#FFFFFF;">  
<div class="wp-biographia-pic" style="height:100px; width:100px;">  
<img ... />  
</div> <!-- end image div -->  
<div class="wp-biographia-text">  
<h3>Biography heading</h3>  
<p>Biography text</p>  
<div class="wp-biographia-links">  
<small><ul class="wp-biographia-list wp-biographia-list-xxx">  
</ul>  
</small>  
</div> <!-- end links div -->  
</div> <!-- end biography text div -->  
</div> <!-- end biography container div -->`

The main container is styled by `wp-biographia-container-xxx`, where `xxx` is one of `top`, `around` or `none` depending on your chosen Biography Box border option.

The author's photo, if present, is styled by `wp-biographia-pic`; note that the photo size is not CSS style-able as it's specified by the plugin's settings and the plugin emits the `style="height:size-px; width:size-pix;"` for you based on that setting.

The biography text and social media/contact links are styled by `wp-biographia-text`, the biography text by `wp-biographia-text p` and the links by `wp-biographia-list` and `wp-biographia-list-xxx`, where `xxx` is one of `text` or `icon` dependent on whether you've selected the links to be text or icons (oddly enough).

The links are also styled by `ul.wp-biographia-list-xxx li` (again `xxx` is one of `text` or `icon`) and if you're using icons there's also `.wp-biographia-list-icon a:link` and `.wp-biographia-list-icon a:visited`. Finally, the icon size is styled by `.wp-biographia-item-icon`.

All of this is in the plugin's CSS file which is usually located at `/wp-content/plugins/wp-biographia/css/wp-biographia.css`.

Hopefully all of this will give you enough information to go on to add/tweak the CSS to your liking, but ...

Where does the CSS you've tweaked go? There are several schools of thought on this.

Firstly, you can just hack the plugin's CSS directly. It's quick. It's easy. But it's also fraught with risk. Not only are you messing with the plugin, which may have strange and unforeseen side effects, but your changes will be over-written when you update the plugin to a new version.

Secondly, you can just hack your theme's CSS directly. But as with the plugin's CSS, this will get overwritten with an updated version when you upgrade the theme.

The third way, is to add the CSS to a new file and to use the theme's `functions.php` file to load the CSS into your pages and posts. Now granted, the theme's `functions.php` file may still be overwritten during an upgrade but themes tend to be updated less than plugins and you are still able to isolate the CSS in a file which isn't part of the WordPress core, the plugin or the theme.

So here's how you do this. Put the CSS you want in a file, let's call it `custom.css`, and place this into the same directory as the root of your theme. If you're using the TwentyTen theme for example, the path would look something like ...

`/wp-content/themes/twentyten/custom.css`

Now you need to get your theme to load the custom CSS. To do this you need to add a function to load the CSS to the `wp_enqueue_scripts` hook and then within that function, make the CSS get loaded in addition to the other CSS your theme uses. This code goes into your theme's `functions.php` and looks something like this ...




```


add_action ('wp_enqueue_scripts', 'add_custom_css');
function add_custom_css () {
	$uri = get_stylesheet_directory_uri ();
	wp_enqueue_style ('custom-css', $uri . '/custom.css');
}


```



