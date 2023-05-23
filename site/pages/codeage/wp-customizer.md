<!--
.. title: WP Customizer
.. slug: wp-customizer
.. date: 2013-06-04 09:38:01
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

<html><body><h2>What Is WP Customizer?</h2>
WP Customizer is a <a href="https://wordpress.org">WordPress</a> plugin to easily load site specific functions, scripts and CSS files into your site without editing your theme's <code>functions.php</code> or other source files.
<h2>What Does It Do?</h2>
This plugin allows you to manage and load site specific functions, scripts and CSS files into your WordPress site without the need to edit your theme's <code>functions.php</code> or any other source file.

You can configure WP Customizer to:
<ol>
 	<li>Choose the type of customization you want to load; functions, scripts, CSS in any combination.</li>
 	<li>Choose where you want the customizations to load; in the WordPress front-end, in the WordPress admin screens or both.</li>
 	<li>Choose where you want to store your customization files, without the need to add to or modify your theme's or your plugin's source files.</li>
</ol>
<h2>How Do I Download WP Customizer</h2>
To download or install WP Customizer on your WordPress powered site, either search for <em>WP Customizer</em> from the WordPress Dashboard or go to plugin’s page on the official <a href="https://wordpress.org/extend/plugins/wp-customizer/">WordPress plugin repository</a>.

If you want to fork the source code of the plugin, you can find it on the plugin’s GitHub page at <a href="https://github.com/vicchi/wp-customizer">https://github.com/vicchi/wp-customizer</a>.
<h2>What's New?</h2>
WP Customizer v1.0.0 was released 04/06/13.
<h2>Full Documentation</h2>
<ul>
 	<li><a href="#installation">Installation</a></li>
 	<li><a href="#screenshots">Screenshots</a></li>
 	<li><a href="#faq">Frequently Asked Questions</a></li>
 	<li><a href="#changelog">What's Changed?</a></li>
 	<li><a href="#filters">Filter Support And Usage</a></li>
</ul>
<h2><a name="installation"></a>Installation</h2>
<ol>
 	<li>You can install WP Customizer automatically from the WordPress admin panel. From the Dashboard, navigate to the <em>Plugins / Add New</em> page and search for <em>"WP Customizer"</em> and click on the <em>"Install Now"</em> link.</li>
 	<li>Or you can install WP Customizer manually. Download the plugin Zip archive and uncompress it. Copy or upload the <code>wp-customizer</code> folder to the <code>wp-content/plugins</code> folder on your web server.</li>
 	<li>Activate the plugin. From the Dashboard, navigate to Plugins and click on the <em>"Activate"</em> link under the entry for <em>WP Customiser</em>.</li>
 	<li>Prepare your customization files. By default, WP Customizer looks for front-end functions in a directory named <code>functions</code>, for front-end scripts in a directory named <code>scripts</code> and for front-end CSS files in a directory named <code>css</code>.</li>
 	<li>Admin screen customizations are placed in a similar set of directories, prefixed with <code>admin_</code>, as in <code>admin_functions</code>, <code>admin_scripts</code> and <code>admin_css</code>.</li>
 	<li>Customizations common to both the front-end and the admin screens are placed in directories prefixed with <code>common_</code>, as in <code>common_functions</code>, <code>common_scripts</code> and <code>common_css</code>.</li>
 	<li>You can either create the default directories and place your customization files in them or create your own directory hierarchy.</li>
 	<li>Now you can configure the loading of each type of supported customization. From the Dashboard navigate to <em>Settings / WP Customizer</em> and enable loading of the customization files as you require.</li>
 	<li>If you choose to use a non-default set of directory name, you should ensure the plugin's options are updated to reflect this.</li>
</ol>
<h2>Screenshots</h2>
<ol>
 	<li><a href="#functions-tab">Settings and Options: Functions Tab</a></li>
 	<li><a href="#scripts-tab">Settings and Options: Scripts Tab</a></li>
 	<li><a href="#css-tab">Settings and Options: CSS Tab</a></li>
 	<li><a href="#colophon-tab">Settings and Options: Colophon Tab</a></li>
 	<li><a href="#debug-tab">Settings and Options: Debug Tab</a></li>
 	<li><a href="#contextual-help">Settings and Options: Functions Tab with Contextual Help</a></li>
