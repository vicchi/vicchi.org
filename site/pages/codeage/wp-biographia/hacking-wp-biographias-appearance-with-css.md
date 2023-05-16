title: Hacking WP Biographia's Appearance With CSS
slug: hacking-wp-biographias-appearance-with-css
date: 2012-07-17 11:37:28
tags: 
category: 
link: 
description: 
type: text
categories: 
has_math: no
status: published
geo_place: The Marriott Marquis, San Francisco
geo_lng: 37.7581
geo_lat: -122.4056

<p>The contents of the Biography Box that the <a href="/pages/codeage/wp-biographia/">WP Biographia</a> WordPress plugin produces are easily customisable through the plugin's settings and options. The upcoming new version of the plugin will add to this, allowing almost limitless options for adding to the Biography Box though cunning use of the WordPress filter mechanism. But what if you're happy with the content of the Biography Box, but want to change the <em>way</em> in which the Biography Box looks? This is easily achievable with a little bit of CSS know-how.

href="/wp-content/uploads/2012/04/WP-Biographia-Style.png"><img class="aligncenter size-full wp-image-2403" title="Hacking WP Biographia's Style" src="/wp-content/uploads/2012/04/WP-Biographia-Style.png" alt="" width="675" height="477"></a>

The layout of the Biography Box that WP Biographia produces looks something like this ...
<code>
<span style="color:#900">&lt;div class="wp-biographia-container-xxx" style="background-color:#FFFFFF;"&gt;</span><br><span style="color:#900">&lt;div class="wp-biographia-pic" style="height:100px; width:100px;"&gt;</span><br><span style="color:#900">&lt;img ... /&gt;</span><br><span style="color:#900">&lt;/div&gt;</span> <span style="color:#900">&lt;!-- end image div --&gt;</span><br><span style="color:#900">&lt;div class="wp-biographia-text"&gt;</span><br><span style="color:#900">&lt;h3&gt;</span>Biography heading<span style="color:#900">&lt;/h3&gt;</span><br><span style="color:#900">&lt;p&gt;</span>Biography text<span style="color:#900">&lt;/p&gt;</span><br><span style="color:#900">&lt;div class="wp-biographia-links"&gt;</span><br><span style="color:#900">&lt;small&gt;</span><span style="color:#900">&lt;ul class="wp-biographia-list wp-biographia-list-xxx"&gt;</span><br><span style="color:#900">&lt;/ul&gt;</span><br><span style="color:#900">&lt;/small&gt;</span><br><span style="color:#900">&lt;/div&gt;</span> <span style="color:#900">&lt;!-- end links div --&gt;</span><br><span style="color:#900">&lt;/div&gt;</span> <span style="color:#900">&lt;!-- end biography text div --&gt;</span><br><span style="color:#900">&lt;/div&gt;</span> <span style="color:#900">&lt;!-- end biography container div --&gt;</span><br></code>

The main container is styled by <code>wp-biographia-container-xxx</code>, where <code>xxx</code> is one of <code>top</code>, <code>around</code> or <code>none</code> depending on your chosen Biography Box border option.

The author's photo, if present, is styled by <code>wp-biographia-pic</code>; note that the photo size is not CSS style-able as it's specified by the plugin's settings and the plugin emits the <code>style="height:size-px; width:size-pix;"</code> for you based on that setting.

The biography text and social media/contact links are styled by <code>wp-biographia-text</code>, the biography text by <code>wp-biographia-text p</code> and the links by <code>wp-biographia-list</code> and <code>wp-biographia-list-xxx</code>, where <code>xxx</code> is one of <code>text</code> or <code>icon</code> dependent on whether you've selected the links to be text or icons (oddly enough).

The links are also styled by <code>ul.wp-biographia-list-xxx li</code> (again <code>xxx</code> is one of <code>text</code> or <code>icon</code>) and if you're using icons there's also <code>.wp-biographia-list-icon a:link</code> and <code>.wp-biographia-list-icon a:visited</code>. Finally, the icon size is styled by <code>.wp-biographia-item-icon</code>.

All of this is in the plugin's CSS file which is usually located at <code>/wp-content/plugins/wp-biographia/css/wp-biographia.css</code>.

Hopefully all of this will give you enough information to go on to add/tweak the CSS to your liking, but ...

Where does the CSS you've tweaked go? There are several schools of thought on this.

Firstly, you can just hack the plugin's CSS directly. It's quick. It's easy. But it's also fraught with risk. Not only are you messing with the plugin, which may have strange and unforeseen side effects, but your changes will be over-written when you update the plugin to a new version.

Secondly, you can just hack your theme's CSS directly. But as with the plugin's CSS, this will get overwritten with an updated version when you upgrade the theme.

The third way, is to add the CSS to a new file and to use the theme's <code>functions.php</code> file to load the CSS into your pages and posts. Now granted, the theme's <code>functions.php</code> file may still be overwritten during an upgrade but themes tend to be updated less than plugins and you are still able to isolate the CSS in a file which isn't part of the WordPress core, the plugin or the theme.

here's how you do this. Put the CSS you want in a file, let's call it <code>custom.css</code>, and place this into the same directory as the root of your theme. If you're using the TwentyTen theme for example, the path would look something like ...

<code>/wp-content/themes/twentyten/custom.css</code>

Now you need to get your theme to load the custom CSS. To do this you need to add a function to load the CSS to the <code>wp_enqueue_scripts</code> hook and then within that function, make the CSS get loaded in addition to the other CSS your theme uses. This code goes into your theme's <code>functions.php</code> and looks something like this ...

</p><pre>
<code>
add_action ('wp_enqueue_scripts', 'add_custom_css');
function add_custom_css () {
	$uri = get_stylesheet_directory_uri ();
	wp_enqueue_style ('custom-css', $uri . '/custom.css');
}
</code>
</pre>
