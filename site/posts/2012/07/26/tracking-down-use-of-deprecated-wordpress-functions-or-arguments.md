title: Tracking Down Use Of Deprecated WordPress Functions Or Arguments
slug: tracking-down-use-of-deprecated-wordpress-functions-or-arguments
date: 2012-07-26 08:58:39
tags: argument,code,deprecated,development,function,hook,php,plugin,theme,wordpress
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

If you've been running your blog or site on WordPress for any period of time, you may well have come across a message about a deprecated function or argument in your PHP log file or across the top of a page on your site. The message might look something like this ...




```

Notice:  get_bloginfo was called with an argument that is **deprecated** since version 2.2! The siteurl option is deprecated for the family of bloginfo() functions. Use the url option instead. in /var/web/htdocs/site/wp-includes/functions.php on line 2712

```


... this often appears after you've installed or upgraded a new theme or plugin. This message is helpful but really only 50% useful. The PHP file and line number that's being reported isn't where the deprecated function or argument is being used; it's where it's being *reported from*. Often, even after you've searched through the source code of the new plugin or theme you're still none the wiser about where the troublesome piece of PHP that WordPress is telling you about actually lives. WordPress is a complicated mix of PHP, JavaScript and CSS; there's a lot more going on under the hood than most of us are remotely aware of.

<!-- TEASER_END -->

Thankfully WordPress also helps provide an answer, through an undocumented action hook called `deprecated_argument_run`; that's *undocumented* in the WordPress Codex, it is documented in the core WordPress source code, if you know where to look. The clue to unlocking this problem is a comment in `wp-includes/functions.php` which says *There is a hook deprecated\_argument\_run that will be called that can be used to get the backtrace up to what file and function used the deprecated argument*. So here's how to get that backtrace.

Put the following code somewhere on your site, maybe in your theme's `functions.php`, where it will get called by WordPress. Now I know this seeminly contradicts what I said in an [earlier post](/2012/07/20/dont-go-there-go-here-a-wordpress-redirection-plugin/ "/2012/07/20/dont-go-there-go-here-a-wordpress-redirection-plugin/") but this is a temporary piece of debugging code and not a permanent feature of your site; I might just make it a plugin some day though.

[php]
add\_action ('deprecated\_argument\_run', 'deprecated\_argument\_run', 10, 3);
[/php]

Now add the hook function that gets called when a deprecated argument is detected.

[php]
function deprecated\_argument\_run ($function, $message, $version) {
 error\_log ('Deprecated Argument Detected');
 $trace = debug\_backtrace ();
 foreach ($trace as $frame) {
 error\_log (var\_export ($frame, true));
 }
}
[/php]

Reload a page on your site and you'll see a back trace in your PHP error log of precisely where the deprecated argument is being used.

This technique isn't limited to deprecated arguments, there's also action hooks for deprecated functions (`deprecated_function_run`), deprecated files (`deprecated_file_included`) and something being incorrectly called (`doing_it_wrong_run`), all of which can use the same form of back trace technique.

You'll probably need to ensure that `WP_DEBUG` is enabled in your `wp-config.php` and don't forget to remove your debug code and disable `WP_DEBUG` after you've finished.




