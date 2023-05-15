<!--
.. title: WP Biographia 4) Shortcode Usage And Support
.. slug: 4-shortcode-usage-and-support
.. date: 2012-05-01 11:09:26
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

<html><body><p>WP Biographia supports a single shortcode, <code>[wp_scs][wp_biographia][/wp_scs]</code>. Adding this shortcode to the content of a post or page or into a theme template as content, expands the shortcode and replaces it with a Biography Box.

The shortcode also supports multiple <em>attributes</em> which allow you to customise the way in which the shortcode is expanded into the Biography Box:

</p><ul>
	<li>the <code>mode</code> attribute</li>
	<li>the <code>user</code> attribute</li>
	<li>the <code>author</code> attribute (<em>deprecated</em>)</li>
	<li>the <code>role</code> attribute</li>
	<li>the <code>order</code> attribute</li>
	<li>the <code>prefix</code> attribute</li>
	<li>the <code>name</code> attribute</li>
	<li>the <code>type</code> attribute</li>
</ul>

<h3>The "mode" Attribute</h3>

<p>In <code>raw</code> mode, which is the default (specified as <code>[wp_scs][wp_biographia mode="raw"][/wp_scs]</code> or simply as <code>[wp_scs][wp_biographia][/wp_scs]</code>), the plugin inserts the Biography Box in <em>you've asked for it, you've got it</em> mode.</p>

<p>Or to put it another way, the plugin will honour the settings that you specify under <em>Dashboard / Settings/ WP Biographia</em> for <em>Biography Box Style Settings</em> and for <em>Biography Box Content Settings</em> but will ignore the <em>Biography Box Display Settings</em> and <em>Biography Box Per User Settings</em>.</p>

<p>In <code>configured</code> mode, specified as <code>[wp_scs][wp_biographia mode="configured"][/wp_scs]</code>, the plugin inserts the Biography Box and will honour all the settings under <em>Dashboard / Settings / WP Biographia</em> with the exception of <em>Display On Front Page</em>, <em>Display On Individual Post</em>, <em>Display On Post Archives</em> and <em>Display On Individual Pages</em>, as well as their equivalents for any custom post types you may have created.</p>

<p>The thinking behind this is that you probably want to honour post or page exclusions and per user exclusions, but by using the shortcode in your posts, you want to be in control of how and where the Biography Box is displayed.</p>

<h3>The "user" Attribute</h3>

<p>If the <code>user</code> attribute is omitted, which is the default, the shortcode assumes it's being used within the <a href="http://codex.wordpress.org/The_Loop">WordPress Loop</a> and will display the Biography Box once for the current post's, page's or custom post type's user.</p>

<p>Specifying a user's login name as the <code>user</code> attribute overrides this behaviour and allows multi-user sites to use the plugin to create a <em>contributors</em> page, where you use the shortcode as <code>[wp_scs][wp_biographia user="login-name"][/wp_scs]</code> once for each of your site's user that you want to appear, replacing <code>"login-name"</code> with a valid login name for one of your authors.</p>

<p>You call also use the <code>user</code> attribute in <em>wildcard</em> mode, specifying the user's login name as <code>*</code> as <code>[wp_scs][wp_biographia user="*"][/wp_scs]</code>; this will then loop over all of the user that have logins on your site, displaying the Biography Box once for each user, ordered alphabetically by login name.</p>

<p>Specifying an invalid login name (<code>[wp_scs][wp_biographia user="idontexist"][/wp_scs]</code>) will result in no Biography Box being displayed. Specifying an empty login name (<code>[wp_scs][wp_biographia user=""][/wp_scs]</code>) will cause the <code>author</code> attribute to be ignored and may result in undefined behaviour, such as a partially populated Biography Box being displayed as the shortcode is being used outside of the Loop and thus no author information is made available to the plugin by WordPress.</p>

<h3>The "author" Attribute</h3>

<p>The <code>author</code> attribute is now deprecated in favour of the <code>user</code> attribute introduced in v3.2.0 of the plugin. If the <code>author</code> attribute is used and no <code>user</code> attribute is present, the <code>author</code> attribute will act in the same way as the <code>user</code> attribute, described above. If both the <code>user</code> and <code>author</code> attributes are present, the <code>author</code> attribute will be ignored in favour of the <code>user</code> attribute.</p>

<p>In other words, if you use the shortcode and supply both the <code>author</code> and <code>user</code> attributes, such as <code>[wp_biographia author="foo" user="bar"]</code>, the Biography Box will be displayed for the user <code>bar</code>, not the user <code>foo</code>. Likewise, <code>[wp_scs][wp_biographia user="*" author="foo"][/wp_scs]</code> will display the Biography Box in <em>wildcard</em> mode, not for the user <code>foo</code>.</p>

<p>Support for the <code>author</code> attribute will be likely be removed in a future release of the plugin to avoid confusion over the <code>author</code> and <code>user</code> attributes.</p>

<h3>The "role" Attribute</h3>

