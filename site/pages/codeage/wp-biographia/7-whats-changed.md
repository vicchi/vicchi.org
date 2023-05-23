<!--
.. title: WP Biographia 7) What's Changed?
.. slug: 7-whats-changed
.. date: 2012-05-01 11:07:55
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

<html><body><h3>v3.3.0 - 2012.10.25</h3>
<ul>
<li>Added: <code>wp_biographia_content_title</code> filter; allow the Biography Boxes's title to be changed.</li>
<li>Added: Support for sites using the Simple Local Avatars plugin. If installed/active use the <code>simple_local_avatars</code> filter to fixup the avatar's CSS; hook into both <code>simple_local_avatars</code> and <code>get_avatars</code> to support site with mixed Gravatars and locally hosted avatars.</li>
<li>Added: Support for the shortcode's <code>order</code> attribute; allow custom sort orders when in wildcard mode.</li>
<li>Added: Support for post specific Biography Box overrides.</li>
<li>Added: Two new template tags: <code>wpb_get_biography_box</code> and <code>wpb_the_biography_box</code>.</li>
<li>Added: Multiple, comma separated, roles can now be specified for the shortcode and template tags.</li>
<li>Added: Support for enabling/disabling contact links in the user's profile, in the <em>Admin</em> and <em>Display</em> tabs and when rendering the Biography Box.</li>
<li>Added: 5px spacing between contact link icons to support custom icon sets with no border.</li>
<li>Added: The contact links in a user's profile are now validated to check that they are valid URLs; an admin error message is now displayed if a link is deemed to be invalid.</li>
<li>Added: Support for displaying the full or excerpt biography text.</li>
<li>Added: The display of the Biography Box can now be locked to the main WordPress Loop to prevent it being displayed in the sidebar or when <code>the_content</code> or <code>the_excerpt</code> are used as part of themes or other plugins.</li>
<li>Added: The colour of the Biography Box border can now be selected from the plugin's <em>Style</em> tab.</li>
<li>Added: <code>wp_biographia_link_item</code> filter; allow the constituent elements of each contact link to be overriden.</li>
<li>Added: The visibility of all user profile Biography Options (biography excerpt, hide on posts, hide on pages) are now controlled by the Admin User Profile Settings.</li>
<li>Fixed: The dismissed pointers flag is now removed for each user when the plugin is uninstalled.</li>
<li>Fixed: The Biography Box is now styled correctly when no avatar image is present.</li>
<li>Fixed: Shortcode and template tag roles are now validated against <code>$wp_roles</code> and not against a hard-coded roles list.</li>
<li>Fixed: Bug which hid the <em>Display On Individual Pages</em> setting on the <em>Display</em> tab when <em>Display On All Post Archives</em> was checked.</li>
<li>Fixed: The contact links in the Biography Box now align with the left hand edge of the biography text.</li>
<li>Other: Moved all support source files into the <code>includes</code> directory.</li>
<li>Other: Ensure plugin source files are being invoked within the context of the plugin itself, otherwise die.</li>
<li>Other: The non-minified versions of the plugin's CSS and JS files and now enqueued if <code>WP_DEBUG</code> is set to <code>true</code> or if <code>WPBIOGRAPHIA_DEBUG</code> is defined.</li>
<li>Other: Cleaned up wording for the biography section of a user's profile; repurposed the <em>shorter biography</em> text box to be the <em>biography excerpt</em> for use by the shortcode, template tags, widget and biography selection settings.</li>
</ul>

<h3>v3.2.0 - 2012.07.25</h3>
<ul>
<li>Added: Support for synchronising the use of <code>wpautop</code> via the <code>the_content</code> and <code>the_excerpt</code> filters to ensure these filters fire before the Biography Box is produced when the plugin's filter priority is less than the default filter priority to avoid formatting issues for contact links.</li>
<li>Added: Support for WordPress Pointers to display "what's new" information post install or upgrade and to provide a "guided tour" of the plugin's settings and options.</li>
<li>Added: Support for displaying the Biography Box as a widget.</li>
<li>Added: Support for a shorter biography to the user's profile to be used in conjunction with the Biography Box widget.</li>
<li>Added: Support to display the Biography Box for all types of archive page; author, category, date and tag.</li>
<li>Added: Custom meta boxes to the post/page/custom-post creation/editing screens to hide the Biography Box, making it easier to define the Admin screen's Exclusion settings.</li>
<li>Added: Support for the shortcode's <code>user</code> attribute; deprecating support for the <code>author</code> attribute.</li>
<li>Added: Increased the width of text and select boxes for the Admin and Exclusion admin tabs to allow for longer category names and longer lists of post IDs to be displayed.</li>
<li>Added: Wrap the plugin's avatars (if present) in plugin specific CSS code to prevent theme specific CSS bleeding into the Biography Box.</li>
<li>Fixed: The layout of the Biography Box for feeds now ignore displaying contact links as icons and formats them as plain text.</li>
<li>Fixed: Example use of the <code>wp_biographia_feed</code> filter in <code>readme.txt</code>.</li>
<li>Fixed: Bug where the <code>wp_biographia_feed</code> filter was never called in the context of a feed.</li>
<li>Fixed: Formatting of HTML for the Biography Box post/page hiding options in the user's profile.</li>
<li>Fixed: Use the term "hide" consistently across the plugin and documentation; previous versions used "hide" and "suppress" interchangeably.</li>
<li>Fixed: Use the term "user" consistently across the plugin and documentation; previous versions used "author" and "user" interchangeably.</li>
<li>Fixed: Bug where the last page of a multiply paged post was not correctly detected, resulting in the Biography Box being displayed for all pages.</li>
</ul>

