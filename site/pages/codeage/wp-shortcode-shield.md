<!--
.. title: WP Shortcode Shield
.. slug: wp-shortcode-shield
.. date: 2012-04-24 15:48:08
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

<html><body><a href="/wp-content/uploads/2012/04/wp-shortcode-shield-banner.jpg"><img src="/wp-content/uploads/2012/04/wp-shortcode-shield-banner.jpg" alt="" title="WP Shortcode Shield" class="aligncenter size-full wp-image-3267" width="805" height="282"></a>
<h2>What Is WP Shortcode Shield?</h2>
WP Shortcode Shield is a <a href="https://wordpress.org" target="_blank" rel="noopener">WordPress</a> plugin to allow posts and pages to easily document WordPress shortcodes without the shortcode being expanded.
<h2>What Does It Do?</h2>
This plugin allows you to refer to a WordPress shortcode within the content of posts and pages without that shortcode being automagically expanded by WordPress. The plugin takes advantage of the fact that the <a href="https://codex.wordpress.org/Shortcode_API">WordPress ShortCode API</a> does not support nested shortcodes to allow this plugin's shortcode to wrap the shortcode being documented.
<blockquote>The shortcode parser uses a single pass on the post content. This means that if the <code>$content</code> parameter of a shortcode handler contains another shortcode, it won't be parsed</blockquote>
The plugin supports both the self closing <code>[wp_scs][shortcode][/wp_scs]</code> and enclosing <code>[wp_scs][shortcode]content[/shortcode][/wp_scs]</code> forms and supports a short form name of the shortcode, <code>[wp_scs][wp_scs][/wp_scs]</code> as well as the more verbose <code>[wp_scs][wp_shortcode_shield][/wp_scs]</code> form. For the sake of brevity, the remainder of this documentation will use the <code>[wp_scs][wp_scs][/wp_scs]</code> short form name.

If using the self-closing form of the shortcode, you need to supply the name of the shortcode you are documenting using the <code>code</code> attribute but without using the enclosing <code>[</code> and <code>]</code> characters. This is because when parsing shortcodes, WordPress looks for the first occurrence of the ']' character to terminate the shortcode. As a result of this, usage such as

<code>[wp_scs][wp_scs code="[another-shortcode-name]"][/wp_scs]</code>

... WordPress will use the ']' character inside the <code>code</code> attribute to try and terminate the shortcode name, which is not what is desired. Instead, the plugin automagically adds the terminating '[' and ']' characters to the plugin's output, so that usage such as

<code>[wp_scs][wp_scs code="another-shortcode-name"][/wp_scs]</code>

... will display <em>[wp_scs][another-shortcode-name][/wp_scs]</em> in your post's of page's content.

If you are using the enclosing form of the shortcode, you can either supply the shortcode to be documented with or without enclosing '[' and ']' characters; if they are omitted, the plugin will add them for you, so that usage such as

<code>[wp_scs][wp_scs][another-shortcode-name][/wp_scs][/wp_scs]</code>

... and

<code>[wp_scs][wp_scs]another-shortcode-name[/wp_scs][/wp_scs]</code>

... will display the same results, namely <em>[wp_scs][another-shortcode-name][/wp_scs]</em>.

Finally a note of caution, you cannot mix the enclosing and self closing form of the plugin's shortcode within the same post or page; this is not a limitation of the plugin, but the way in which WordPress implements the <a href="https://codex.wordpress.org/Shortcode_API">ShortCode API</a> ...
<blockquote>The parser does not handle mixing of enclosing and non-enclosing forms of the same shortcode as you would want it to. For example, if you have:

<code>[wp_scs][myshortcode example='non-enclosing' /][/wp_scs] non-enclosed content [wp_scs][myshortcode] enclosed content[/wp_scs][wp_scs][/myshortcode][/wp_scs]</code>

Instead of being treated as two shortcodes separated by the text "non-enclosed content", the parser treats this as a single shortcode enclosing "non-enclosed content [wp_scs][myshortcode][/wp_scs]enclosed content".</blockquote>
<h2>How Do I Download WP Shortcode Shield?</h2>
To download or install WP Shortcode Shield on your WordPress powered site, either search for <em>WP Shortcode Shield</em> from the WordPress Dashboard or go to plugin's page on the official <a href="https://wordpress.org/extend/plugins/wp-shortcode-shield/" target="_blank" rel="noopener">WordPress plugin repository</a>.

