title: Bending WP Biographia To Your Will; A Configuration Guide
slug: bending-wp-biographia-to-your-will
date: 2012-05-18 14:28:33
tags: code,configuration,geotagged,help,howto,london,plugin,support,wordpress,wp-biographia
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

WP Biographia has grown and matured quite a bit since it was first released. A quick glance through the [multiple releases of the code](https://github.com/vicchi/wp-biographia "https://github.com/vicchi/wp-biographia") that make up the plugin tells me that in v1.0, the plugin was 761 lines of PHP code and 46 lines of CSS. Now in v3.1, that's increased to 2944 lines of PHP, 92 lines of JavaScript and 174 lines of CSS.

But more importantly, as the plugin has grown and changed and more and more features have been added, so have the number of configuration settings, from 22 in v1.0 to 43 in v3.1. While most people seem to use the plugin out of the box, with little or no customisation, if you do want to take full advantage of all that the plugin has to offer, this means you need to roll up your sleeves and trawl through all of the plugin's settings, which can be a daunting task at times.

So with this in mind, assuming you've [installed and activated the plugin](/pages/codeage/wp-biographia/1-installation/ "/pages/codeage/wp-biographia/1-installation/"), here's a step by step and screen by screen guide to bending WP Biographia to your will.

<!-- TEASER_END -->


* [Setting Up Your Biography](#biography-setup "#biography-setup")
* [Setting Up Your Author's Picture](#avatar-setup "#avatar-setup")
* [Basic Settings; The Display Tab](#display-tab "#display-tab")
* [Basic Settings; The Style Tab](#style-tab "#style-tab")
* [Basic Settings; The Content Tab](#content-tab "#content-tab")
* [Advanced Settings; The Exclusions Tab](#exclusions-tab "#exclusions-tab")
* [Advanced Settings; The Admin Tab](#admin-tab "#admin-tab")


### Setting Up Your Biography


Firstly, set your biography details up. From the Dashboard, navigate to *Users -> Your Profile*. Under *Name*, fill in your First Name, Last Name and Nickname and choose how you want your name to be displayed publicly (you can't change your username by the way).

Now add your *Contact Info*. WP Biographia adds fields for Twitter, Facebook, LinkedIn, Google+, Delicious, Flickr, Picasa, Vimeo, YouTube and Reddit to the contact info that WordPress provides out of the box. For each piece of contact information you want displayed in the Biography Box, add the corresponding URL.

***Contact Info Gotcha:*** It's important to note that you need to enter the full URL to your profile for each social media site. For example, for Twitter you'll need to add `http://twitter.com/user`, not just `@user`.

Now add your biography text to the *Biographical Info* field under *About Yourself*.

***Biography Gotcha:*** By default, WordPress restricts the HTML tags you can enter in this box to filter out potentially harmful and/or invalid tags (see `$allowedtags` in `/wp-includes/kses.php` for the current list). The most common additional HTML tag that people ask for is the line break tag. You can allow WordPress to accept this tag with [a small amount of PHP](/pages/codeage/wp-biographia/3-frequently-asked-questions/#faq9 "/pages/codeage/wp-biographia/3-frequently-asked-questions/#faq9") added to your theme's `functions.php` file ().

Finally, click on *Update Profile* to save all your changes.
### Setting Up Your Author's Picture


Next, set up your author picture, or avatar. By default, WordPress uses Gravatars, short for Globally Recognised Avatars, to display author pictures. Head over to the [Gravatar site](http://en.gravatar.com "http://en.gravatar.com"), sign up for an account and upload your author picture.

***Avatar Gotcha:*** One important gotcha you need to know is that the link between your user profile on your WordPress blog and your author's picture on the Gravatar site is your email address, so when you sign up you need to ensure you use the same email address as is listed in your user profile on your blog.

***Avatar Gotcha:*** If for some reason you don't want to use or sign up for a Gravatar, there are other WordPress plugins that can help you upload author pictures to your blog. The key thing is that the plugin you use has to be able to work with author pictures in the same way as WordPress does, otherwise WP Biographia won't be able to display them in the Biography Box. See [this FAQ for more information](/pages/codeage/wp-biographia/3-frequently-asked-questions/#faq4 "/pages/codeage/wp-biographia/3-frequently-asked-questions/#faq4") on this.

Once you've done this, head back to your blog's Dashboard and navigate to *Settings -> Discussion* and under *Avatars* make sure that *Show Avatars* is checked under *Avatar Display*. Make sure you click on *Save Changes*.
### WP Biographia Settings And Options


Now it's time to make WP Biographia do what you want it to do. From the Dashboard navigate to *Settings -> WP Biographia*. You'll see that there are 7 tabs of settings and options. The *Display* tab should be the first one that's shown so let's start there.

### Basic Settings; The Display Tab


This tab has broad settings to control how the WP Biographia Biography Box is displayed and where. You can choose one or all of displaying on your blog's front page, on individual posts, on post archives, on individual pages and in your blog's RSS feed. You can also choose whether to display the Biography Box before or after the content of a post, a page, an archive or the RSS feed. If your blog has custom post types, perhaps provided by your theme, you'll also see the option to control display of the Biography Box here.

[![](/wp-content/uploads/2012/05/screenshot-1.jpg "v3.1 - screenshot-1")](/wp-content/uploads/2012/05/screenshot-1.jpg "/wp-content/uploads/2012/05/screenshot-1.jpg")
***Display Gotcha:*** If you choose to display the Biography Box on post archives, this will do so for all archive types, be that tag archives, author archives, category archives, date archives or so on. If you want to restrict the display to a particular type of archive, you'll need to [add some conditional tags to your theme's template files](http://codex.wordpress.org/Conditional_Tags "http://codex.wordpress.org/Conditional_Tags").

Click on *Save Display Settings* before moving onto the *Style* tab.

### Basic Settings; The Style Tab


This tab controls how the Biography Box is styled, its background colour and what sort of border, if any, is drawn around the Biography Box. You can enter the background colour as an [HTML colour code](http://html-color-codes.info/ "http://html-color-codes.info/") or use the built-in colour picker tool.

[![](/wp-content/uploads/2012/05/screenshot-7.jpg "v3.1 - screenshot-7")](/wp-content/uploads/2012/05/screenshot-7.jpg "/wp-content/uploads/2012/05/screenshot-7.jpg")
***Style Gotcha:*** The Style tab provides only a basic set of styling options. If you want more fine grained control, or if your theme's style is interfering with the way in which the Biography Box looks, you'll need to know how to control this via CSS and how to add extra CSS to your blog. [This article should tell you how to do this](/2012/04/05/hacking-wp-biographias-appearance-with-css/ "/2012/04/05/hacking-wp-biographias-appearance-with-css/").

Click on *Save Style Settings* before moving onto the *Content* tab.

### Basic Settings; The Content Tab


This tab controls what information is and what isn't displayed in the Biography Box. You can choose to override the prefix, the text that's display before the author's name, how the author's name is displayed, whether the author's picture is displayed, whether the author's biography is displayed and whether to show the author's profile's contact links as text or as icons.

[![](/wp-content/uploads/2012/05/screenshot-8.jpg "v3.1 - screenshot-8")](/wp-content/uploads/2012/05/screenshot-8.jpg "/wp-content/uploads/2012/05/screenshot-8.jpg")
***Content Gotcha:*** To ensure that a contact link is displayed in the Biography Box, you'll need to ensure that it's not only enabled in the Content tab but also that there's a valid URL in the corresponding contact information field in your profile. If you do the former but not the latter, the Biography Box won't know to display the link. If you do the latter but not the former, the plugin isn't clever enough to know what the link needs to be without you telling it.

[![](/wp-content/uploads/2012/05/screenshot-9.jpg "v3.1 - screenshot-9")](/wp-content/uploads/2012/05/screenshot-9.jpg "/wp-content/uploads/2012/05/screenshot-9.jpg")
***Content Gotcha:*** WP Biographia supports 12 different contact/social media links, but to keep the settings and options under control, that number won't be growing anytime soon. But what if you want to display a link to one of the ever growing number of social media sites that isn't supported natively by the plugin? With a little bit of PHP coding in your theme's `functions.php` you can add as many contact links as you like. [This FAQ tells you how to do this](/pages/codeage/wp-biographia/3-frequently-asked-questions/#faq14 "/pages/codeage/wp-biographia/3-frequently-asked-questions/#faq14"), with some further reading, plus working code examples, on [the plugin filters you'll need to use here](/pages/codeage/wp-biographia/5-filter-support-and-usage/ "/pages/codeage/wp-biographia/5-filter-support-and-usage/").

Click on *Save Content Settings*. That's pretty much it for WP Biographia's basic settings and options. The *Exclusions* and *Admin* tabs contain more advanced and fine grained settings.
### Advanced Settings; The Exclusions Tab


This tab allows you to control where the Biography Box is displayed, or not, with much finer control that the broad controls on the Display tab.

[![](/wp-content/uploads/2012/05/screenshot-4.jpg "v3.1 - screenshot-4")](/wp-content/uploads/2012/05/screenshot-4.jpg "/wp-content/uploads/2012/05/screenshot-4.jpg")

Firstly, the *Post*, *Page* and *Custom Post Type Exclusion Settings* allow you to stop the Biography Box being displayed on one or more single posts, for all ways in which one or more posts might be displayed, such as singly, one the front page or on an archive page and for one or more pages. To do this you'll need the Post ID or the Page ID for the posts or pages you want to restrict the Biography Box from being displayed on.

***Exclusions Gotcha:*** If you're using the default permalink structure (found from the Dashboard under *Settings -> Permalinks)*, the Post ID or Page ID is part of the URL to the post or page you're viewing, something like `/?p=123`. But if you're using a custom permalink structure such as `/2012/05/18/sample-post/` the Post or Page ID is hidden. To find the ID you need, from the Dashboard, navigate to *Posts -> All Posts* or *Pages -> All Pages*. Hover your mouse over the post or page name and then under *Edit* and you'll see the URL to edit the post or page in your browser's status bar, along the lines of `/wp-admin/post.php?post=2628&action=edit`; the Post ID (in this case) is 2628.

The *Category Exclusion Settings* allow you to stop the Biography Box being displayed on a single post or custom post by the post's category. Simply click on the category or categories you want to exclude and click on the *Add* button.

[![](/wp-content/uploads/2012/05/screenshot-5.jpg "v3.1 - screenshot-5")](/wp-content/uploads/2012/05/screenshot-5.jpg "/wp-content/uploads/2012/05/screenshot-5.jpg")

The *User Suppression Settings* allows you to stop the Biography Box being displayed on all posts and/or pages by one or more authors. Select and add the users in the same way as you do for category exclusions.

[![](/wp-content/uploads/2012/05/screenshot-6.jpg "v3.1 - screenshot-6")](/wp-content/uploads/2012/05/screenshot-6.jpg "/wp-content/uploads/2012/05/screenshot-6.jpg")

Don't forget to click on *Save Exclusion Settings* to preserve your changes.

### Advanced Settings; The Admin Tab


By default, if you add a new user/author to your blog, that author automatically has the Biography Box added to their posts and pages, subject to the other configuration settings you've enabled. The *New User Settings* allows you to automatically add newly created users to the list of excluded users which is managed on the Exclusions tab, under *User Suppression* settings. You can then choose to selectively re-enable your new users as you wish.

[![](/wp-content/uploads/2012/05/screenshot-2.jpg "v3.1 - screenshot-2")](/wp-content/uploads/2012/05/screenshot-2.jpg "/wp-content/uploads/2012/05/screenshot-2.jpg")

Also by default, WP Biographia adds two settings to each user's profile to allow the user to control whether the Biography Box is displayed for their posts and for their pages. The *User Profile* settings allows you to hide these settings from your users on a per-user basis.

[![](/wp-content/uploads/2012/05/screenshot-3.jpg "v3.1 - screenshot-3")](/wp-content/uploads/2012/05/screenshot-3.jpg "/wp-content/uploads/2012/05/screenshot-3.jpg")

Finally, the plugin uses the standard WordPress `the_content` and `the_excerpt` filters to add the Biography Box to your posts and pages, either at the start or at the end of the content. As this is a standard WordPress feature, you may find other plugins and/or themes do exactly the same thing, which means that if you have multiple additions to a post or a page via this mechanism you may not end up with the additional content in the order you want. The *Content And Excerpt Priority Settings* allows you to adjust the filter priority to get the order you really want; a lower priority means the plugin's filters will fire earlier, thus bumping them up the order in which the additional content is added, a higher priority will fire later, with the opposite effect.

So that's about it; hopefully a gentle and thorough guide to bending WP Biographia to your will. If you're still not sure about what to do, or something's not working the way you expect it, firstly [consult the plugin's FAQs](/pages/codeage/wp-biographia/3-frequently-asked-questions/ "/pages/codeage/wp-biographia/3-frequently-asked-questions/"). If this doesn't help then p[lease read this first](/2012/03/31/asking-for-wordpress-plugin-help-and-support-without-tears/ "/2012/03/31/asking-for-wordpress-plugin-help-and-support-without-tears/") and [get in touch](/pages/codeage/wp-biographia/3-frequently-asked-questions/#faq1 "/pages/codeage/wp-biographia/3-frequently-asked-questions/#faq1").


