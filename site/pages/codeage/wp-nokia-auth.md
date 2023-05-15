<!--
.. title: WP Nokia Auth
.. slug: wp-nokia-auth
.. date: 2012-04-12 20:13:54
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text
.. categories: 
.. has_math: no
.. status: draft
.. wp-status: draft
-->

<html><body><h2>What's Changed?</h2>
WP Nokia Auth v1.0 is now on <a href="https://github.com/vicchi/wp-nokia-auth">GitHub</a>.
<h2>Plugin Overview</h2>
Easily manage your Nokia Location API credentials across all themes and plugins on a site.
<ul>
 	<li><a href="#description">Description</a></li>
 	<li><a href="#installation">Installation</a></li>
 	<li><a href="#screenshots">Screenshots</a></li>
 	<li><a href="#faq">Frequently Asked Questions</a></li>
 	<li><a href="#download">Download WP Nokia Auth</a></li>
 	<li><a href="#changelog">What's Changed?</a></li>
</ul>
<h2><a name="description"></a>Description</h2>
This plugin allows you to manage your registered Nokia Location API credentials in a single place and, via a supplied PHP helper class, easily use them across all themes and plugins that use Nokia Location APIs on a WordPress site.

Settings and options include:
<ol>
 	<li>Managing and maintaining your registered application ID, application token and application secret.</li>
 	<li>Sample code incorporating your authentication tokens ready for copying and pasting into your code.</li>
 	<li>A PHP helper class, <code>WPNokiaAuthHelper</code> to allow you to easily gain access to the code you need to authenticate with the Nokia Location APIs and incorporate this into the PHP and/or JavaScript code for your WordPress theme or plugin.</li>
</ol>
<h2><a name="installation"></a>Installation</h2>
<ol>
 	<li>You can install WP Nokia Auth automatically from the WordPress admin panel. From the Dashboard, navigate to the <em>Plugins / Add New</em> page and search for "<em>WP Nokia Auth</em>" and click on the <em>"Install Now"</em> link.</li>
 	<li>Or you can install WP Nokia Auth manually. Download the plugin Zip archive and uncompress it. Copy or upload the <code>wp-nokia-auth</code> folder to the <code>wp-content/plugins</code> folder on your web server.</li>
 	<li>Activate the plugin. From the Dashboard, navigate to Plugins and click on the <em>"Activate"</em> link under the entry for WP Nokia Auth.</li>
 	<li>Enter your registered Nokia Location API application ID, token and secret; from the Dashboard, navigate to the <em>Settings / WP Nokia Auth</em> page or click on the <em>"Settings"</em> link from the Plugins page on the Dashboard.</li>
 	<li>Click on the <em>"Save Changes"</em> button to preserve your chosen settings and options.</li>
</ol>
<h2><a name="screenshots"></a>Screenshots</h2>
<ul>
 	<li><a href="#clean-install">Clean Installation</a></li>
 	<li><a href="#configured-install">Configured Installation</a></li>
</ul>
<h3><a name="clean-install"></a>Clean Installation</h3>
<div></div>
<div><a href="/wp-content/uploads/2012/04/screenshot-1.jpg"><img class="aligncenter size-full wp-image-2466" title="screenshot-1" src="/wp-content/uploads/2012/04/screenshot-1.jpg" alt="" width="601" height="407"></a></div>
<div></div>
<h3><a name="configured-install"></a>Configured Installation</h3>
<div></div>
<div><a href="/wp-content/uploads/2012/04/screenshot-2.jpg"><img class="aligncenter size-full wp-image-2467" title="screenshot-2" src="/wp-content/uploads/2012/04/screenshot-2.jpg" alt="" width="601" height="745"></a></div>
<div></div>
<h2><a name="faq"></a>Frequently Asked Questions</h2>
<h3>How do I get help or support for this plugin?</h3>
In short, very easily. But before you read any further, take a look at [<a href="/2012/03/31/asking-for-wordpress-plugin-help-and-support-without-tears/">Asking For WordPress Plugin Help And Support Without Tears</a> before firing off a question. In order of preference, you can ask a question on the <a href="http://wordpress.org/tags/wp-nokia-auth?forum_id=10">WordPress support forum</a>; this is by far the best way so that other users can follow the conversation. You can ask me a question on Twitter; I'm <a href="http://twitter.com/vicchi">@vicchi</a>(http://twitter.com/vicchi). Or you can drop me an email instead. I can't promise to answer your question but I do promise to answer and do my best to help.
<h3>Is there a web site for this plugin?</h3>
Absolutely, it's the page you're reading,  the <a href="/pages/codeage/wp-nokia-auth/">WP Nokia Auth home page</a> which always contains the latest information. There's also the official <a href="http://wordpress.org/extend/plugins/wp-nokia-auth/">WordPress plugin repository page</a> and the <a href="http://vicchi.github.com/wp-nokia-auth/">source for the plugin is on GitHub</a> as well.
<h3>Nokia Maps? Really?</h3>
Yes. Really. At the time of writing (April 2012) 196 countries, 75M Places, 2.4M map changes a day. That sort of really. All available through a set of developer friendly APIs.
<h3>OK. Nokia Maps. I get it. But why register?</h3>
The Nokia Location APIs work if you don't register. But they work even better and you can do even more if you do register. Take transactional limits. Unregistered users of the Location APIs get 1 million transactions over a lifetime. 1 million sounds a lot but it soon mounts up. Registered users get 2 million transactions. <em>Per month</em>. <a href="http://www.developer.nokia.com/Develop/Maps/Quota/">Plus a whole lot more</a>.
<h3>Why are you so pro Nokia Maps?</h3>
A disclaimer is in order. I work for Nokia's Location &amp; Commerce group, that produces Nokia Maps. I see what goes into the map and what gets displayed. I'm very pro Nokia Maps for just this reason.
<h3>I want to amend/hack/augment this plugin; can I do the same?</h3>
Totally; this plugin is licensed under the GNU General Public License v2 (GPLV2). See <a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt">http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt</a> for the full license terms.
<h2><a name="download"></a>Download WP Nokia Auth</h2>
You can download the latest version of WP Nokia Auth from the following sources.
<ul>
 	<li>From this <a href="/wp-content/uploads/2012/04/wp-nokia-auth-v1.0.0.tar.gz">server</a></li>
 	<li>From the plugin's github page at <a href="https://github.com/vicchi/wp-nokia-auth/">https://github.com/vicchi/wp-nokia-auth/</a></li>
 	<li>From the official WordPress plugin repository (coming soon)</li>
</ul>
<h2><a name="changelog"></a>What's Changed?</h2>
The current version is 1.0 (2012.04.12)
<h3>v1.0</h3>
<ul>
 	<li>First version of WP Nokia Auth released</li>
</ul></body></html>
