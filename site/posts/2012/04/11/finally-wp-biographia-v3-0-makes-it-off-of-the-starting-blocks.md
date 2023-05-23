title: Finally WP Biographia v3.0 Makes It Off Of The Starting Blocks
slug: finally-wp-biographia-v3-0-makes-it-off-of-the-starting-blocks
date: 2012-04-11 17:59:52
tags: geotagged,london,plugin,wordpress,wp-biographia
category: blog
link: 
description: 
type: text
has_math: no
status: published
geo_place: home
geo_lng: -0.333344
geo_lat: 51.427051

It's taken a while but I just did this ...

```bash
$ rsync --recursive --verbose --exclude '.git' \* ~/Projects/svn/wp-biographia/trunk/
$ svn up
$ svn stat
$ svn ci -m 'Updating with v3.0 changes from master on github'
$ svn cp trunk tags/3.0
$ svn ci -m 'Tagging v3.0'
```

... and after much coding, rewriting, testing and documenting, [v3.0 of WP Biographia](https://wordpress.org/extend/plugins/wp-biographia/ "https://wordpress.org/extend/plugins/wp-biographia/") has finally made it off of the starting blocks.

<!-- TEASER_END -->

[![](/wp-content/uploads/2012/04/4976494944_29f8defb4a.jpg "Off The Starting Blocks ...")](https://www.flickr.com/photos/53370644@N06/4976494944/in/photostream/ "https://www.flickr.com/photos/53370644@N06/4976494944/in/photostream/")

As per usual, you can read the change log [here](https://wordpress.org/extend/plugins/wp-biographia/changelog/ "https://wordpress.org/extend/plugins/wp-biographia/changelog/"), grab the source [here](https://github.com/vicchi/wp-biographia "https://github.com/vicchi/wp-biographia"), or download it [here](/pages/codeage/wp-biographia/ "/pages/codeage/wp-biographia/").

But what I really want to say, right here, is what you'll find in the *Acknowledgements* side bar after you've installed the latest version.



> The fact that you're reading this wouldn't have been possible without the help, bug fixing, beta testing, gentle prodding and overall general warmth and continued support of [Travis Smith](https://twitter.com/#!/wp_smith "https://twitter.com/#!/wp_smith") and [Bruce Munson](https://twitter.com/#!/webendev "https://twitter.com/#!/webendev"). Travis and Bruce ... you're awesome. Thank you.


Photo Credits: [tableatny](https://www.flickr.com/photos/53370644@N06/4976494944/in/photostream/ "https://www.flickr.com/photos/53370644@N06/4976494944/in/photostream/") on Flickr.


