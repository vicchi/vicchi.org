<!--
.. title: WP Biographia 3) Frequently Asked Questions
.. slug: 3-frequently-asked-questions
.. date: 2012-05-01 11:09:13
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text
.. categories: 
.. has_math: no
.. status: published
.. wp-status: publish
-->

<html><body><ol>
<li><a href="#faq1">How do I get help or support for this plugin?</a></li>
<li><a href="#faq2">Is there a web site for this plugin?</a></li>
<li><a href="#faq3">I've configured WP Biographia to display the author's image but it's not working; what's happening here?</a></li>
<li><a href="#faq4">I want to upload my author's images, host them on my web server and not use Gravatars; how do I do this?</a></li>
<li><a href="#faq5">I've configured WP Biographia to show my website/Twitter/Facebook/etc links but I don't see them in the Biography Box; where do I define these links?</a></li>
<li><a href="#faq6">I've installed and configured WP Biographia and now I see not one but two differing Biography Boxes; what's going on?</a></li>
<li><a href="#faq7">I only want to show the Biography Box for certain users and not for others; can I do this?</a></li>
<li><a href="#faq8">I want to show the Biography Box for all users but only for certain categories; can I do this?</a></li>
<li><a href="#faq9">How do I add HTML to the Biographical Info section of  a user's profile?</a></li>
<li><a href="#faq10">How do I remove the Biography Box on pages using page templates?</a></li>
<li><a href="#faq11">I want to use my own icon set for my author's contact links; how do I do this?</a></li>
<li><a href="#faq12">I want to change the CSS used to format the Biography Box; how do I do this?</a></li>
<li><a href="#faq13">I've changed the Biography Box CSS but my changes aren't showing up; what's happening?</a></li>
<li><a href="#faq14">WP Biographia doesn't support social network FOO; can you add this to the next version?</a></li>
<li><a href="#faq15">WP Biographia doesn't support social network or contact method BAR; how can I add this?</a></li>
<li><a href="#faq16">The "More Posts" link in the Biography Box links to my site's landing page and not an author's archive page; what's happening?</a></li>
<li><a href="#faq17">The Biography Box is showing up in places it shouldn't; such as the footer or within widgets in the sidebar; why is this happening and how can I stop this?</a></li>
<li><a href="#faq18">My site features guest posts; can I override my contributor account's biography for each of my guest authors?</a></li>
<li><a href="#faq19">WP Biographia isn't available in my language; can I submit a translation?</a></li>
<li><a href="#faq20">This plugin looks very much like the WP About Author; what's the connection?</a></li>
<li><a href="#faq21">I want to amend/hack/augment this plugin; can I do the same?</a></li>
<li><a href="#faq22">Where does the name WP Biographia come from?</a></li>
</ol>

<h3><a name="faq1"></a>How do I get help or support for this plugin?</h3>

<p>In short, very easily. But before you read any further, take a look at <a href="/pages/codeage/asking-for-wordpress-plugin-help-and-support-without-tears/">Asking For WordPress Plugin Help And Support Without Tears</a> before firing off a question. In order of preference, you can ask a question on the <a href="http://wordpress.org/support/plugin/wp-biographia">WordPress support forum</a>; this is by far the best way so that other users can follow the conversation. You can ask me a question on Twitter; I'm <a href="http://twitter.com/vicchi">@vicchi</a>. Or you can drop me an email instead. I can't promise to answer your question but I do promise to answer and do my best to help.</p>

<h3><a name="faq2"></a>Is there a web site for this plugin?</h3>

<p>Absolutely, it's the page you're reading, the <a href="/pages/codeage/wp-biographia/" target="_blank">WP Biographia home page</a> which always contains the latest information. There's also the official <a href="http://wordpress.org/extend/plugins/wp-biographia/" target="_blank">WordPress plugin repository page</a> and the <a href="http://vicchi.github.com/wp-biographia/" target="_blank">source for the plugin is on GitHub</a> as well.</p>

<h3><a name="faq3"></a>I've configured WP Biographia to display the author's image but it's not working; what's happening here?</h3>

<p>User profile pictures, or avatars, are part of the WordPress core but enabling them isn't done at the level of the user profile, instead it's part of the way in which comments are configured. If you enable the display of the post user’s image, make sure avatar support is turned on; from the Dashboard, navigate to <em>Settings / Discussion</em> and ensure that <em>Show Avatars</em> is enabled. WordPress uses the email address that is part of your user's profile to look up the right avatar image from <a href="http://gravatar.com/">gravatar.com</a>, so you need to ensure that you're using the same email address on your site as well as for your avatar.</p>

<h3><a name="faq4"></a>I want to upload my author's images, host them on my web server and not use Gravatars; how do I do this?</h3>

