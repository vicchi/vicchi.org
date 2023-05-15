<!--
.. title: WP Biographia 6) Template Tags
.. slug: 6-template-tags
.. date: 2012-10-26 15:50:27
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

<html><body><p>WP Biographia supports two <a href="https://codex.wordpress.org/Template_Tags">template tags</a> that can be used in your theme's template files. These are described in more detail below; for a full description of the use of each tag's argument, see the <em>Shortcode Support And Usage</em> section. The plugin's tags allow you to:</p>

<ul>
<li>produce the Biography Box and assign the HTML for the Biography Box to a string.</li>
<li>produce the Biography Box and echo the results immediately.</li>
</ul>

<h3>wpb_get_biography_box</h3>

<p><em>Description:</em> Retrieves the Biography Box. This template tags renders the Biography Box and returns it to the caller as a string. To display the Biography Box immediately, use the <code>wpb_the_biography_box</code> template tag.</p>

<p><em>Usage:</em></p>

[php]
&lt;php $biography_box = wpb_get_biography_box ($mode, $user, $prefix, $name, $role, $type, $order); ?&gt;
[/php]

<p><em>Parameters:</em></p>

<ul>
<li><code>$mode</code> - (string) (<em>optional</em>) Override the Biography Box mode (<code>raw</code>|<code>configured</code>). Default: <code>raw</code>.</li>
<li><code>$user</code> - (string) (<em>optional</em>) Override the source user (<code>login-name</code>|<code>*</code>). Default: the current user's login name.</li>
<li><code>$prefix</code> - (string) (<em>optional</em>) Override the Biography Box title prefix. Default: use the plugin's settings.</li>
<li><code>$name</code> - (string) (<em>optional</em>) Override the selected user's name format (<code>account-name</code>|<code>first-last-name</code>|<code>nickname</code>|<code>display-name</code>|<code>none</code>). Default: use the plugin's settings.</li>
<li><code>$role</code> - (string) (<em>optional</em>) Override the selected user's role when used in <em>wildcard mode</em>. Specify one or more of the following, as a comma separated list (<code>administrator</code>|<code>editor</code>|<code>author</code>|<code>contributor</code>|<code>subscriber</code>). Default: none.</li>
<li><code>$type</code> - (string) (<em>optional</em>) Override the type of the biography text (<code>full</code>|<code>excerpt</code>). Default: use the plugin's settings.</li>
<li><code>$order</code> - (string) (<em>optional</em>) Override the sort order when used in <em>wildcard mode</em> (<code>account-name</code>|<code>first-name</code>|<code>last-name</code>|<code>nickname</code>|<code>display-name</code>|<code>login-id</code>). Default: <code>account-name</code>.</li>
</ul>

<h3>wpb_the_biography_box</h3>

<p><em>Description:</em> Displays the Biography Box. This template tags renders the Biography Box and displays it immediately. To get the current Biography Box as a string, use the <code>wpb_get_biography_box</code> template tag.</p>

<p><em>Usage:</em></p>

[php]
&lt;?php wpb_the_biography_box ($mode, $user, $prefix, $name, $role, $type, $order); ?&gt;
[/php]

<p><em>Parameters:</em></p>

<ul>
<li><code>$mode</code> - (string) (<em>optional</em>) Override the Biography Box mode (<code>raw</code>|<code>configured</code>). Default: <code>raw</code>.</li>
<li><code>$user</code> - (string) (<em>optional</em>) Override the source user (<code>login-name</code>|<code>*</code>). Default: the current user's login name.</li>
<li><code>$prefix</code> - (string) (<em>optional</em>) Override the Biography Box title prefix. Default: use the plugin's settings.</li>
<li><code>$name</code> - (string) (<em>optional</em>) Override the selected user's name format (<code>account-name</code>|<code>first-last-name</code>|<code>nickname</code>|<code>display-name</code>|<code>none</code>). Default: use the plugin's settings.</li>
<li><code>$role</code> - (string) (<em>optional</em>) Override the selected user's role when used in <em>wildcard mode</em>. Specify one or more of the following, as a comma separated list (<code>administrator</code>|<code>editor</code>|<code>author</code>|<code>contributor</code>|<code>subscriber</code>). Default: none.</li>
<li><code>$type</code> - (string) (<em>optional</em>) Override the type of the biography text (<code>full</code>|<code>excerpt</code>). Default: use the plugin's settings.</li>
<li><code>$order</code> - (string) (<em>optional</em>) Override the sort order when used in <em>wildcard mode</em> (<code>account-name</code>|<code>first-name</code>|<code>last-name</code>|<code>nickname</code>|<code>display-name</code>|<code>login-id</code>). Default: <code>account-name</code>.</li>
</ul></body></html>
