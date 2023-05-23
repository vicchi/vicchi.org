<!--
.. title: WP Quadratum
.. slug: wp-quadratum
.. date: 2012-04-12 20:16:31
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

<html><body><a href="/wp-content/uploads/2012/04/wp-quadratum-banner.jpg"><img src="/wp-content/uploads/2012/04/wp-quadratum-banner.jpg" alt="" title="WP Quadratum" class="aligncenter size-full wp-image-3245" width="805" height="282"></a>
<h2>What Is WP Quadratum?</h2>
WP Quadratum is a <a href="https://wordpress.org">WordPress</a> plugin to display your last <a href="https://foursquare.com">Foursquare</a> checkin as a map widget in the sidebar or embedded in a post or page, fully authenticated via OAuth 2.0.
<h2>What Does It Do?</h2>
This plugin allows you to display your last Foursquare checkin as a map widget on the sidebar or embedded via a shortcode in a post or page of your WordPress powered site.

You can configure WP Quadratum to ...
<ol>
 	<li>Associate your WordPress powered site with your <a href="https://foursquare.com/">Foursquare</a> account using <a href="https://oauth.net/2/">OAuth 2.0</a>, which keeps your personal information safe and secure.</li>
 	<li>Choose which map provider you want your checkin shown on; you can choose from:
<ol>
 	<li><a href="https://developer.here.com/javascript_api">HERE Maps</a></li>
 	<li><a href="https://developers.google.com/maps/documentation/javascript/">Google Maps v3</a></li>
 	<li><a href="https://msdn.microsoft.com/en-us/library/gg427610.aspx">Bing Maps v7</a></li>
 	<li><a href="https://www.openstreetmap.org">OpenStreetMap</a> from <a href="https://leafletjs.com/">Leaflet</a></li>
 	<li><a href="https://www.openstreetmap.org">OpenStreetMap</a> from <a href="https://openlayers.org">OpenLayers</a></li>
 	<li><a href="">OpenStreetMap</a> from <a href="https://developer.mapquest.com/web/products/open/sdk">MapQuest</a></li>
</ol>
</li>
 	<li>Add your maps API key(s) for your chosen map provider; HERE, Google, Bing and MapQuest maps all require API keys.</li>
 	<li>Choose the width and height of the widget and map on the sidebar. The width and height can be specified either as pixels (<code>px</code>) or as a percentage.</li>
 	<li>Choose the zoom level of the map display.</li>
</ol>
The <em>strapline</em> text containing the venue name, venue URL and timestamp of your last Foursquare checkin can be customised via the plugin's filters. See the <em><a href="#filters">Filter Support And Usage</a></em> section for more information.

The current version of this plugin allows you to associate a single Foursquare account with your WordPress site; associating multiple Foursquare accounts, one per user account is not currently supported.
<h2>How Do I Download WP Quadratum?</h2>
To download or install WP Quadratum on your WordPress powered site, either search for <em>WP Quadratum</em> from the WordPress Dashboard or go to plugin’s page on the official <a href="https://wordpress.org/extend/plugins/wp-quadratum/">WordPress plugin repository</a>.

If you want to fork the source code of the plugin, you can find it on the plugin’s GitHub page at <a href="https://github.com/vicchi/wp-quadratum">https://github.com/vicchi/wp-quadratum</a>.
<h2>What's New?</h2>
WP Quadratum v1.3.1 was released 09/22/13.
<h2>Full Documentation</h2>
<ul>
 	<li><a href="#installation">Installation</a></li>
 	<li><a href="#screenshots">Screenshots</a></li>
 	<li><a href="#faq">Frequently Asked Questions</a></li>
 	<li><a href="#shortcode">Shortcode Support and Usage</a></li>
 	<li><a href="#filters">Filter Support And Usage</a></li>
 	<li><a href="#changelog">What's Changed?</a></li>