<p>Valid only when used in conjunction with the <code>user</code> attribute in <em>wildcard</em> mode, the <code>role</code> attribute allows you to filter the users that have user accounts on your blog according to their <a href="http://codex.wordpress.org/Roles_and_Capabilities">WordPress Role</a>. The <code>role</code> attribute takes one or more comma separated arguments which define the WordPress role(s); at the time of writing, these can be one of:</p>

<ul>
	<li><code>administrator</code></li>
	<li><code>editor</code></li>
	<li><code>author</code></li>
	<li><code>contributor</code></li>
	<li><code>subscriber</code></li>
</ul>

<p>For example, if you want to display the Biography Box for all users of your blog who have a role of <code>author</code> you can use the <code>role</code> attribute plus the <code>author</code> attribute in <em>wildcard</em> mode to do this, along the lines of <code>[wp_scs][wp_biographia user="*" role="author"][/wp_scs]</code>. If you want to display the Biography Box for all users with a role of <code>author</code> or <code>contributor</code>, you can specify both roles, along the lines of <code>[wp_scs][wp_biographia user="*" role="author,contributor"][/wp_scs]</code>.</p>

<p>Specifying an invalid <code>role</code> (<code>[wp_scs][wp_biographia user="*" role="foo"][/wp_scs]</code>) will result in no Biography Box being displayed. Specifying the <code>role</code> attribute without the <code>author</code> attribute in <em>wildcard</em> mode will have no effect.</p>

<h3>The "order" Attribute</h3>

<p>Valid only when used in conjunction with the <code>user</code> attribute in <em>wildcard</em> mode, the <code>order</code> attribute allows you to specify the display order for the users that have user accounts on your blog. The <code>order</code> attribute takes a single argument which defines the sorting order; at the time of writing, this can be one of:</p>

<ul>
<li><code>account-name</code> <em>(the default)</em></li>
<li><code>first-name</code></li>
<li><code>last-name</code></li>
<li><code>nickname</code></li>
<li><code>display-name</code></li>
<li><code>login-id</code></li>
</ul>

<p>For example, if you want to display the Biography Box for all users of your blog ordered according to their last name you can use the <code>order</code> attribute plus the <code>author</code> attribute in <em>wildcard</em> mode to do this, along the lines of <code>[wp_scs][wp_biographia user="*" order="last-name"][/wp_scs]</code>.</p>

<p>Specifying an invalid role (<code>[wp_scs][wp_biographia user="*" order="foo"][/wp_scs])</code> will result in the default account name sort order being used. Specifying the <code>order</code> attribute without the <code>user</code> attribute in <em>wildcard</em> mode will have no effect.</p>

<p>It's important to note that the in order to successfully sort by <code>first-name</code> or by <code>last-name</code>, the <em>First Name</em> and/or <em>Last Name</em> fields must be populated in each user's Profile; by default, these fields are not populated during the creation of a user's WordPress account. The sorting of the user accounts when the <code>order</code> attribute is specified uses <a href="http://sourcefrog.net/projects/natsort/"><em>natural order string comparison</em></a>, which means than an empty <em>First Name</em> or <em>Last Name</em> will appear <strong>before</strong> a <em>First Name</em> or <em>Last Name</em> which actually contains a value. If your WordPress site doesn't have these name fields populated in your user's Profiles, you may not see the sorting results you expect.</p>

<h3>The "prefix" Attribute</h3>

<p>If the <code>prefix</code> attribute is omitted, which is the default, the Biography Box will be displayed with <em>Biography Prefix</em> text configured in <em>Settings/ WP Biographia / Biography Box Content Settings</em> before the author's name. This can be overridden by using the <code>prefix</code> attribute, along the lines of <code>[wp_scs][wp_biographia prefix="All About"][/wp_scs]</code>.</p>

<h3>The "name" Attribute</h3>

<p>If the <code>name</code> attribute is omitted, which is the default, the Biography Box will be displayed with the author's name as configured by <em>Author's Name</em> in <em>Settings / WP Biographia /Biography Box Content Settings</em>. This can be overriden by supplying one of the following for the <code>name</code> attribute's argument:</p>

<ul>
	<li><code>account-name</code></li>
	<li><code>first-last-name</code></li>
	<li><code>nickname</code></li>
	<li><code>display-name</code></li>
	<li><code>none</code></li>
</ul>

<h3>The "type" Attribute</h3>

<p>If the <code>type</code> attribute is omitted, which is the default, the Biography Box will be displayed with the user's full biography text, taken from the <em>Biographical Info</em> field in the user's profile. If the <code>type</code> attribute is specified with a value of <code>full</code>, this is equivalent to the default behaviour. If the <code>type</code> attribute is specified with a value of <code>excerpt</code>, the <em>Biographical Excerpt</em> field in the user's profile will be used instead, providing the user has filled out this field in their profile. Specifying an invalid <code>type</code> attribute value (<code>[wp_scs][wp_biographia type="foo"][/wp_scs]</code>) will result in the default behaviour of the full biography being used.</p></body></html>
