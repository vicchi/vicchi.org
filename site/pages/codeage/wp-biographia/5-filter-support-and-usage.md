<!--
.. title: WP Biographia 5) Filter Support And Usage
.. slug: 5-filter-support-and-usage
.. date: 2012-05-01 11:09:39
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

<html><body><p>WP Biographia supports multiple filters, which are described in more detail below. The plugin's filters allow you to:
</p><ul>
<li>change the default set of installation settings and options at plugin activation time</li>
<li>modify and/or enhance the set of contact information fields the plugin adds to the author's profile</li>
<li>modify and/or enhance the contact links that are added to the Biography Box by the plugin</li>
<li>modify the position of the Biography Box to before or after the post content returned by <code>the_content()</code> and/or <code>the_excerpt()</code></li>
<li>hide the display of the Biography Box entirely under user-defined circumstances</li>
<li>modify and/or enhance the Biography Box that is produced by the
<code>[wp_scs][wp_biographia][/wp_scs]</code> shortcode</li>
<li>modify and/or enhance the format and content of the contact links that are added to the Biography Box by the plugin</li>
<li>modify and/or enhance the Biography Box that is produced for an RSS feed</li>
<li>modify and/or enhance the entirety of the Biography Box</li>
</ul>

<h3>wp_biographia_default_settings</h3>

<p>Applied to the default set of plugin settings and options. Note that this filter is called once, upon plugin activation, when there are no WP Biographia settings/options existing in the database.</p>

<h4>Example: Add the date and time that the plugin was first activated</h4>

[php]
add_filter ('wp_biographia_default_settings', 'add_activation_timestamp');

function add_activation_timestamp ($options) {
	// options = array (option name =&gt; option value)
	$options['plugin_activation_timestamp'] = date (DATE_ATOM);

	return $options;
}
[/php]

<h3>wp_biographia_contact_info</h3>

<p>Applied to the default set of contact information fields that are added to an author's profile by the plugin. Note that in order to add and display a new contact link to the Biography Box, the contact link must be added to the value returned by the <code>wp_biographia_link_items</code> filter as well as the value returned by this filter.</p>

<h4>Example: Add Pinterest as a supported contact information field</h4>

[php]
add_filter ('wp_biographia_contact_info', 'add_pinterest_support');

function add_pinterest_support ($contacts) {
	// contacts = array (field =&gt; array (field =&gt; field-name, contactmethod =&gt; description))
	$contacts['pinterest'] = array (
		'field' =&gt; 'pinterest',
		'contactmethod' =&gt; __('Pinterest')
	);

	return $contacts;
}
[/php]

<h3>wp_biographia_link_items</h3>

<p>Applied to the default set of contact links that are added to the Biography Box by the plugin. Note that in order to add and display a new contact link, the contact information field must be added to the value returned by the <code>wp_biographia_contact_info</code> filter as well as the value returned by this filter. Note that <code>$icon_dir_url</code> will by default contain the URL of the images directory within the plugin directory, which will look something like <code>/wp-content/plugins/wp-biographia/images/</code> (the trailing slash is important). If an alternate icon directory has been specified in the plugin's settings and options, then <code>$icon_dir_url</code> will contain this alternate, configured, directory URL. If the icon you want to add for a new contact link doesn't reside in the directory URL mentioned previously, you'll need to set <code>$icon_dir_url</code> to point to your own custom location.</p>

<h4>Example: Add Pinterest as a supported contact link in the Biography Box</h4>

[php]
add_filter ('wp_biographia_link_items', 'add_pinterest_link', 10, 2);

function add_pinterest_link ($links, $icon_dir_url) {
	// links = array (field =&gt; array (link_title =&gt; title, link_text =&gt; text, link_icon =&gt; URL)
	$links['pinterest'] = array (
		'link_title' =&gt; __('Pinterest'),
		'link_text' =&gt; __('Pinterest'),
		'link_icon' =&gt; $icon_dir_url . 'pinterest.png'
		);

		return $links;
}
[/php]

<h3>wp_biographia_pattern</h3>

<p>Applied to the format string used to position the Biography Box before the post content or after the post content that is returned by <code>the_content()</code> and/or <code>the_excerpt()</code>.</p>

<h4>Example: Insert a header between post content and Biography Box</h4>

[php]
add_filter ('wp_biographia_pattern', 'insert_biography_header');

function insert_biography_header ($pattern) {
	return '%1$s&lt;p class="biography-header"&gt;About The Author&lt;/p&gt;%2$s';
}
[/php]

<h3>wp_biographia_pre</h3>

<p>Allows display of the Biography Box to be hidden under user-defined circumstances. This only affects the display of the Biography Box that is configured via the plugin's admin screen or via the shortcode in configured mode.</p>

<h4>Example: Suppress the Biography Box</h4>

[php]
add_filter ('wp_biographia_pre', 'suppress_biography_box');