</ul>
<h2><a id="installation"></a>Installation</h2>
<ol>
 	<li>You can install WP Quadratum automatically from the WordPress admin panel. From the Dashboard, navigate to the <em>Plugins / Add New</em> page and search for <em>"WP Quadratum"</em> and click on the <em>"Install Now"</em> link.</li>
 	<li>Or you can install WP Quadratum manually. Download the plugin Zip archive and uncompress it. Copy or upload the <code>wp-quadratum</code> folder to the <code>wp-content/plugins</code> folder on your web server.</li>
 	<li>Activate the plugin. From the Dashboard, navigate to Plugins and click on the <em>"Activate"</em> link under the entry for WP Quadratum.</li>
 	<li>Configure your Foursquare credentials; from the Dashboard, navigate to the <em>Settings / WP Quadratum</em> page or click on the <em>"Settings"</em> link from the Plugins page on the Dashboard.</li>
 	<li>To display your Foursquare checkins, WP Quadratum needs to be authorised to access your Foursquare account information; this is a simple, safe and secure 3 step process. WP Quadratum never sees your account login information and cannot store any personally identifiable information.
<ol>
 	<li>Register your WordPress site as a Foursquare application on the <a href="https://foursquare.com/developers/register">Foursquare App Registration</a> page. If you're not currently logged into your Foursquare account, you'll need to login with the Foursquare account whose checkins you want WP Quadratum to display. The <em>Your app name</em> field is a label you want to use to identify this connection to your Foursquare account. The <em>Download / welcome page url</em> is the URL of your Wordpress site. The <em>Redirect URI</em> will be provided for you and will be along the lines of <code>https://www.yoursite.com/wp-content/plugins/wp-quadratum/includes/wp-quadratum-callback.php</code> (this is just an example, <em>don't use this URL</em>). <em>Push API Notifications</em> should be set to <em>Disable pushes to this app</em>. All other fields can be left at their default values. Once you have successfully registered your site, you'll be provided with two keys, the <em>Client ID</em> and the <em>Client Secret</em>.</li>
 	<li>Copy and paste the supplied <em>Client ID</em> and <em>Client Secret</em> into the respective WP Quadratum setting fields. Click on the <em>"Save Changes"</em> button to preserve them.</li>
 	<li>You should now be authorised and ready to go; click on the <em>Connect to Foursquare</em> button.</li>
</ol>
</li>
 	<li>Choose your mapping provider. From the <em>Maps</em> tab, select the map provider from the <em>Maps Provider</em> drop down.</li>
 	<li>If your chosen mapping provider requires an API key or keys, enter them as requested. If you don't have an API key, each maps provider tab has a link to the provider's site where you can sign up and obtain your API key. Click on the <em>Save Changes</em> button to save your credentials.</li>
 	<li>Add and configure a WP Quadratum Widget. From the Dashboard, navigate to <em>Appearance / Widgets</em> and drag the WP Quadratum Widget to your desired widget area.</li>
 	<li>You can configure the widget's title, with widget's width and map height in <code>px</code> or as a percentage and the map zoom level. Click on the <em>Save</em> button to preserve your changes.</li>