</ol>
<h3><a name="functions-tab"></a>Settings and Options: Functions Tab</h3>
<a href="/wp-content/uploads/2013/06/screenshot-1.jpg"><img src="/wp-content/uploads/2013/06/screenshot-1-1024x559.jpg" alt="screenshot-1" class="aligncenter size-large wp-image-3958" width="980" height="534"></a>
<h3><a name="scripts-tab"></a>Settings and Options: Scripts Tab</h3>
<a href="/wp-content/uploads/2013/06/screenshot-2.jpg"><img src="/wp-content/uploads/2013/06/screenshot-2-1024x559.jpg" alt="screenshot-2" class="aligncenter size-large wp-image-3959" width="980" height="534"></a>
<h3><a name="css-tab"></a>Settings and Options: CSS Tab</h3>
<a href="/wp-content/uploads/2013/06/screenshot-3.jpg"><img src="/wp-content/uploads/2013/06/screenshot-3-1024x559.jpg" alt="screenshot-3" class="aligncenter size-large wp-image-3960" width="980" height="534"></a>
<h3><a name="colophon-tab"></a>Settings and Options: Colophon Tab</h3>
<a href="/wp-content/uploads/2013/06/screenshot-4.jpg"><img src="/wp-content/uploads/2013/06/screenshot-4-1024x814.jpg" alt="screenshot-4" class="aligncenter size-large wp-image-3961" width="980" height="779"></a>
<h3><a name="debug-tab"></a>Settings and Options: Debug Tab</h3>
<a href="/wp-content/uploads/2013/06/screenshot-5.jpg"><img src="/wp-content/uploads/2013/06/screenshot-5-1024x765.jpg" alt="screenshot-5" class="aligncenter size-large wp-image-3962" width="980" height="732"></a>
<h3><a name="contextual-help"></a>Settings and Options: Functions Tab with Contextual Help</h3>
<a href="/wp-content/uploads/2013/06/screenshot-6.jpg"><img src="/wp-content/uploads/2013/06/screenshot-6-1024x679.jpg" alt="screenshot-6" class="aligncenter size-large wp-image-3963" width="980" height="649"></a>
<h2><a name="faq"></a>Frequently Asked Questions</h2>
<ol>
 	<li><a href="#faq1">Why should I use this plugin?</a></li>
 	<li><a href="#faq2">How do I get help or support for this plugin?</a></li>
 	<li><a href="#faq3">Is there a web site for this plugin?</a></li>
 	<li><a href="#faq4">I've installed this plugin but it doesn't do anything?</a></li>
 	<li><a href="#faq5">I don't know PHP or JavaScript or jQuery or CSS; what customizations do I need?</a></li>
 	<li><a href="#faq6">I don't want to load all of the functions, scripts or CSS files I have; can I select which ones get loaded?</a></li>
 	<li><a href="#faq7">I'm a WordPress power user and want to specify things like dependencies for my scripts or make my CSS customizations load in the page footer; can I do this?</a></li>
 	<li><a href="#faq8">I've enabled functions/scripts/css and supplied a path but my function/script/css isn't loading?</a></li>
 	<li><a href="#faq9">WP Customizer has crashed my website/killed my cat/made it rain; what do I do?</a></li>
 	<li><a href="#faq10">What is all this talk of "customization"; I'm British and it's spelt "customisation" ... ?</a></li>
 	<li><a href="#faq11">WP Customizer isn't available in my language; can I submit a translation?</a></li>
 	<li><a href="#faq12">I want to amend/hack/augment this plugin; can I do this?</a></li>
</ol>
<h3><a name="faq1"></a>Why should I use this plugin?</h3>
A standard WordPress install is incredibly powerful and flexible. For a lot of people, WordPress out of the box plus one of the stock WordPress themes is enough. But the possibilities for customization are endless; you can add plugins and other themes. Sometimes these do just what you want. Sometimes you need to ... tweak WordPress. A very high proportion of the customization advice you'll find on the web starts with these lines ... <em>add the following to the end of your theme's <code>functions.php</code></em> or even worse, advises that you modify the source code of your theme or your plugins. This is <em>bad</em> for many reasons:
<ul>
 	<li>Editing your theme's <code>functions.php</code> makes <em>theme specific</em> customizations; change your theme and your customizations will no longer get loaded.</li>
 	<li>When your theme and plugins get updated you'll find all your careful hand crafted customizations get overwritten and lost.</li>
 	<li>A lot of theme and plugin authors won't offer support for changes you might have made to the source code.</li>
 	<li>Your customizations might work; but you might also inadvertently make some other changes which will stop things working.</li>