<p>WP Biographia uses the <code>get_avatar</code> <a href="http://codex.wordpress.org/Pluggable_Functions">pluggable function</a> to output the user's avatar image. Theoretically, any plugin that supports locally hosted avatar images and which overrides the default WordPress implementation of <code>get_avatar</code> should be able to be used. In practice, whether this approach will work for you or not depends on the combination of the theme you're using and the interactions that the other plugins that you're using has with the WordPress core and with your theme. The <a href="http://wordpress.org/extend/plugins/simple-local-avatars/">Simple Local Avatars</a> plugin plugs <code>get_avatar</code> and cooperates nicely with WP Biographia, at least in my local testing environment; your mileage may vary.</p>

<h3><a name="faq5"></a>I've configured WP Biographia to show my website/Twitter/Facebook/etc links but I don't see them in the Biography Box; where do I define these links?</h3>

<p>WP Biographia adds a number of social media and web link fields to your WordPress user profile; from the Dashboard, navigate to <em>Users / Your Profile</em> and enter the links you want displayed to the fields in the Contact Info section.</p>

<h3><a name="faq6"></a>I've installed and configured WP Biographia and now I see not one but two differing Biography Boxes; what's going on?</h3>

<p>There's probably one of two things going on here. Firstly, you've already got another plugin that makes a Biography Box installed and active and this plugin, as well as WP Biographia, are doing their job properly. Secondly, the theme you're using hard codes a Biography Box into the theme templates. Both the TwentyTen and TwentyEleven themes supplied as part of a standard WordPress install do this.</p>

<h3><a name="faq7"></a>I only want to show the Biography Box for certain users and not for others; can I do this?</h3>

<p>WP Biographia allows you to hide the Biography Box from being displayed on a per user basis. You can hide for posts only, for pages only or for both posts and pages. There's two ways of configuring this. If your user has the <code>manage_options</code> capability, you can choose the degree of hiding, if any, from your user profile or for any other user's profile; from the Dashboard, navigate to Users and check the <em>Hide From Posts</em> and/or <em>Hide From Pages</em> checkbox options. You can also configure this easily from the plugin's Settings And Options; from the Dashboard, navigate to the <em>Settings / WP Biographia</em> page, click on the <em>Exclusions</em> tab and under <em>User Hiding Settings</em>, add and/or remove the users to fit your model of who should have the Biography Box displayed.</p>

<h3><a name="faq8"></a>I want to show the Biography Box for all users but only for certain categories; can I do this?</h3>

<p>From the Dashboard, navigate to the <em>Settings / WP Biographia</em> page, click on the <em>Exclusions</em> tab and under <em>Category Exclusion Settings</em>, add and/or remove the categories to fit your model of when the Biography Box should be displayed.</p>

<h3><a name="faq9"></a>How do I add HTML to the Biographical Info section of  a user's profile?</h3>

<p>In previous releases of the plugin, I've recommended that you add this code to your theme's <code>functions.php</code> file:</p>

[php]
remove_filter('pre_user_description', 'wp_filter_kses');
[/php]

<p>But as <a href="http://wordpress.org/support/profile/munman">WebEndev</a> helpfully pointed out on the <a href="http://wordpress.org/support/topic/plugin-wp-biographia-biographical-info-formatting-issue-avatar-exclude-posts?replies=7#post-2562773">WordPress forums</a>, this allows <em>all</em> HTML to be added to the Biography Info section of a user's profile, which may be going <em>too</em> far. The following code, in your theme's <code>functions.php</code>, will allow line breaks to be honoured but filter out any HTML tags and attributes which are not allowed by the <code>$allowedposttags</code> WordPress global.</p>

[php]
remove_filter('pre_user_description', 'wp_filter_kses');
add_filter('pre_user_description', 'wp_filter_post_kses');
add_filter('pre_user_description', 'wptexturize');
add_filter('pre_user_description', 'wpautop');
add_filter('pre_user_description', 'convert_chars');
add_filter('pre_user_description', 'balanceTags', 50);
[/php]

<h3><a name="faq10"></a>How do I remove the Biography Box on pages using page templates?</h3>

<p>Add this code to your theme's <code>functions.php</code> file:</p>

[php]
add_action ('wp_head', 'remove_user_box_page_template');

function remove_user_box_page_template() {
  if (is_page_template ('page_blog.php'))
        add_filter ('wp_biographia_pattern' , 'content_only_pattern');
}

function content_only_pattern($pattern) {
    return '%1s';
}
[/php]

<h3><a name="faq11"></a>I want to use my own icon set for my author's contact links; how do I do this?</h3>