<h3>v3.1.0 - 2012.05.03</h3>
<ul>
	<li>Added: Support for shortcode <code>role</code> attribute to further filter display of users when the shortcode is used in <em>wildcard</em> mode.</li>
	<li>Added: The <em>Colophon</em> tab in the admin settings screen now displays a dump of the plugin's setting and options without the need to extract that information from the database via MySQL or phpMyAdmin.</li>
	<li>Added: New <em>Admin</em> tab in the admin settings screen. This allows a suitably permissioned administrator to hide the Biography Box settings from a user's profile according to the user's role and to automatically suppress display of the Biography Box for newly created users according to that user's role.</li>
	<li>Added: Introductory help text to each post-box in each tab in the admin settings screen.</li>
	<li>Added: The filter priorities for both <code>the_content</code> and <code>the_excerpt</code> can now be individually defined to cope with priority clashes with other themes and plugins which use these filters.</li>
	<li>Fixed: Bug where the <code>wp_biographia_category_exclusions</code> setting was not defined in the database upon plugin upgrade, causing an <em>undefined index</em> notice message when the PHP error reporting level is set to <code>E_NOTICE</code>.</li>
	<li>Fixed: Bug in settings initialisation; post_exclusions, global_post_exclusions and page_exclusions are now pre-defined and initialised correctly on both install and upgrade.</li>
</ul>

<h3>v3.0.1 - 2012.04.20</h3>
<ul>
	<li>Fixed: Bug in plugin initialisation that incorrectly named the Vimeo content display option.</li>
	<li>Fixed: Bug that caused a post's author not to be refreshed in the front page and archive pages.</li>
	<li>Fixed: Bug that caused a post's author to be determined as the author of the enclosing page where a custom Loop is being used.</li>
</ul>

<h3>v3.0 - 2012.04.11</h3>
<ul>
	<li>Summary: A substantial rewrite of the plugin's structure with a reworked tabbed admin interface and substantial customisation options via the WordPress filter mechanism.</li>
	<li>Added: Filter <code>wp_biographia_default_settings</code></li>
	<li>Added: Filter <code>wp_biographia_contact_info</code></li>
	<li>Added: Filter <code>wp_biographia_link_items</code></li>
	<li>Added: Filter <code>wp_biographia_pre</code></li>
	<li>Added: Filter <code>wp_biographia_shortcode</code></li>
	<li>Added: Filter <code>wp_biographia_links</code></li>
	<li>Added: Filter <code>wp_biographia_feed</code></li>
	<li>Added: Filter <code>wp_biographia_biography_box</code></li>
	<li>Added: Support for the enclosing form of the <code>wp_biographia</code> shortcode in addition to the self-closing form.</li>
	<li>Added: Support for resetting the plugin's settings/options to their initial default values from within the admin screen.</li>
	<li>Added: Support for suppressing display of the Biography Box from posts, archives and the front page by category.</li>
	<li>Added: Tabbed settings/options in the admin screen.</li>
	<li>Fixed: Bug that caused an empty contact link to be displayed when an author's profile has an empty corresponding contact field.</li>
	<li>Fixed: CSS bug that prevented WP Touch from working in non-restricted mode.</li>
	<li>Fixed: Bug that caused extended contact links in an author's profile to be persisted after plugin uninstallation.</li>
</ul>

<h3>v2.4.4 - 2012.02.22</h3>
<ul>
	<li>Fixed bug where Vimeo contact link setting was not persisted across settings changes.</li>
	<li>Fix bug where "More Posts" link linked to the current page URL</li>
	<li>Minor CSS tweak.</li>