</ol>
<h2><a id="screenshots"></a>Screenshots</h2>
<ol>
 	<li><a href="#install">Installed Plugins: Authentication prompt shown after activating plugin for the first time</a></li>
 	<li><a href="#foursquare-empty">Settings and Options: Foursquare Tab; No Client ID or Client Secret entered or saved</a></li>
 	<li><a href="#foursquare-saved">Settings and Options: Foursquare Tab; Client ID and Client Secret saved</a></li>
 	<li><a href="#foursquare-auth">Foursquare Authentication: Allow or deny plugin access to your Foursquare account</a></li>
 	<li><a href="#foursquare-complete">Settings and Options: Foursquare Tab; Successfully authenticated with Foursquare</a></li>
 	<li><a href="#here-settings">Settings and Options: Maps Tab; HERE Maps configuration</a></li>
 	<li><a href="#google-settings">Settings and Options: Maps Tab; Google Maps v3 configuration</a></li>
 	<li><a href="#leaflet-settings">Settings and Options: Maps Tab; Leaflet Maps configuration</a></li>
 	<li><a href="#bing-settings">Settings and Options: Maps Tab; Bing Maps v7 configuration</a></li>
 	<li><a href="#openlayers-settings">Settings and Options: Maps Tab; OpenLayers Maps configuration</a></li>
 	<li><a href="#mapquest-settings">Settings and Options: Maps Tab; MapQuest Open Maps configuration</a></li>
 	<li><a href="#shortcode-default">Settings and Options: Shortcode Tab; [wp_scs][wp_quadratum][/wp_scs] shortcode enabled</a></li>
 	<li><a href="#shortcode-empty">Settings and Options: Shortcode Tab; [wp_scs][wp_quadratum_locality][/wp_scs] shortcode enabled, no Factual OAuth Key or Secret entered or saved</a></li>
 	<li><a href="#shortcode-auth">Settings and Options: Shortcode Tab; [wp_scs][wp_quadratum_locality][/wp_scs] shortcode enabled, Factual OAuth Key and Secret saved</a></li>
 	<li><a href="#defaults">Settings and Options: Defaults Tab</a></li>
 	<li><a href="#colophon">Settings and Options: Colophon Tab</a></li>
 	<li><a href="#widget">Appearance: Widgets; Sample widget settings</a></li>
 	<li><a href="#widget-sample-1">Sample Widget: Google v3, HERE and Leaflet maps</a></li>
 	<li><a href="#widget-sample-2">Sample Widget: Bing v7, OpenLayers and MapQuest Open maps</a></li>