function suppress_biography_box ($flag) {
	return true;
}
[/php]

<h3>wp_biographia_shortcode</h3>

<p>Applied to the current instance of the Biography Box that is produced via the <code>[wp_scs][wp_biographia][/wp_scs]</code> shortcode.</p>

<h4>Example: Apply shortcode specific CSS to the Biography Box</h4>

[php]
add_filter ('wp_biographia_links', 'add_shortcode_css', 10, 2);

function add_shortcode_css ($content, $params) {
	// params = array (mode =&gt; shortcode-mode, author =&gt; author-id, prefix =&gt; prefix-string,
						name =&gt; name-option)

	return '&lt;div class="custom-shortcode-css"&gt;' . $content . '&lt;/div&gt;';
}
[/php]

<h3>wp_biographia_content_title</h3>

<p>Applied to the title of the Biography Box.</p>

<h4>Example: Override the name prefix for all uses of the Biography Box</h4>

[php]
add_filter ('wp_biographia_content_title', 'override_name_prefix', 10, 3);

function override_name_prefix ($content, $name_prefix, $formatted_name) {
	return 'This is ' . $formatted_name;
}
[/php]

<h3>wp_biographia_links</h3>

<p>Applied to the formatted set of contact links for the current instance of the Biography Box</p>

<h4>Example: Replace the default text link separator character (the pipe symbol "|") with a dash ("-").</h4>

[php]
add_filter ('wp_biographia_links', 'replace_link_separator', 10, 3);

function replace_link_separator ($content, $links, $params) {
	// links = array (link-item)
	// params = array (glue =&gt; separator-string, class =&gt; link-item-css-class-name,
	//					prefix =&gt; links-prefix-html, postfix =&gt; links-postfix-html)

	return str_replace ($params['glue'], ' - ', $content);
}
[/php]

<h4>Example: Wrap the formatted content links in an additional HTML div</h4>

[php]
add_filter ('wp_biographia_links', 'wrap_links', 10, 3);

function wrap_links ($content, $links, $params) {
	// links = array (link-item)
	// params = array (glue =&gt; separator-string, class =&gt; link-item-css-class-name,
	//					prefix =&gt; links-prefix-html, postfix =&gt; links-postfix-html)

	$new_prefix = '&lt;div class="custom-link-class"&gt;' . $params['prefix']; $new_postfix = $params['postfix'] . '&lt;/div&gt;';

	return $new_prefix . implode ($params['glue'], $links) . $new_postfix;
}
[/php]

<h3>wp_biographia_link_item</h3>

<p>Applied to each active contact link, in the order in which they are processed by the plugin.</p>

<h4>Example: Force all links that point to the current site to open in a new window</h4>

[php]
add_filter ('wp_biographia_link_item', 'filter_link_item', 10, 2);

function filter_link_item ($content, $params) {
	// $params = array (
	//		'type' =&gt; 'link type (icon|text)',
	//		'format' =&gt; 'link format string',
	//		'meta' =&gt; 'additional anchor attributes',
	//		'title' =&gt; 'link title',
	//		'url' =&gt; 'link URL',
	//		'body' =&gt; 'link body text',
	//		'link-class' =&gt; 'link CSS class name',
	//		'item-class' =&gt; 'link item CSS class name (icons only)'
	//	);
	
	$site_url = site_url ();
	$pos = strpos ($params['url'], $site_url);
	if ($pos !== false) {
		$params['meta'] = 'target="_blank"';
	}
	
	if ($params['type'] === 'icon') {
		$content = sprintf ($params['format'], $params['url'], $params['meta'], $params['title'], $params['link-class'], $params['body'], $params['item-class']);
	}
	
	else {
		$content = sprintf ($params['format'], $params['url'], $params['meta'], $params['title'], $params['link-class'], $params['body']);
	}

	return $content;
}
[/php]

<h3>wp_biographia_feed</h3>

<p>Applied to the current instance of the Biography Box that is produced via the site's RSS feed.</p>

<h4>Example: Apply RSS feed specific CSS to the Biography Box</h4>

[php]
add_filter ('wp_biographia_feed', 'add_feed_css');

function add_feed_css ($content) {
	return '&lt;div class="custom-feed-css"&gt;' . $content . '&lt;/div&gt;';
}
[/php]

<h3>wp_biographia_biography_box</h3>

<p>Applied to the entire content of the current instance of the Biography Box.</p>

<h4>Example: Remove all WP Biographia CSS classes commencing wp-biographia- and replace them with custom CSS classes that adhere to the plugin's CSS class naming convention.</h4>

[php]
add_filter ('wp_biographia_biography_box', 'replace_css_classes', 10, 2);

function replace_css_classes ($biography, $items) {
	$new_content = array ();

	foreach ($items as $item) {
		$new_content[] = str_replace ('wp-biographia-', 'custom-', $item);
	}

	return implode ('', $new_content);
}
[/php]</body></html>