If you want to fork the source code of the plugin, you can find it on the plugin's GitHub page at <a href="https://github.com/vicchi/wp-shortcode-shield" target="_blank" rel="noopener">https://github.com/vicchi/wp-shortcode-shield</a>.
<h2>What's New?</h2>
WP Shortcode Shield v1.1 was released 11/11/12.
<h2>Full Documentation</h2>
<ul>
 	<li><a href="#installation">Installation</a></li>
 	<li><a href="#screenshots">Screenshots</a></li>
 	<li><a href="#faq">Frequently Asked Questions</a></li>
 	<li><a href="#filters">Filter Support And Usage</a></li>
 	<li><a href="#changelog">What's Changed?</a></li>
</ul>
<h2><a name="installation"></a>Installation</h2>
<ol>
 	<li>You can install WP Shortcode Shield automatically from the WordPress admin panel. From the Dashboard, navigate to the <em>Plugins / Add New</em> page and search for <em>"WP Shortcode Shield"</em> and click on the <em>"Install Now"</em> link.</li>
 	<li>Or you can install WP Shortcode Shield manually. Download the plugin Zip archive and uncompress it. Copy or upload the <code>wp-shortcode-shield</code> folder to the <code>wp-content/plugins</code> folder on your web server.</li>
 	<li>Activate the plugin. From the Dashboard, navigate to Plugins and click on the <em>"Activate"</em> link under the entry for WP Shortcode Shield.</li>
 	<li>That's it. There's no admin settings to configure. Go and start documenting.</li>
</ol>
<h2><a name="screenshots" a="">Screenshots</a></h2>
<a name="screenshots" a="">
</a>
<ul><a name="screenshots" a="">
</a>
 	<li><a name="screenshots" a=""></a><a href="#source-shot">Raw Source Code Sample</a></li>
 	<li><a href="#result-shot">Resultant Content Display</a></li>
</ul>
<h3><a name="source-shot"></a>Raw Source Code Sample</h3>
<a href="/wp-content/uploads/2012/04/screenshot-12.jpg"><img src="/wp-content/uploads/2012/04/screenshot-12.jpg" alt="" title="screenshot-1" class="aligncenter size-full wp-image-2508" width="677" height="361"></a>
<h3><a name="result-shot"></a>Resultant Content Display</h3>
<a href="/wp-content/uploads/2012/04/screenshot-22.jpg"><img src="/wp-content/uploads/2012/04/screenshot-22.jpg" alt="" title="screenshot-2" class="aligncenter size-full wp-image-2509" width="689" height="491"></a>
<h2><a name="faq"></a>Frequently Asked Questions</h2>
<h3>How do I get help or support for this plugin?</h3>
In short, very easily. But before you read any further, take a look at <a href="/2012/03/31/asking-for-wordpress-plugin-help-and-support-without-tears/">Asking For WordPress Plugin Help And Support Without Tears</a> before firing off a question. In order of preference, you can ask a question on the <a href="https://wordpress.org/support/plugin/wp-shortcode-shield">WordPress support forum</a>; this is by far the best way so that other users can follow the conversation. You can ask me a question on Twitter; I'm <a href="https://twitter.com/vicchi">@vicchi</a>. Or you can drop me an email instead. I can't promise to answer your question but I do promise to answer and do my best to help.
<h3>Is there a web site for this plugin?</h3>
Absolutely. Go to the <a href="/pages/codeage/wp-shortcode-shield/">WP Shortcode Shield home page</a> for the latest information. There's also the official <a href="https://wordpress.org/extend/plugins/wp-shortcode-shield/">WordPress plugin repository page</a> and the <a href="https://vicchi.github.com/wp-shortcode-shield/">source for the plugin is on GitHub</a> as well.
<h3>I want to amend/hack/augment this plugin; can I do this?</h3>
Totally; this plugin is licensed under the GNU General Public License v2 (GPLV2). See <a href="https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt">https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt</a> for the full license terms.
<h2><a name="changelog"></a>What's Changed?</h2>
<h3>v1.1.0 - 2012.11.11</h3>
<ul>
 	<li>Other: Upgraded plugin to new version of <code>WP_PluginBase</code> to prevent class name clashes during future upgrades.</li>
</ul>
<h3>v1.0.1 - 2012.08.29</h3>
<ul>
 	<li>Fixed: Ensure <code>WP_PluginBase</code> is properly included and defined.</li>
</ul>
<h3>v1.0 - 2012.07.17</h3>
<ul>
 	<li>This is the first version of WP Shortcode Shield.</li>
</ul></body></html>
