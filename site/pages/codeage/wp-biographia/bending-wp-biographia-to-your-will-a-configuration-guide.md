title: Bending WP Biographia To Your Will; A Configuration Guide
slug: bending-wp-biographia-to-your-will-a-configuration-guide
date: 2012-07-17 11:35:31
tags: 
category: 
link: 
description: 
type: text
categories: 
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

<p>WP Biographia has grown and matured quite a bit since it was first released. A quick glance through the <a href="https://github.com/vicchi/wp-biographia" target="_blank">multiple releases of the code</a> that make up the plugin tells me that in v1.0, the plugin was 761 lines of PHP code and 46 lines of CSS. Now in v3.1, that's increased to 2944 lines of PHP, 92 lines of JavaScript and 174 lines of CSS.

But more importantly, as the plugin has grown and changed and more and more features have been added, so have the number of configuration settings, from 22 in v1.0 to 43 in v3.1. While most people seem to use the plugin out of the box, with little or no customisation, if you do want to take full advantage of all that the plugin has to offer, this means you need to roll up your sleeves and trawl through all of the plugin's settings, which can be a daunting task at times.

with this in mind, assuming you've <a href="/pages/codeage/wp-biographia/1-installation/" target="_blank">installed and activated the plugin</a>, here's a step by step and screen by screen guide to bending WP Biographia to your will.
</p><ul>
	<li><a href="#biography-setup">Setting Up Your Biography</a></li>
	<li><a href="#avatar-setup">Setting Up Your Author's Picture</a></li>
	<li><a href="#display-tab">Basic Settings; The Display Tab</a></li>
	<li><a href="#style-tab">Basic Settings; The Style Tab</a></li>
	<li><a href="#content-tab">Basic Settings; The Content Tab</a></li>
	<li><a href="#exclusions-tab">Advanced Settings; The Exclusions Tab</a></li>
	<li><a href="#admin-tab">Advanced Settings; The Admin Tab</a></li>
