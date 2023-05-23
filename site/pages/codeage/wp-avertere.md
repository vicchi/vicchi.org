<!--
.. title: WP Avertere
.. slug: wp-avertere
.. date: 2012-07-20 11:06:32
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

<html><body><a href="/wp-content/uploads/2012/07/wp-avertere-banner.jpg"><img src="/wp-content/uploads/2012/07/wp-avertere-banner.jpg" alt="" title="WP Avertere" class="aligncenter size-full wp-image-3214" width="805" height="282"></a>
<h2>What Is WP Avertere?</h2>
WP Avertere is a <a href="https://wordpress.org">WordPress</a> plugin to set up and manage an HTTP 301/302 Redirect from the URL of any post type to another URL, either on your site or externally.
<h2>What Does It Do?</h2>
This plugin allows you to easily set up redirections from the URL of any post, page or other post type on your WordPress site to another URL, either on your site or external to your site. Redirections can either be permanent (HTTP 301) or temporary (HTTP 302) and can easily be changed or deleted entirely.

You can configure WP Avertere to ...
<ol>
 	<li>Set the URL you want to redirect to.</li>
 	<li>Specify the type of redirection, permanent or temporary</li>
 	<li>Perform validation of the redirect URL to ensure it is well formed.</li>
</ol>
In addition to setting up a redirect, the plugin replaces the original post's or page's permalink with the redirected permalink or external URL; when you hover your mouse pointer over a redirected permalink you will see the new permalink or external URL not the original.

