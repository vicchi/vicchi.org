title: Of Geo-tagging, CSS And Global Search & Replace In WordPress
slug: of-geo-tagging-css-and-global-search-replace-in-wordpress
date: 2010-10-05 15:48:18
tags: 
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: the Nokia gate5 office in Berlin
geo_lng: 13.38521
geo_lat: 52.53105

In a way it was [Tom Woolway](https://twitter.com/tomwoolway/ "https://twitter.com/tomwoolway/")'s fault, although fault's too strong a word; let's just say he seeded the thought. You might have noticed, or even cared that I put a rudimentary geotag in the footer of my posts. Tom noticed and was kind enough to Tweet about this.

[![Tom Woolway Tweet](/wp-content/uploads/2010/10/TomWoolwayTweet.jpg "Tom Woolway Tweet")](https://twitter.com/tomwoolway/status/22637627489 "https://twitter.com/tomwoolway/status/22637627489")

Some people have assumed that there's a whiz-bang WordPress plugin that automagically does this for me but the truth is a lot more pedestrian than that. It's a simple bit of HTML and CSS that looks like this in each post:

<!-- TEASER_END -->


```
<div id="geo">
Written and posted from the Crowne Plaza Hotel,
San Jose, California (37.330123, -121.891079)
</div>
```

And like this in my style.css file for my WordPress theme:

```
#geo { font-size: 12px; }
```

With all the geolocation and reverse geocoding being done the old fashioned way ... by hand.

It would be nice if there was a WordPress plugin that does just that and the [WP-Geo](https://wordpress.org/extend/plugins/wp-geo/ "https://wordpress.org/extend/plugins/wp-geo/") [plugin](https://wordpress.org/extend/plugins/wp-geo/ "https://wordpress.org/extend/plugins/wp-geo/") does all that I'd want, plus a whole lot more. But there's one slight problem and that is that it's entirely based on the Google Maps API. Now there's nothing wrong with this API; it's well written, well documented and it just works. But given that Nokia pays my salary each month it would probably be considered less than politic to advertise Google Maps all over my blog.

The engineer in me cries out to either hack the WP-Geo plugin code or write my own. The realist in me quietly points out that I don't really have the time and my PHP and JavaScript aren't that good but that they're better than my knowledge of how to write a WordPress plugin.

So for now the geocoding status quo remains ... except for a rudimentary schoolboy CSS error I noticed. You should use the id selector in CSS only when there's a single instance on a page. For my blog's landing page there's 10 of them, one per post. I should have used the class selector instead, which means changing every geotagged post from using ...

```
<div id="geo">
```

... to using ...

```
<div class="geo">
```

I could have manually edited every single post to change the markup but that would have been time consuming to say the least. If the posts had been in text files, I could have used sed to perform a global search and replace from the shell, but the posts are in the MySQL database which drives WordPress, which drives me blog.

Luckily I remembered that you can do a global search and replace within SQL and a quick bit of digging around in my database schema showed me that all my blog posts live in a fields call post\_content in a table called wp\_posts, which meant I was able to issue the following command from within my database admin tool to do the trick.

```
UPDATE wp_posts SET post_content = REPLACE (
post_content,
'<div id="geo">',
'<div class="geo">');
```

After backing up my database beforehand. Just in case.