<p>Firstly select the icon set you want to use. You'll need to ensure that the icon files are in <code>.png</code> format and are named to match the icon set that WP Biographia ships with; take a look in <code>wp-biographia/images</code> to see the naming convention. Upload your icon set to your web server and note the URL (not the local path) to where your icons will live. Navigate to <em>Settings / WP Biographia</em> and click on the <em>Content</em> tab, ensure that the <em>Use Alternate Icon Set</em> option is checked and the URL to your alternate icons is specified in the <em>Alternate Icon Set URL</em> text box. By default, WP Biographia sizes the contact link icons at 32x32 pixels; you can override this in your local CSS file by redefining the <code>.wp-biographia-item-icon</code> CSS class (see <code>wp-biographia/css/wp-biographia.css</code>).</p>

<p>You can also override the icon file name and source URL on a per contact link basis via the <code>$icon_url_dir</code> parameter via the <code>wp_biographia_link_items</code> filter.</p>

<p>So to recap, the plugin uses its own default set of icons, followed by the <em>Alternate Icon Set URL</em> to allow you to point to an entire alternate set of icons, if the supplied ones aren't to your liking, followed by link specific overrides via the <code>wp_biographia_link_items</code> filter. The order of precedence looks something like ...</p>

<ol>
<li>the plugin's icon set - for all icons - typically this is <code>/wp-content/plugins/wp-biographia/images</code>.</li>
<li>the alternate icon set - for all icons (even added via the filter, if no override takes place on <code>$icon_url_dir</code>)</li>
<li>an override of the icon set URL for the single contact method you're adding via <code>wp_biographia_link_items</code> (assuming it's also added via <code>wp_biographia_contact_info</code>)</li>
</ol>

<p>See the <em><a href="/pages/codeage/wp-biographia/5-filter-support-and-usage/">Filter Support And Usage</a></em> section for more information on the plugin's filters.</p>

<h3><a name="faq12"></a>I want to change the CSS used to format the Biography Box; how do I do this?</h3>

<p>The HTML and CSS classes that the plugin emits follows a consistent structure and naming convention. See <a href="/pages/codeage/wp-biographia/hacking-wp-biographias-appearance-with-css/">Hacking WP Biographia’s Appearance With CSS</a> for more information.</p>

<h3><a name="faq13"></a>I've changed the Biography Box CSS but my changes aren't showing up; what's happening?</h3>

<p>WP Biographia uses <em>minified</em> CSS files to improve the speed at which a page loads. If you make changes to the plugin's CSS in <code>/wp-content/plugins/wp-biographia/css/wp-biographia.css</code> the plugin will still load the minified version in <code>/wp-content/plugins/wp-biographia/css/wp-biographia.min.css</code>. So if you make any site specific changes to the plugin's CSS, which isn't recommended (see <a href="/pages/codeage/wp-biographia/hacking-wp-biographias-appearance-with-css/">Hacking WP Biographia’s Appearance With CSS</a>), you'll need to ensure you (re)minify the master CSS to get the changes to be picked up by the plugin.</p>

<h3><a name="faq14"></a>WP Biographia doesn't support social network FOO; can you add this to the next version?</h3>

<p><em>Yes</em>. But also <em>no</em>. One of the wonderful things about today's web is the vast amount of ways we have to interact with each other. I can't keep up. No, really. In practical terms, this would mean that the plugin's settings and options panels would soon get out of hand, plus the overhead of adding, testing and releasing a new version of the plugin would get out of hand before the settings and options do. But ... see the next FAQ for the answer.</p>

<h3><a name="faq15"></a>WP Biographia doesn't support social network or contact method BAR; how can I add this?</h3>

<p>With the cunning use of the filters that WP Biographia supports, you can add support for as many social networks and/or contact methods as you like. You'll need to do two things for each link you want to add to the plugin.</p>

<ol>
<li>In your theme's <code>functions.php</code> add support for the new link to the user's profile by way of the <code>wp_biographia_contact_info</code> filter.</li>
<li>Still in your theme's <code>functions.php</code> add support for the new link to be displayed, with an icon if you wish, via the <code>wp_biographia_link_items</code> filter.</li>
</ol>

<p>See the <a href="/pages/codeage/wp-biographia/5-filter-support-and-usage/">Filter Support And Usage</a> section for a working example of these two filters to add support for a new contact link.</p>

<h3><a name="faq16"></a>The "More Posts" link in the Biography Box links to my site's landing page and not an author's archive page; what's happening?</h3>

<p>If you're using an SEO plugin, this might be optimising out the <em>More Posts</em> link. Specifically, <a href="http://wordpress.org/extend/plugins/wordpress-seo/">Yoast's WordPress SEO</a> plugin has this side effect as this plugin allows you to enable/disable author archive pages. Thankfully, the SEO plugin has a setting called <em>Disable Author Archives</em> that, if disabled, allows WP Biographia to successfully link to an author's archive page.</p>