Once installed and activated, the plugin adds a <em>Redirect This Post/Page/etc</em> meta box to the admin <em>Edit Post/Page</em>. Simply create a new post, or edit an existing one, add the URL you want to redirect to (copying and pasting is a good idea here to ensure there's no typing errors), choose whether the redirection is permanent or temporary, click on the <em>Check URL</em> button to ensure your URL is well formed and save the post. You're done.

While the main use of the plugin is to redirect posts and pages, you can also use it to:
<ol>
 	<li>Convert a post to a page; useful for when the post needs to be kept updated regularly and is more suited to be a page on your site.</li>
 	<li>Add a menu bar link to an external site; you can create a new blank page as a menu bar link and then redirect that page to the external URL with no need to edit any code in your theme's <code>functions.php</code>.</li>
 	<li>Create a shortcut category or tag archive link; you can create a new blank page, such as <code>/plugins</code> and then redirect that page to <code>/tags/plugins</code>.</li>
</ol>
<h2>How Do I Download WP Avertere?</h2>
To download or install WP Avertere on your WordPress powered site, either search for <em>WP Avertere</em> from the WordPress Dashboard or go to plugin’s page on the official <a href="https://wordpress.org/extend/plugins/wp-avertere/">WordPress plugin repository</a>.

If you want to fork the source code of the plugin, you can find it on the plugin’s GitHub page at <a href="https://github.com/vicchi/wp-avertere">https://github.com/vicchi/wp-avertere</a>.
<h2>What's New?</h2>
WP Avertere v1.1.0 was released 06/11/12.
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
 	<li>You can install WP Avertere automatically from the WordPress admin panel. From the Dashboard, navigate to the <em>Plugins / Add New</em> page and search for <em>"WP Avertere"</em> and click on the <em>"Install Now"</em> link.</li>
 	<li>Or you can install WP Avertere manually. Download the plugin Zip archive and uncompress it. Copy or upload the <code>wp-avertere</code> folder to the <code>wp-content/plugins</code> folder on your web server.</li>
 	<li>Activate the plugin. From the Dashboard, navigate to Plugins and click on the <em>"Activate"</em> link under the entry for WP Avertere.</li>
</ol>
<h2><a name="screenshots"></a>Screenshots</h2>
<ol>
 	<li>Edit Post <em>Redirect This Post</em> meta box; well formed and valid URL.</li>
 	<li>Edit Post <em>Redirect This Post</em> meta box; unsupported format URL.</li>
</ol>
<h3><a name="good-url"></a><a>Edit Post Redirect This Post meta box; well formed and valid URL</a></h3>
<a>
</a><a></a><a href="/wp-content/uploads/2012/07/v1.0.0-screenshot-1.jpg"><img src="/wp-content/uploads/2012/07/v1.0.0-screenshot-1.jpg" alt="" title="v1.0.0-screenshot-1" class="aligncenter size-full wp-image-2880" width="737" height="391"></a>
<h3><a name="bad-url"></a><a>Edit Post Redirect This Post meta box; unsupported format URL.</a></h3>
<a>
</a><a></a><a href="/wp-content/uploads/2012/07/v1.0.0-screenshot-2.jpg"><img src="/wp-content/uploads/2012/07/v1.0.0-screenshot-2.jpg" alt="" title="v1.0.0-screenshot-2" class="aligncenter size-full wp-image-2881" width="737" height="391"></a>
<h2><a name="faq"></a>Frequently Asked Questions</h2>
<h3>How do I get help or support for this plugin?</h3>
In short, very easily. But before you read any further, take a look at <a href="/2012/03/31/asking-for-wordpress-plugin-help-and-support-without-tears/">Asking For WordPress Plugin Help And Support Without Tears</a> before firing off a question. In order of preference, you can ask a question on the <a href="https://wordpress.org/support/plugin/wp-avertere">WordPress support forum</a>; this is by far the best way so that other users can follow the conversation. You can ask me a question on Twitter; I'm <a href="https://twitter.com/vicchi">@vicchi</a>. Or you can drop me an email instead. I can't promise to answer your question but I do promise to answer and do my best to help.
<h3>I've just installed this plugin; where's the admin Settings &amp; Options page for the plugin?</h3>
There isn't one! All the settings and options for the plugin are in the <em>Redirect This Post</em> meta box that you'll find on the <em>Edit Post</em> page.
<h3>My redirect URL validates as well formed but the URL now shows a 404/Page Not Found when I click on it. What's going on?</h3>
It's probably just what your browser is telling you. WP Avertere can set up the redirection for you and can check that your redirection URL is well formed. But what it can't do is actually check that the redirection URL points to a web page that actually exists. Now might be a good time to copy and paste your redirection URL into your browser and see if that shows a 404/Page Not Found error. If it does, then the page wasn't found. But if it was found, then you might have found a bug, so get in touch and let me know about it.
<h3>My redirect URL looks well formed to me, but the plugin tells me it's not. What's going on here?</h3>
WordPress defines a set of acceptable URL protocols which are returned by the <code>wp_allowed_protocols</code> API call. WP Avertere uses the <code>esc_url</code> API call, which acts on this set of allowed protocols to determine which URLs are allowed and which are not. At the time of writing, the set is defined as <code>http(s)</code>, <code>ftp(s)</code>, <code>mailto</code>, <code>news</code>, <code>irc</code>, <code>gopher</code>, <code>nntp</code>, <code>feed</code> and <code>telnet</code>. If your redirect URL is not for one of these allowed protocols the redirection will not be set up correctly. You can add to, or even limit, the list of allowed protocols via the <code>wp_avertere_protocols</code> filter that the plugin provides. See the <em><a href="#filters">Filter Support And Usage</a></em> section for more information on this.
<h3>My redirect isn't happening. Why not?</h3>
Check that the redirection URL is well formed by clicking on the <em>Check URL</em> button on the <em>Redirect This Post</em> meta box. If the URL isn't well formed and you save the post anyway then the redirection will be ignored. Check that the URL actually exists in another browser window and behaves as you'd expect. If the redirect still doesn't work, now would be a good time to get in touch.
<h3>What's the difference between a permanent and a temporary redirection?</h3>
A permanent redirection means that the current and all future requests for the original URL should be directed to the new, redirected, URL. A temporary redirection means that the current request for the original URL should be directed to the new, redirected URL but subsequent requests can continue to use the original URL.

It's important to note that both permanent and temporary redirects can, and do, cease and the act of cancelling (or in other words, removing) a redirection, be it permanent or temporary, means that the behaviour for a URL reverts to how it was before any redirection was put in place. See the next FAQ for how to cancel a redirection.
<h3>I don't want a redirection any more; how do I cancel it?</h3>
In short, very easily. Edit the post that the redirection is set up on and then either delete the redirection URL or, even easier, click on the <em>Clear Redirection URL</em> button. Then just save the post and your redirection is gone.
<h3>Why don't I just use the REFRESH HTML meta tag in my post instead?</h3>
There's nothing wrong with using the <code>REFRESH</code> HTML meta tag to redirect to another URL but it's not as easy or efficient as using the plugin. Here's why. The <code>REFRESH</code> meta tag lives in a page's header section. You not only need to inject this into the page (you could use the <code>wp_head</code> action hook) but you need to wait for the entire page to load before your browser will take note of and act on the <code>REFRESH</code> meta tag. WP Avertere hooks into the WordPress <code>template_redirect</code> hook and issues an HTTP <code>Location</code> header on your behalf; this means that the decision to redirect and the act of actually redirecting takes place before the page even loads, which is faster and more efficient.
<h3>Wait a moment. HTTP 302 is Found not Temporary Redirect. Why aren't you using HTTP 307 Temporary Redirect instead?</h3>
This is a classic case of <em>industry practice contradicting the standard</em> (according to <a href="https://en.wikipedia.org/wiki/HTTP_302">Wikipedia</a>). The HTTP/1.0 standard defined HTTP 301 as <em>Moved Permanently</em> and HTTP 302 as <em>Temporary Redirect</em>. With the introduction of HTTP/1.1, HTTP 302 changed to <em>Found</em> and added HTTP 307 <em>Temporary Redirect</em>. But the majority of web services still use HTTP/1.1 302 as the original intent of the HTTP/1.0 meaning.
<h3>My original post had comments; I can't see them now that I've set up a redirect. Where are they?</h3>
The current version of the plugin doesn't touch comments but after a redirect is set up they won't be visible due to the inherent nature of a redirect. The next version of the plugin will support the ability to copy comments from the source URL to the redirected target URL as long as that URL is on the same WordPress powered site.
<h3>WP Avertere isn't available in my language; can I submit a translation?</h3>
WordPress and this plugin use the gettext tools to support internationalisation. The source file containing each string that needs to be translated ships with the plugin in <code>wp-avertere/lang/src/wp-biographia.po</code>. See the <a href="https://codex.wordpress.org/I18n_for_WordPress_Developers">I18n for WordPress Developers</a> page for more information or get in touch for help and hand-holding.
<h3>I want to amend/hack/augment this plugin; can I do this?</h3>
Totally; this plugin is licensed under the GNU General Public License v2 (GPLV2). See https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt for the full license terms.
<h3>Where does the name WP Avertere come from?</h3>
WP Avertere is named after the latin for "divert", meaning to turn aside from a path or course.
<h2><a name="filters"></a>Filter Support And Usage</h2>
WP Avertere supports a single filter, <code>wp_avertere_protocols</code> that allows you to change the set of acceptable URL protocols that WordPress and the plugin permits.

<em>Example:</em> Add support for GitHub repositories to the plugin

[php]
add_filter ('wp_avertere_protocols', 'add_github_protocol');

function add_github_protocol ($protocols) {
// protocols = array ('name', 'name', ...)
$protocols[] = 'git';

return $protocols;
}
[/php]
<h2><a name="changelog"></a>What's Changed?</h2>
<h3>v1.1.0 - 2012.11.06</h3>
<ul>
 	<li>Added: Ensure that the <code>template_redirect</code> hook code is only fired within the context of a post being displayed.</li>
 	<li>Added: Enqueue non-minified versions of the plugin's CSS and JS files if <code>WP_DEBUG</code> or <code>WQUADRATUM_DEBUG</code> are defined.</li>
 	<li>Other: Updated to latest version of <code>WP_PluginBase</code>.</li>
 	<li>Other: Moved all submodule classes/libraries from the plugin's root directory to <code>/includes</code>.</li>
</ul>
<h3>v1.0.1 - 2012.08.29</h3>
<ul>
 	<li>Fixed: bug where the redirect URL was correctly saved but not shown in the plugin's meta box when a post/page is saved or updated.</li>
</ul>
<h3>v1.0.0 - 2012.07.17</h3>
<ul>
 	<li>Released 2012.07.17</li>
 	<li>First version of WP Avertere released.</li>
</ul></body></html>