</ol>
<h3><a id="install"></a>Installed Plugins: Authentication prompt shown after activating plugin for the first time</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-1.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-1-1024x117.png" alt="v1.3.1-screenshot-1" class="aligncenter size-large wp-image-4253" width="980" height="111"></a>
<h3><a id="foursquare-empty"></a>Settings and Options: Foursquare Tab; No Client ID or Client Secret entered or saved</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-2.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-2-1024x758.png" alt="v1.3.1-screenshot-2" class="aligncenter size-large wp-image-4254" width="980" height="725"></a>
<h3><a id="foursquare-saved"></a>Settings and Options: Foursquare Tab; Client ID and Client Secret saved</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-3.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-3-1024x580.png" alt="v1.3.1-screenshot-3" class="aligncenter size-large wp-image-4255" width="980" height="555"></a>
<h3><a id="foursquare-auth"></a>Foursquare Authentication: Allow or deny plugin access to your Foursquare account</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-4.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-4-1024x320.png" alt="v1.3.1-screenshot-4" class="aligncenter size-large wp-image-4256" width="980" height="306"></a>
<h3><a id="foursquare-complete"></a>Settings and Options: Foursquare Tab; Successfully authenticated with Foursquare</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-5.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-5-1024x542.png" alt="v1.3.1-screenshot-5" class="aligncenter size-large wp-image-4257" width="980" height="518"></a>
<h3><a id="here-settings"></a>Settings and Options: Maps Tab; HERE Maps configuration</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-6.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-6-1024x542.png" alt="v1.3.1-screenshot-6" class="aligncenter size-large wp-image-4258" width="980" height="518"></a>
<h3><a id="google-settings"></a>Settings and Options: Maps Tab; Google Maps v3 configuration</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-7.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-7-1024x542.png" alt="v1.3.1-screenshot-7" class="aligncenter size-large wp-image-4259" width="980" height="518"></a>
<h3><a id="leaflet-settings"></a>Settings and Options: Maps Tab; Leaflet Maps configuration</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-8.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-8-1024x542.png" alt="v1.3.1-screenshot-8" class="aligncenter size-large wp-image-4260" width="980" height="518"></a>
<h3><a id="bing-settings"></a>Settings and Options: Maps Tab; Bing Maps v7 configuration</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-9.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-9-1024x542.png" alt="v1.3.1-screenshot-9" class="aligncenter size-large wp-image-4261" width="980" height="518"></a>
<h3><a id="openlayers-settings"></a>Settings and Options: Maps Tab; OpenLayers Maps configuration</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-10.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-10-1024x542.png" alt="v1.3.1-screenshot-10" class="aligncenter size-large wp-image-4262" width="980" height="518"></a>
<h3><a id="mapquest-settings"></a>Settings and Options: Maps Tab; MapQuest Open Maps configuration</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-11.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-11-1024x542.png" alt="v1.3.1-screenshot-11" class="aligncenter size-large wp-image-4263" width="980" height="518"></a>
<h3><a id="shortcode-default"></a>Settings and Options: Shortcode Tab; [wp_scs][wp_quadratum][/wp_scs] shortcode enabled</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-12.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-12-1024x542.png" alt="v1.3.1-screenshot-12" class="aligncenter size-large wp-image-4264" width="980" height="518"></a>
<h3><a id="shortcode-empty"></a>Settings and Options: Shortcode Tab; [wp_scs][wp_quadratum_locality][/wp_scs] shortcode enabled, no Factual OAuth Key or Secret entered or saved</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-13.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-13-1024x542.png" alt="v1.3.1-screenshot-13" class="aligncenter size-large wp-image-4265" width="980" height="518"></a>
<h3><a id="shortcode-auth"></a>Settings and Options: Shortcode Tab; [wp_scs][wp_quadratum_locality][/wp_scs] shortcode enabled, no Factual OAuth Key or Secret saved</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-14.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-14-1024x652.png" alt="v1.3.1-screenshot-14" class="aligncenter size-large wp-image-4266" width="980" height="623"></a>
<h3><a id="defaults"></a>Settings and Options: Defaults Tab</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-15.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-15-1024x652.png" alt="v1.3.1-screenshot-15" class="aligncenter size-large wp-image-4267" width="980" height="623"></a>
<h3><a id="colophon"></a>Settings and Options: Colophon Tab</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-16.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-16-1024x652.png" alt="v1.3.1-screenshot-16" class="aligncenter size-large wp-image-4268" width="980" height="623"></a>
<h3><a id="widget"></a>Appearance: Widgets; Sample widget settings</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-17.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-17.png" alt="v1.3.1-screenshot-17" class="aligncenter size-large wp-image-4269" width="298" height="474"></a>
<h3><a id="widget-sample-1"></a>Sample Widget: Google v3, HERE and Leaflet maps</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-18.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-18.png" alt="v1.3.1-screenshot-18" class="aligncenter size-large wp-image-4270" width="729" height="278"></a>
<h3><a id="widget-sample-2"></a>Sample Widget: Bing v7, OpenLayers and MapQuest Open maps</h3>
<a href="/wp-content/uploads/2013/11/v1.3.1-screenshot-19.png"><img src="/wp-content/uploads/2013/11/v1.3.1-screenshot-19.png" alt="v1.3.1-screenshot-19" class="aligncenter size-large wp-image-4271" width="729" height="278"></a>
<h2><a id="faq"></a>Frequently Asked Questions</h2>
<h3>How do I get help or support for this plugin?</h3>
In short, very easily. But before you read any further, take a look at <a href="/2012/03/31/asking-for-wordpress-plugin-help-and-support-without-tears/">Asking For WordPress Plugin Help And Support Without Tears</a> before firing off a question. In order of preference, you can ask a question on the <a href="https://wordpress.org/support/plugin/wp-quadratum">WordPress support forum</a>; this is by far the best way so that other users can follow the conversation. You can ask me a question on Twitter; I'm <a href="https://twitter.com/vicchi">@vicchi</a>. Or you can drop me an email instead. I can't promise to answer your question but I do promise to answer and do my best to help.
<h3>Is there a web site for this plugin?</h3>
Absolutely, it's the page you're reading,  the <a href="/pages/codeage/wp-quadratum/">WP Quadratum home page</a> which always contains the latest information. There's also the official <a href="https://wordpress.org/extend/plugins/wp-quadratum/">WordPress plugin repository page</a> and the <a href="https://vicchi.github.com/wp-quadratum/">source for the plugin is on GitHub</a> as well.
<h3>I have multiple authors on my site; can I have a widget for each author's Foursquare account?</h3>
In the current version, no. In the current version, you can link a single Foursquare account with your WordPress site (multi-site or network sites may work, assuming each site is for a single user but I haven't tested this). The plugin is currently designed to support a WordPress site which is used for a personal blog (in other words, exactly the way my site is set up). Future versions of the plugin <em>may</em> support this if people ask for this feature (assuming anyone apart from myself actually <em>uses</em> it!).
<h3>Can I change the format of the strapline that appears under the checkin map?</h3>
Yes. The <code>wp_quadratum_strapline</code> filter is for just this purpose. The filter is passed the default strapline as well as the URL to the Foursquare venue checked in at, the name of the venue and the date and time of the checkin as a UNIX timestamp. See the <em><a href="#filters">Filter Support And Usage</a></em> section for more information.
<h3>I want to amend/hack/augment this plugin; can I do the same?</h3>
Totally; this plugin is licensed under the GNU General Public License v2 (GPLV2). See <a href="https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt">https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt</a> for the full license terms.
<h3>Where does the name WP Quadratum come from?</h3>
WP Quadratum is named after both the Latin words <em>quattor</em>, meaning <strong>four</strong> and <em>quadratum</em>, meaning <strong>square</strong>.
<h2><a id="shortcode"></a>Shortcode Support And Usage</h2>
WP Quadratum supports two shortcodes and three shortcode aliases; <code>[wp_scs][wp_quadratum_map][/wp_scs]</code> to expand the shortcode in a post or page and replace it with the checkin map and <code>[wp_scs][wp_quadratum_locality][/wp_scs]</code> to allow you to embed aspects of your last checkin in a post or page.
<h3>[wp_scs][wp_quadratum_map][/wp_scs]</h3>
Adding this shortcode to the content of a post or page as content, expands the shortcode and replaces it with a checkin map.

The shortcode also supports multiple <em>attributes</em> which allow you to customise the way in which the shortcode is expanded into the checkin map:
<ul>
 	<li>the <code>width</code> attribute</li>
 	<li>the <code>width_units</code> attribute</li>
 	<li>the <code>height</code> attribute</li>
 	<li>the <code>height_units</code> attribute</li>
 	<li>the <code>zoom</code> attribute</li>
</ul>
<h4>The "width" Attribute</h4>
The <code>width</code> attribute, in conjunction with the <code>height</code> attribute specifies the width of the map to be inserted into a post or page. If omitted, the map width defaults to a value of <code>300</code>.
<h4>The "width_units" Attribute</h4>
The <code>width_units</code> attribute, specifies how the value specified in the <code>width</code> attribute should be interpreted. Valid values for this attribute as <code>px</code> and <code>%</code>, denoting that the <code>width</code> attribute should be interpreted in pixels or as a percentage respectively. If omitted, this attribute defaults to a value of <code>px</code>.
<h4>The "height" Attribute</h4>
The <code>height</code> attribute, in conjunction with the <code>width</code> attribute specifies the height of the map to be inserted into a post or page. If omitted, the map height defaults to a value of <code>300</code>.
<h4>The "height_units" Attribute</h4>
The <code>height_units</code> attribute, specifies how the value specified in the <code>height</code> attribute should be interpreted. Valid values for this attribute as <code>px</code> and <code>%</code>, denoting that the <code>height</code> attribute should be interpreted in pixels or as a percentage respectively. If omitted, this attribute defaults to a value of <code>px</code>.
<h4>The "zoom" Attribute</h4>
The <code>zoom</code> attribute specifies the zoom level to be used when displaying the checkin map. If omitted, the zoom level defaults to a value of <code>16</code> which is roughly analogous to a neighbourhood zoom.
<h3>[wp_scs][wp_quadratum][/wp_scs]</h3>
The <code>[wp_scs][wp_quadratum][/wp_scs]</code> shortcode is an alias for the <code>[wp_scs][wp_quadratum_map][/wp_scs]</code> shortcode and has the same functionality.
<h3>[wp_scs][wpq_map][/wp_scs]</h3>
The <code>[wp_scs][wpq_map][/wp_scs]</code> shortcode is an alias for the <code>[wp_scs][wp_quadratum_map][/wp_scs]</code> shortcode and has the same functionality.
<h3>[wp_scs][wp_quadratum_locality][/wp_scs]</h3>
Adding this shortcode to the content of a post or page, expands the shortcode and replaces it with information about your last Foursquare checkin. The information to be displayed is selected by the shortcode's <code>type</code> attribute, which allows you to select the venue name, address, region, postal code, coordinates, timezone or timezone offset.

By default, the <code>[wp_scs][wp_quadratum_locality][/wp_scs]</code> shortcode and the <code>[wp_scs][wpq_locality][/wp_scs]</code> alias are disabled. This is because not all Foursquare venues contain the full scope of locality elements that the shortcode supports (the minimum requirements for a Foursquare venue are name, category and coordinates). To backfill any missing venue elements, WP Quadratum uses a <em>reverse geocoding</em> service from <a href="https://www.factual.com/">Factual</a> to supply the missing information.

To enable the <code>[wp_scs][wp_quadratum_locality][/wp_scs]</code> shortcode, from the Dashboard navigate to <em>Settings / WP Quadratum</em> and click on the <em>Shortcodes</em> tab. Select the <em>Enable Locality Shortcode Usage</em> checkbox and the <em>Factual OAuth Settings</em> meta-box will appear. You'll then need to sign up for a <a href="https://www.factual.com/api-keys/request">Factual API key</a> after which you'll be given an <em>OAuth Key</em> and <em>OAuth Secret</em>. Copy and paste these into the <em>Factual OAuth</em> text fields and click on <em>Save Shortcode Settings</em>. You'll now be able to use the <code>[wp_scs][wp_quadratum_locality][/wp_scs]</code> shortcode or its alias.
<h4>The "type" Attribute</h4>
The <code>type</code> attribute specifies the element of your last Foursquare checkin that is to be displayed in a post or page and can take one of the following values:
<ul>
 	<li><code>venue</code> - the name of the last Foursquare venue you checked into.</li>
 	<li><code>address</code> - the street address of the venue; not including the region, locality or postal code.</li>
 	<li><code>region</code> - the region of the venue; the geographic context of the region will vary from country to country but is roughly analogous to the venue's city.</li>
 	<li><code>postcode</code> - the postal code of the venue, if the country or region supports postal codes.</li>
 	<li><code>coordinates</code> - the geographic coordinates of the venue, in the form latitude,longitude.</li>
 	<li><code>timezone</code> - the timezone name of the time of the checkin, such as <code>Europe/London</code>.</li>
 	<li><code>tzoffset</code> - the offset from GMT of the time of the checkin, in the form GMT[-+]hours, such as GMT-1 or GMT+2.</li>
 	<li><code>locality</code> - the locality of the venue; the geographic context of the locality will vary according to country, but is roughly analogous to the town or neighbourhood.</li>
</ul>
If the <code>type</code> attribute is not supplied, or if the value of this attribute is not one of the above values, <code>type="locality"</code> will be assumed. The shortcode's replacement value can be modified via the plugin's <code>wp_quadratum_locality</code> filter; see the <a href="#filters">Filter Support and Usage</a>section for more information.
<h3>[wp_scs][wpq_locality][/wp_scs]</h3>
The <code>[wp_scs][wpq_locality][/wp_scs]</code> shortcode is an alias for the <code>[wp_scs][wp_quadratum_locality][/wp_scs]</code> shortcode and has the same functionality.
<h2><a id="filters"></a>Filter Support And Usage</h2>
WP Quadratum supports three filters, which are described in more detail below. The plugin's filters allow you to:
<ul>
 	<li>change the descriptive text that appears immediately below the map when displayed via the plugin's widget or shortcode.</li>
 	<li>gain access to the checkin metadata that is returned from the Foursquare API</li>
 	<li>change the output of the [wp_scs][wp_quadratum_locality][/wp_scs]` shortcode</li>
</ul>
<h3>wp_quadratum_checkin</h3>
Allow a filter hook function to gain access to the checkin metadata that is returned from the Foursquare API and which is used to build the checkin map and strapline. It's important to note that the implementation of this filter isn't strictly a WordPress filter per se. The user defined hook function is passed only the checkin metadata. Any changes made to the metadata will not be reflected in the output of the plugin's or shortcode's map, nor will any return value from the hook function be honoured by the plugin. The filter will be called before the <code>wp_quadratum_strapline</code> filter, if used, allowing you to store the checkin contents and use them within the <code>wp_quadratum_strapline</code> filter hook.

The contents of the checkin data this filter can access are a <code>Checkin Response</code> object, which is documented on the <a href="https://developer.foursquare.com/docs/responses/checkin">Foursquare Developer Site</a>.
<h4>Example: Store the contents of the Foursquare checkin that the plugin will be to display the checkin map</h4>
[php]
$last_checkin = null;
add_filter('wp_quadratum_checkin', store_last_checkin, 10, 1);
function store_last_checkin($checkin) {
$last_checkin = $checkin;
}
[/php]
<h3>wp_quadratum_strapline</h3>
Applied to the strapline that is displayed via the plugin's widget or shortcode. The strapline is the text that appears immediately below the checkin map.
<h4>Example: Change the date and time formatting in the strapline</h4>
[php]
add_filter('wp_quadratum_strapline', 'format_strapline', 10, 2);
function format_strapline($content, $params) {
// $params = array (
//      'venue-url' =&gt; '4Sq venue url for checkin',
//      'venue-name' =&gt; 'checkin venue name',
//      'checked-in-at' =&gt; 'timestamp of checkin'
//  );

$strapline = '&lt;h5&gt;Last seen at &lt;a href="' . $params['venue-url'] . '" target="_blank"&gt;' . $params['venue-name'] . '&lt;/a&gt; on ' . date('l jS of F Y h:i:s A', $params['checked-in-at']) . '&lt;/h5&gt;';
return $strapline;
}
[/php]
<h3>wp_quadratum_locality</h3>
Applied to the replacement content of the <code>[wp_scs][wp_quadratum_locality][/wp_scs]</code> shortcode immediately before the shortcode is replaced. The filter's hook function is passed two arguments; the shortcode's value and corresponding <code>type</code> attribute.
<h4>Example: Wrap each invocation of the <code>[wp_scs][wp_quadratum_locality][/wp_scs]</code> shortcode in a <code>div</code> whose class includes the attribute type</h4>
[php]
add_filter('wp_quadratum_locality', 'format_locality', 10, 2);
function format_locality($value, $type) {
$class = 'wp-quadratum-locality-' . $type;
return '&lt;div class="' . $class . '&gt;' . $value . '&lt;/div&gt;';
}
[/php]
<h2><a id="changelog"></a>What's Changed?</h2>
The current version is 1.3.1 (2013.11.22)
<h3>v1.3.1</h3>
<ul>
 	<li>Released: 2013.11.22</li>
 	<li>Added: Caching of last good response from the Foursquare API, allowing the plugin to operate if the API is temporarily down.</li>
 	<li>Added: New locality shortcodes, <code>[wp_scs][wp_quadratum_locality][/wp_scs]</code> (and <code>[wp_scs][wpq_locality][/wp_scs]</code> as an alias) to allow the last checkin's venue name, address, region, postal code, coordinates, timezone and/or timezone offset to be embedded in posts or pages.</li>
 	<li>Added: New checkin map shortcodes, <code>[wp_scs][wp_quadratum_map][/wp_scs]</code> and <code>[wp_scs][wpq_map][/wp_scs]</code> as aliases for the plugin's <code>[wp_scs][wp_quadratum][/wp_scs]</code> shortcode.</li>
 	<li>Added: Ability for the plugin's shortcodes to be made configurable, on and off.</li>
 	<li>Added: Ability to backfill the response of the Foursquare API, via Factual's reverse geocoder, to cope with cases when a Foursquare venue doesn't have a complete set of metadata attributes to be used in conjunction with the locality shortcodes.</li>
 	<li>Added: New filter, <code>wp_quadratum_locality</code>, to filter and amend the output of the <code>[wp_quadratum_locality]</code> shortcode.</li>
 	<li>Fixed: Detect and trap an invalid or empty response from the Foursquare API, preventing numerous PHP warnings from polluting a post or page.</li>
 	<li>Other: Fully compatible with WordPress v3.7 "Basie".</li>
</ul>
<h3>v1.3.0</h3>
<ul>
 	<li>Released: 2013.08.23</li>
 	<li>Added: Support for HERE, Leaflet, MapQuest Open and Bing maps.</li>
 	<li>Added: All maps API JS now loads in the page footer to speed up overall page loading times.</li>
 	<li>Added: Support for a new filter, <code>wp_quadratum_checkin</code> giving full access to all the Foursquare checkin metadata that the Foursquare API returns.</li>
 	<li>Added: Support for specifying the height and width of the map as a percentage as well as in px.</li>
 	<li>Fixed: Update the admin 'Foursquare' tab to use the new app registration URL. Adjust the help text to reflect the new app registration layout on <code>foursquare.com/developers/register</code>.</li>
 	<li>Fixed: Updated Mapstraction support to pull JS code from <code>mapstraction.com</code> rather than <code>github.com/mapstraction/mxn</code> to work around new GitHub content serving policies.</li>
 	<li>Removed: Support for filtering out private checkins; the Foursquare API no longer supports this.</li>
 	<li>Removed: Support for the CloudMade maps API; this has now been superseded by Leaflet maps.</li>
 	<li>Removed: Support for the Nokia maps API; this has now been superseded by HERE maps.</li>
 	<li>Removed: Support for authenticating Nokia maps via WP Nokia Auth; Nokia maps are now superseded by HERE maps.</li>
 	<li>Removed: Support for the <code>Widget ID</code> field from the plugin's widget; the plugin now uses the WordPress assigned widget instance.</li>
 	<li>Other: Transitioned to <code>WP_Mapstraction</code> from <code>WP_MXNHelper</code>.</li>
</ul>
<h3>v1.2.0</h3>
<ul>
 	<li>Released: 2012.11.06</li>
 	<li>Added: Support for the <code>wp_quadratum_strapline</code> filter.</li>
 	<li>Added: Enqueue non-minified versions of the plugin's CSS and JS files if <code>WP_DEBUG</code> or <code>WPQUADRATUM_DEBUG</code> are defined.</li>
 	<li>Other: Updated to latest versions of <code>WP_PluginBase</code> and <code>WP_MXNHelper</code>.</li>
 	<li>Other: Moved all submodule classes/libraries from the plugin's root directory to <code>/includes</code>.</li>
</ul>
<h3>v1.1.0</h3>
<ul>
 	<li>Released: 2012.07.01</li>
 	<li>Added: Support for Nokia, CloudMade, Google and OpenLayers maps via Mapstraction</li>
 	<li>Added: Split plugin settings and options into Foursquare, Maps, Defaults and Colophon tabs</li>
 	<li>Added: <code>[wp_scs][wp_quadratum][/wp_scs]</code> shortcode to allow a checkin map to be embedded in posts and pages.</li>
 	<li>Fixed: Support for Internet Explorer compatibility for Nokia Maps.</li>
</ul>
<h3>v1.0.2</h3>
<ul>
 	<li>Summary: Minor fixes to widget HTML structure</li>
 	<li>Fixed: Non W3C/HTML4 compliant widget code which caused the map not to be displayed when viewed with Internet Explorer</li>
</ul>
<h3>v1.0.1</h3>
<ul>
 	<li>Summary: Minor fixes to PHP base class.</li>
 	<li>Fixed: An issue with an old version of <code>WP_PluginBase</code>, the PHP class which WP Quadratum extends.</li>
</ul>
<h3>v1.0</h3>
<ul>
 	<li>First version of WP Quadratum released</li>
</ul></body></html>