</ul>
<h3><a name="biography-setup"></a>Setting Up Your Biography</h3>
Firstly, set your biography details up. From the Dashboard, navigate to <em>Users -&gt; Your Profile</em>. Under <em>Name</em>, fill in your First Name, Last Name and Nickname and choose how you want your name to be displayed publicly (you can't change your username by the way).

Now add your <em>Contact Info</em>. WP Biographia adds fields for Twitter, Facebook, LinkedIn, Google+, Delicious, Flickr, Picasa, Vimeo, YouTube and Reddit to the contact info that WordPress provides out of the box. For each piece of contact information you want displayed in the Biography Box, add the corresponding URL.

<em><strong>Contact Info Gotcha:</strong></em> It's important to note that you need to enter the full URL to your profile for each social media site. For example, for Twitter you'll need to add <code>http://twitter.com/user</code>, not just <code>@user</code>.

Now add your biography text to the <em>Biographical Info</em> field under <em>About Yourself</em>.

<em><strong>Biography Gotcha:</strong></em> By default, WordPress restricts the HTML tags you can enter in this box to filter out potentially harmful and/or invalid tags (see <code>$allowedtags</code> in <code>/wp-includes/kses.php</code> for the current list). The most common additional HTML tag that people ask for is the line break tag. You can allow WordPress to accept this tag with <a href="/pages/codeage/wp-biographia/3-frequently-asked-questions/#faq9" target="_blank">a small amount of PHP</a> added to your theme's <code>functions.php</code> file ().

Finally, click on <em>Update Profile</em> to save all your changes.
<h3><a name="avatar-setup"></a>Setting Up Your Author's Picture</h3>
Next, set up your author picture, or avatar. By default, WordPress uses Gravatars, short for Globally Recognised Avatars, to display author pictures. Head over to the <a href="http://en.gravatar.com" target="_blank">Gravatar site</a>, sign up for an account and upload your author picture.

<em><strong>Avatar Gotcha:</strong></em> One important gotcha you need to know is that the link between your user profile on your WordPress blog and your author's picture on the Gravatar site is your email address, so when you sign up you need to ensure you use the same email address as is listed in your user profile on your blog.

<em><strong>Avatar Gotcha:</strong></em> If for some reason you don't want to use or sign up for a Gravatar, there are other WordPress plugins that can help you upload author pictures to your blog. The key thing is that the plugin you use has to be able to work with author pictures in the same way as WordPress does, otherwise WP Biographia won't be able to display them in the Biography Box. See <a href="/pages/codeage/wp-biographia/3-frequently-asked-questions/#faq4" target="_blank">this FAQ for more information</a> on this.

Once you've done this, head back to your blog's Dashboard and navigate to <em>Settings -&gt; Discussion</em> and under <em>Avatars</em> make sure that <em>Show Avatars</em> is checked under <em>Avatar Display</em>. Make sure you click on <em>Save Changes</em>.
<h3><a name="settings-options"></a>WP Biographia Settings And Options</h3>
Now it's time to make WP Biographia do what you want it to do. From the Dashboard navigate to <em>Settings -&gt; WP Biographia</em>. You'll see that there are 7 tabs of settings and options. The <em>Display</em> tab should be the first one that's shown so let's start there.

<h3><a name="display-tab"></a>Basic Settings; The Display Tab</h3>
This tab has broad settings to control how the WP Biographia Biography Box is displayed and where. You can choose one or all of displaying on your blog's front page, on individual posts, on post archives, on individual pages and in your blog's RSS feed. You can also choose whether to display the Biography Box before or after the content of a post, a page, an archive or the RSS feed. If your blog has custom post types, perhaps provided by your theme, you'll also see the option to control display of the Biography Box here.

href="/wp-content/uploads/2012/05/screenshot-1.jpg"><img src="/wp-content/uploads/2012/05/screenshot-1.jpg" alt="" title="v3.1 - screenshot-1" width="916" height="569" class="aligncenter size-full wp-image-2667"></a>

<em><strong>Display Gotcha:</strong></em> If you choose to display the Biography Box on post archives, this will do so for all archive types, be that tag archives, author archives, category archives, date archives or so on. If you want to restrict the display to a particular type of archive, you'll need to <a href="http://codex.wordpress.org/Conditional_Tags" target="_blank">add some conditional tags to your theme's template files</a>.

Click on <em>Save Display Settings</em> before moving onto the <em>Style</em> tab.

<h3><a name="style-tab"></a>Basic Settings; The Style Tab</h3>
This tab controls how the Biography Box is styled, its background colour and what sort of border, if any, is drawn around the Biography Box. You can enter the background colour as an <a href="http://html-color-codes.info/" target="_blank">HTML colour code</a> or use the built-in colour picker tool.

href="/wp-content/uploads/2012/05/screenshot-7.jpg"><img src="/wp-content/uploads/2012/05/screenshot-7.jpg" alt="" title="v3.1 - screenshot-7" width="916" height="428" class="aligncenter size-full wp-image-2673"></a>

<em><strong>Style Gotcha:</strong></em> The Style tab provides only a basic set of styling options. If you want more fine grained control, or if your theme's style is interfering with the way in which the Biography Box looks, you'll need to know how to control this via CSS and how to add extra CSS to your blog. <a href="/2012/04/05/hacking-wp-biographias-appearance-with-css/" target="_blank">This article should tell you how to do this</a>.

Click on <em>Save Style Settings</em> before moving onto the <em>Content</em> tab.

<h3><a name="content-tab"></a>Basic Settings; The Content Tab</h3>
This tab controls what information is and what isn't displayed in the Biography Box. You can choose to override the prefix, the text that's display before the author's name, how the author's name is displayed, whether the author's picture is displayed, whether the author's biography is displayed and whether to show the author's profile's contact links as text or as icons.

href="/wp-content/uploads/2012/05/screenshot-8.jpg"><img src="/wp-content/uploads/2012/05/screenshot-8.jpg" alt="" title="v3.1 - screenshot-8" width="916" height="752" class="aligncenter size-full wp-image-2674"></a>

<em><strong>Content Gotcha:</strong></em> To ensure that a contact link is displayed in the Biography Box, you'll need to ensure that it's not only enabled in the Content tab but also that there's a valid URL in the corresponding contact information field in your profile. If you do the former but not the latter, the Biography Box won't know to display the link. If you do the latter but not the former, the plugin isn't clever enough to know what the link needs to be without you telling it.

href="/wp-content/uploads/2012/05/screenshot-9.jpg"><img src="/wp-content/uploads/2012/05/screenshot-9.jpg" alt="" title="v3.1 - screenshot-9" width="916" height="718" class="aligncenter size-full wp-image-2675"></a>

<em><strong>Content Gotcha:</strong></em> WP Biographia supports 12 different contact/social media links, but to keep the settings and options under control, that number won't be growing anytime soon. But what if you want to display a link to one of the ever growing number of social media sites that isn't supported natively by the plugin? With a little bit of PHP coding in your theme's <code>functions.php</code> you can add as many contact links as you like. <a href="/pages/codeage/wp-biographia/3-frequently-asked-questions/#faq14" target="_blank">This FAQ tells you how to do this</a>, with some further reading, plus working code examples, on <a href="/pages/codeage/wp-biographia/5-filter-support-and-usage/" target="_blank">the plugin filters you'll need to use here</a>.

Click on <em>Save Content Settings</em>. That's pretty much it for WP Biographia's basic settings and options. The <em>Exclusions</em> and <em>Admin</em> tabs contain more advanced and fine grained settings.
<h3><a name="exclusions-tab"></a>Advanced Settings; The Exclusions Tab</h3>
This tab allows you to control where the Biography Box is displayed, or not, with much finer control that the broad controls on the Display tab.

href="/wp-content/uploads/2012/05/screenshot-4.jpg"><img src="/wp-content/uploads/2012/05/screenshot-4.jpg" alt="" title="v3.1 - screenshot-4" width="916" height="466" class="aligncenter size-full wp-image-2670"></a>

Firstly, the <em>Post</em>, <em>Page</em> and <em>Custom Post Type Exclusion Settings</em> allow you to stop the Biography Box being displayed on one or more single posts, for all ways in which one or more posts might be displayed, such as singly, one the front page or on an archive page and for one or more pages. To do this you'll need the Post ID or the Page ID for the posts or pages you want to restrict the Biography Box from being displayed on.

<em><strong>Exclusions Gotcha:</strong></em> If you're using the default permalink structure (found from the Dashboard under <em>Settings -&gt; Permalinks)</em>, the Post ID or Page ID is part of the URL to the post or page you're viewing, something like <code>/?p=123</code>. But if you're using a custom permalink structure such as <code>/2012/05/18/sample-post/</code> the Post or Page ID is hidden. To find the ID you need, from the Dashboard, navigate to <em>Posts -&gt; All Posts</em> or <em>Pages -&gt; All Pages</em>. Hover your mouse over the post or page name and then under <em>Edit</em> and you'll see the URL to edit the post or page in your browser's status bar, along the lines of <code>/wp-admin/post.php?post=2628&amp;action=edit</code>; the Post ID (in this case) is 2628.

The <em>Category Exclusion Settings</em> allow you to stop the Biography Box being displayed on a single post or custom post by the post's category. Simply click on the category or categories you want to exclude and click on the <em>Add</em> button.

href="/wp-content/uploads/2012/05/screenshot-5.jpg"><img src="/wp-content/uploads/2012/05/screenshot-5.jpg" alt="" title="v3.1 - screenshot-5" width="916" height="329" class="aligncenter size-full wp-image-2671"></a>

The <em>User Suppression Settings</em> allows you to stop the Biography Box being displayed on all posts and/or pages by one or more authors. Select and add the users in the same way as you do for category exclusions.

href="/wp-content/uploads/2012/05/screenshot-6.jpg"><img src="/wp-content/uploads/2012/05/screenshot-6.jpg" alt="" title="v3.1 - screenshot-6" width="916" height="625" class="aligncenter size-full wp-image-2672"></a>

Don't forget to click on <em>Save Exclusion Settings</em> to preserve your changes.

<h3><a name="admin-tab"></a>Advanced Settings; The Admin Tab</h3>
default, if you add a new user/author to your blog, that author automatically has the Biography Box added to their posts and pages, subject to the other configuration settings you've enabled. The <em>New User Settings</em> allows you to automatically add newly created users to the list of excluded users which is managed on the Exclusions tab, under <em>User Suppression</em> settings. You can then choose to selectively re-enable your new users as you wish.

href="/wp-content/uploads/2012/05/screenshot-2.jpg"><img src="/wp-content/uploads/2012/05/screenshot-2.jpg" alt="" title="v3.1 - screenshot-2" width="913" height="747" class="aligncenter size-full wp-image-2668"></a>

Also by default, WP Biographia adds two settings to each user's profile to allow the user to control whether the Biography Box is displayed for their posts and for their pages. The <em>User Profile</em> settings allows you to hide these settings from your users on a per-user basis.

href="/wp-content/uploads/2012/05/screenshot-3.jpg"><img src="/wp-content/uploads/2012/05/screenshot-3.jpg" alt="" title="v3.1 - screenshot-3" width="913" height="409" class="aligncenter size-full wp-image-2669"></a>

Finally, the plugin uses the standard WordPress <code>the_content</code> and <code>the_excerpt</code> filters to add the Biography Box to your posts and pages, either at the start or at the end of the content. As this is a standard WordPress feature, you may find other plugins and/or themes do exactly the same thing, which means that if you have multiple additions to a post or a page via this mechanism you may not end up with the additional content in the order you want. The <em>Content And Excerpt Priority Settings</em> allows you to adjust the filter priority to get the order you really want; a lower priority means the plugin's filters will fire earlier, thus bumping them up the order in which the additional content is added, a higher priority will fire later, with the opposite effect.

that's about it; hopefully a gentle and thorough guide to bending WP Biographia to your will. If you're still not sure about what to do, or something's not working the way you expect it, firstly <a href="/pages/codeage/wp-biographia/3-frequently-asked-questions/" target="_blank">consult the plugin's FAQs</a>. If this doesn't help then p<a href="/2012/03/31/asking-for-wordpress-plugin-help-and-support-without-tears/" target="_blank">lease read this first</a> and <a href="/pages/codeage/wp-biographia/3-frequently-asked-questions/#faq1" target="_blank">get in touch</a>.