</ul>

<h3>v2.4.3 - 2012.02.17</h3>
<ul>
	<li>Fixed bug where page exclusion settings were not persisted to the back-end database configuration settings.</li>
</ul>

<h3>v2.4.2 - 2012.02.16</h3>
<ul>
	<li>Correct version number in plugin header.</li>
</ul>

<h3>v2.4.1 - 2012.02.16</h3>
<ul>
	<li>Fixed regression bug in v2.4 where a contact link items displayed as an empty link if enabled in WP Biographia but if the corresponding link in the user's profile was empty.</li>
	<li>Fixed regression bug in v2.4 where the user profile Biography Box settings text was not properly displayed.</li>
	<li>Tweak v2.4 CSS to clear up styling issues and to align list item styling with best practice.</li>
</ul>

<h3>v2.4 - 2012.02.16</h3>
<ul>
	<li>Add internationalisation support; add Spanish and Turkish language files.</li>
	<li>Add configuration setting to control the author's name in the Biography Box as a link to "More Posts By This Author".</li>
	<li>Add support for displaying the author's contact links as icons as well as plain text links.</li>
	<li>Add support for using an alternate link icon set.</li>
</ul>

<h3>v2.3 - 2012.01.26</h3>
<ul>
	<li>Suppress display of "More Posts" link in the Biography Box (if configured) if the user/author has no posts.</li>
	<li>Add <code>author</code>, <code>prefix</code> and <code>name</code> short code attribute support.</li>
	<li>Add support for global (across single, archive and front page templates) post exclusions in built-in post types and custom post types.</li>
	<li>Tightened wording in admin screen around post exclusions.</li>
</ul>

<h3>v2.2 - 2012.01.17</h3>
<ul>
	<li>Add enhanced short code support (raw and configured modes)</li>
	<li>Add support for displaying the Biography Box on archive pages that use excerpts</li>
	<li>Enhance contact information and Biography Box links to support Delicious, Flickr, Picasa, Vimeo, YouTube and Reddit</li>
	<li>Fixed bug that caused the Biography Box to be displayed for every page of a multiple page post</li>
	<li>Fixed bugs in avatar image size handling; non-default avatar image size was not persisted across settings changes; avatar image container div was not resized to new non-default avatar image size</li>
	<li>Migrate use of wp_print_styles to wp_enqueue_scripts; see (<a href="https://wpdevel.wordpress.com/2011/12/12/use-wp_enqueue_scripts-not-wp_print_styles-to-enqueue-scripts-and-styles-for-the-frontend/" target="_blank">https://wpdevel.wordpress.com/2011/12/12/use-wp_enqueue_scripts-not-wp_print_styles-to-enqueue-scripts-and-styles-for-the-frontend/</a>)</li>
	<li>Made terminology and control ordering for custom post types consistent in admin pages</li>
</ul>

<h3>v2.1.1 - 2011.12.21</h3>
<ul>
	<li>Fixed a bug in the per user suppression code due to debug code being left in the release</li>
</ul>

<h3>v2.1 - 2011.12.20</h3>
<ul>
	<li>Add the ability to suppress the Biography Box from being displayed on posts, on pages and on posts and pages on a per user basis</li>
	<li>Add settings link to Settings / WP Biographia admin page from the plugin's entry on the Dashboard / Plugins page</li>
	<li>Add checks for avatar display in the Biography Box being requested with avatar support not enabled in the Settings / Discussions admin page</li>
	<li>Add Help &amp; Support sidebar box to Settings / WP Biographia admin page</li>
	<li>Handle upgrades to configuration settings gracefully; fixed bug that didn't persist unused/unchanged configuration settings</li>
	<li>Cleaned up the wording for the Settings / WP Biographia admin page and made terminology consistent across all configurable options</li>
	<li>Tweaked admin CSS to introduce padding between the settings container and sidebar container that changed in WordPress 3.3</li>
</ul>

<h3>v2.0.0 - 2011.11.18</h3>
<ul>
	<li>Added the ability to set image size</li>
	<li>Added a simple shortcode</li>
	<li>Added Custom Post Types support with the ability to exclude based on post IDs</li>
	<li>Added ability to set the bio at the top or the bottom</li>
	<li>Added a filter to short circuit for further customization</li>
	<li>Added ability to include the post author's email link</li>
	<li>Refactored plugin file locations in line with WordPress plugin development recommendations</li>
	<li>Fixed CSS issue for gravatar</li>
</ul>

<h3>v1.0.0 - 2011.08.03</h3>
<ul>
	<li>First version of WP Biographia</li>
</ul></body></html>