<h3><a name="faq17"></a>The Biography Box is showing up in places it shouldn't; such as the footer or within widgets in the sidebar; why is this happening and how can I stop this?</h3>

<p><em>Why is this happening?</em> Some themes or plugins use the WordPress <code>the_content</code> and/or <code>the_excerpt</code> filters as part of a secondary query to select posts or pages to show as content in the theme's sidebars, footers or as part of a plugin's widget. As WP Biographia also uses these filters to add the Biography Box, this means that the Biography Box can sometimes show up unexpectedly, in places where it shouldn't be.</p>

<p><em>How can I stop this?</em> You can lock the plugin to run only in the context of the main WordPress Loop; in other words, WP Biographia will run when selecting posts or pages to be displayed on your site's landing page, archive pages or any other template, but not when run in the context of a secondary query loop in a sidebar or footer. From the Dashboard, navigate to <em>Settings</em> / <em>WP Biographia</em> / <em>Admin</em> / <em>Content And Excerpt Settings</em> and ensure that the <em>Lock Display Of The Biography Box To The Main Loop</em> setting is checked.</p>

<h3><a name="faq18"></a>My site features guest posts; can I override my contributor account's biography for each of my guest authors?</h3>

<p>Yes. Firstly you'll need to enable <em>post specific overrides</em> in the plugin. From the Dashboard, navigate to <em>Settings</em> / <em>WP Biographia</em> / <em>Admin</em> / <em>Biography Box Override Settings</em> and ensure that the <em>Enable Post Specific Overrides</em> setting is checked.</p>

<p>Now edit a post or a page. In the Biography Box Post Options meta-box (for posts), or the Biography Box Page Options meta-box (for pages), you'll find that four new settings are now visible.</p>

<ul>
<li><em>Override Biography Text For This Post</em> - checking this setting will show a text box, pre-populated with the currently logged in user's biography, which can be overriden. If you want to revert to the currently logged in user's biography, clicking on the <em>Reload Default Profile Biography</em> will reset your changes.</li>
<li><em>Override Biography Title For This Post</em> - checking this setting will show a text box that can be used to override the default Biography Box title.</li>
<li><em>Suppress Avatar For This Post</em> - checking this setting will stop the post or page's author's avatar from being displayed as part of the Biography Box.</li>
<li><em>Suppress Contact Links For This Post</em> - checking this setting will stop the contact links being displayed as part of the Biography Box.</li>
</ul>

<p>All of the above settings are post or page specific; in other words they will only override the post or page that is currently being edited.</p>

<p>The thinking behind these settings is that if you have guest posts, you'll probably have one or more accounts with a <em>contributor</em> role. That account's biography text, avatar or contact links won't make much sense in the context of a guest post, so you can override them or suppress them in a way which does not impact the Biography Boxes produced for other users on your site.</p>

<h3><a name="faq19"></a>WP Biographia isn't available in my language; can I submit a translation?</h3>

<p>WordPress and this plugin use the gettext tools to support internationalisation. The source file containing each string that needs to be translated ships with the plugin in <code>wp-biographia/lang/src/wp-biographia.po</code>. See the <a href="http://codex.wordpress.org/I18n_for_WordPress_Developers">I18n for WordPress Developers</a> page for more information or get in touch for help and hand-holding.</p>

<h3><a name="faq20"></a>This plugin looks very much like the WP About Author; what's the connection?</h3>

<p>Version 1 of WP Biographia was inspired by and based on the <a href="http://wordpress.org/extend/plugins/wp-about-author/">WP About Author</a> plugin by <a href="http://www.jonbishop.com/">Jon Bishop</a>. Thanks and kudos must go to Jon for writing a well structured, working WordPress plugin released under a software license that enables other plugins such as this one to be written or derived in the first place. Jon's written <a href="http://profiles.wordpress.org/users/JonBishop/">other WordPress plugins</a> as well; you should take a look.</p>

<h3><a name="faq21"></a>I want to amend/hack/augment this plugin; can I do the same?</h3>
<p>Totally; like the original plugin by Jon, this plugin is licensed under the GNU General Public License v2 (GPLV2). See http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt for the full license terms.</p>

<h3><a name="faq22"></a>Where does the name WP Biographia come from?</h3>
<p>WP Biographia is named after the etymology of the modern English word biography. The word first appeared in the 1680s, probably from the latin biographia which itself derived from the Greek bio, meaning "life" and graphia, meaning "record" or "account" which derived from graphein, "to write".</p></body></html>