</ul>
WordPress doesn't yet support a way for site specific customizations to be made and loaded without touching theme, plugin or core files; that's what this plugin is for. When WordPress does support such a way, this plugin will thankfully be obsolete.
<h3><a name="faq2"></a>How do I get help or support for this plugin?</h3>
In short, very easily. But before you read any further, take a look at <a href="/pages/codeage/asking-for-wordpress-plugin-help-and-support-without-tears/">Asking For WordPress Plugin Help And Support Without Tears</a> before firing off a question. In order of preference, you can ask a question on the <a href="https://wordpress.org/support/plugin/wp-customizer">WordPress support forum</a>; this is by far the best way so that other users can follow the conversation. You can ask me a question on Twitter; I'm <a href="https://twitter.com/vicchi">@vicchi</a>. Or you can drop me an email instead. I can't promise to answer your question but I do promise to answer and do my best to help.
<h3><a name="faq3"></a>Is there a web site for this plugin?</h3>
Absolutely. Go to the <a href="/pages/codeage/wp-customizer/">WP Customizer home page</a> for the latest information. There's also the official <a href="https://wordpress.org/extend/plugins/wp-customizer/">WordPress plugin repository page</a> and the <a href="https://vicchi.github.com/wp-customizer/">source for the plugin is on Github</a> as well.
<h3><a name="faq4"></a>I've installed this plugin but it doesn't do anything?</h3>
By default the plugin installs with no customizations loading; you'll need to enable them as you need. See the <em>Installation</em> section for more details on how to do this.
<h3><a name="faq5"></a>I don't know PHP or JavaScript or jQuery or CSS; what customizations do I need?</h3>
To answer the first part of this question, it's probably best to start at the beginning and get a solid grounding in these tools and technologies before you start making customizations.

To answer the second part of this question, if you don't know what customizations you need then this plugin probably isn't for you.
<h3><a name="faq6"></a>I don't want to load all of the functions, scripts or CSS files I have; can I select which ones get loaded?</h3>
WP Customizer looks in each of the directories that you've configured (or left as the default) for each type of customization to load. To stop a specific file loading, simply rename it so that the first character of the file name is the underscore (<code>_</code>) character and that file will be skipped over when the plugin is looking for files to load. If other words, just rename <code>foo.php</code> to <code>_foo.php</code>.
<h3><a name="faq7"></a>I'm a WordPress power user and want to specify things like dependencies for my scripts or make my CSS customizations load in the page footer; can I do this?</h3>
Yes you can. Take a look at the <em>Filter Support and Usage</em> section for information on how to use the plugin's filters to do all of this and more. In fact, by using the plugin's filters you can specify every single option that the WordPress <a href="https://codex.wordpress.org/Function_Reference/wp_enqueue_script"><code>wp_enqueue_script</code></a> and <a href="https://codex.wordpress.org/Function_Reference/wp_enqueue_style"><code>wp_enqueue_style</code></a> API calls accept.
<h3><a name="faq8"></a>I've enabled functions/scripts/css and supplied a path but my function/script/css isn't loading?</h3>
There's a couple of things that might be happening here. Your file type might be incorrect; your path might not exist or be readable, your file might not exist or be readable or your file might be disabled (starting with an '_'). The plugin's Debug tab is designed to help
diagnose this sort of thing. The Debug tab performs a dry run, without actually loading any files, and checks that files and directories exist and are readable. If you see any entries highlighted in yellow then this will indicate that a file is probably disabled. If you see any entries highlighted in red then this will indicate that a file or directory either doesn't exist or is not able to be read.
<h3><a name="faq9"></a>WP Customizer has crashed my website/killed my cat/made it rain; what do I do?</h3>
This is unlikely but always possible. A customization file with errors in it can have unforeseen consequences. If this does happen firstly disable all your customization files by renaming them to have an underscore (<code>_</code>) as the first character. Hopefully things will be OK again. Now rename each customization file back by removing the underscore, one by one, to narrow down which one breaks things. Now would also be a good time to define <code>WP_DEBUG</code> in your <code>wp-config.php</code> file to get some helpful error messages in your PHP log file.

For the cases of expired felines or sudden precipitation, this is way outside what a WordPress plugin can do; it's probably an unfortunate coincidence.
<h3><a name="faq10"></a>What is all this talk of "customization"; I'm British and it's spelt "customisation" ... ?</h3>
I'm British too and yes, it's spelt <em>customisation</em> over here, not <em>customization</em>. As both Oscar Wilde and George Bernard Shaw are quoted as saying <a href="https://www1c.btwebworld.com/quote-unquote/p0000149.htm">'<em>(Britain and America are) two nations, separated by a common language</em>'</a>. By default, WP Customizer uses American English, but if you're British and you want British English instead, simply define <code>WP_LANG</code> to have a value of <code>en_GB</code> in your site's <code>wp-config.php</code> and WP Customizer will automagically become WP Customiser.
<h3><a name="faq11"></a>WP Customizer isn't available in my language; can I submit a translation?</h3>
WordPress and this plugin use the gettext tools to support internationalisation. The source file containing each string that needs to be translated ships with the plugin in <code>wp-customizer/lang/src/wp-customizer.po</code>. See the <a href="https://codex.wordpress.org/I18n_for_WordPress_Developers">I18n for WordPress Developers</a> page for more information or get in touch for help and hand-holding.
<h3><a name="faq12"></a>I want to amend/hack/augment this plugin; can I do this?</h3>
Totally; this plugin is licensed under the GNU General Public License v2 (GPLV2). See https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt for the full license terms.
<h2><a name="changelog"></a>Changelog</h2>
The current version is 1.0.0 (2013.05.29)
<h3>1.0</h3>
<ul>
 	<li>Released 2013.05.29</li>
 	<li>First version of WP Customizer released</li>
</ul>
<h2><a name="filters"></a>Filter Support And Usage</h2>
WP Customizer supports multiple filters; the plugin's filters allow you to
<ul>
 	<li>modify the set of functions files that are about to be loaded</li>
 	<li>modify the set of script files that are about to be loaded</li>
 	<li>modify the characteristics of each script file that is about to be loaded and which will be passed as arguments to <a href="https://codex.wordpress.org/Function_Reference/wp_enqueue_script"><code>wp_enqueue_script</code></a></li>
 	<li>modify the set of CSS files that are about to be loaded</li>
 	<li>modify the characteristics of each CSS file that is about to be loaded and which will be passed as arguments to <a href="https://codex.wordpress.org/Function_Reference/wp_enqueue_style"><code>wp_enqueue_style</code></a></li>
</ul>
Each filter will be only be called if the customization type is enabled in the plugin's options; if a customization type is enabled but no files are found to be loaded, the filter will still be called but will be passed an empty argument.

As with all WordPress filters, any filter hook function should either return the modified argument or the original argument if no modification were made.
<h3>wp_customizer_functions, wp_customizer_admin_functions, wp_customizer_common_functions</h3>
The <em>functions</em> filters are called when preparing to load the list of front-end functions (<code>wp_customizer_functions</code>), of admin functions (<code>wp_customizer_admin_functions</code>) and of common functions (<code>wp_customizer_common_functions</code>). The arguments that each filter hook function receives is identical in all cases. The filter hook function takes a single argument which is an array of file names.
<h4>Example: Prevent all function files from loading by returning an empty file list.</h4>
[php]
add_filter('wp_customizer_functions', 'function_handler', 10, 1);

function function_handler($files) {
// $files = array(
//		array(
//			'file' =&gt; (absolute path of function file)
//		),
//		array(...)
//	);

return array();
}
[/php]
<h3>wp_customizer_scripts, wp_customizer_admin_scripts, wp_customizer_common_scripts</h3>
The <em>scripts</em> filters are called when preparing to load the list of front-end scripts (<code>wp_customizer_scripts</code>), of admin scripts (<code>wp_customizer_admin_scripts</code>) and of common scripts (<code>wp_customizer_common_scripts</code>). The arguments that each filter hook function receives is identical in all cases. The filter hook function takes a single argument which is an array of file details.
<h4>Example: Add jQuery as a dependency to all scripts and enable each script to load in the post's footer.</h4>
[php]
add_filter('wp_customizer_scripts', 'script_handler', 10, 1);

function script_handler($files) {
// $files = array(
//		array(
//			'file' =&gt; (absolute path of script file),
//			'handle' =&gt; (auto-generated handle for script),
//			'src' =&gt; (URL of script file),
//			'deps' =&gt; (dependencies, defaults to an empty array),
//			'ver' =&gt; (version, defaults to false),
//			'in_footer' =&gt; (load in footer, defaults to false),
//		),
//		array(...)
// );

foreach ($files as $file) {
$file['deps'] = array('jquery');
$file['in_footer'] = true;
}

return $files;
}
[/php]
<h3>wp_customizer_css, wp_customizer_admin_css, wp_customizer_common_css</h3>
The <em>CSS</em> filters are called when preparing to load the list of front-end CSS (<code>wp_customizer_css</code>), of admin CSS (<code>wp_customizer_admin_css</code>) and of common CSS (<code>wp_customizer_common_css</code>). The arguments that each filter hook function receives is identical in all cases. The filter hook function takes a single argument which is an array of file details.
<h4>Example: Override the media type for all CSS files to use the <code>screen</code> media type.</h4>
[php]
add_filter('wp_customizer_css', 'css_handler', 10, 1);

function css_handler($files) {
// $files = array(
//		array(
//			'file' =&gt; (absolute path of css file),
//			'handle' =&gt; (auto-generated handle for CSS),
//			'src' =&gt; (URL of CSS file),
//			'deps' =&gt; (dependencies, defaults to an empty array),
//			'ver' =&gt; (version, defaults to false),
//			'media' =&gt; (media type, defaults to 'all')
//		),
//		array(...)
// );

foreach ($files as $file) {
$file['media'] = 'screen';
}

return $files;
}
[/php]</body></html>
