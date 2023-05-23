title: Mounting Network Volumes With AppleScript
slug: mounting-network-volumes-with-applescript
date: 2006-07-13 18:28:23
tags: 
category: articles
link: 
description: 
type: text
has_math: no
status: published

One of my standard lunchtime reading web sites started me off on this; [The Unofficial Apple Weblog](https://www.tuaw.com/2006/07/11/switching-causes-argh/ "https://www.tuaw.com/2006/07/11/switching-causes-argh/") got me reading an article on PC Magazine's site about [Argh! moments](https://www.pcmag.com/article2/0,1895,1986689,00.asp "https://www.pcmag.com/article2/0,1895,1986689,00.asp"). That sort of moment when you try to do something really simple on OS X but find it isn't. In this case, Robyn Peterson's struggle to mount a network volume on login struck a chord. I'd gone down a similar route and come up with an alias to a network volume in my login items, a solution which seems to be well documented after a quick [Google search](https://www.google.com/search?hl=en&q=apple+mac+mount+network+volume+on+login "https://www.google.com/search?hl=en&q=apple+mac+mount+network+volume+on+login").

<!-- TEASER_END -->

But this wasn't quite enough for me; my main Mac is an iBook and that means I access network volumes at home and at work so automatic reconnection to a non existant volume at home when I connect my iBook to my employer's corporate LAN wasn't really a solution. But from Robyn's article I decided to take the plunge and write my first AppleScript.

Maybe write is too strong a word; I found the script I needed almost verbatim on the [MacFixIt forums](https://www.macfixitforums.com/php/showflat.php?Board=tiger&Number=730956 "https://www.macfixitforums.com/php/showflat.php?Board=tiger&Number=730956"). All I needed to do was modify it to my own ends.

Firstly I needed Apple's Script Editor, which lives in **/Applications/AppleScript**; then I was able to enter the following script.



```
tell application "Finder"
open location "smb://user:password@server/share"
end tell
```

A few words of explanation. Firstly the names have been changed to protect the innocent so I'm not using a real user name, server name or share name and I'm most definately *not* using a real password. Secondly the network volume I'm connecting to is on a machine running Fedora Core and which is made available to the network using Samba, hence the **smb:** part of the URI.

I then saved the script somewhere meaningful; I keep a directory called **Scripts** which unsurprisingly contains scripts so that seemed as good a place as any. I also made sure that when saving the script I saved it as an application and not a script to prevent me being prompted whether I wanted the script to run each time I ran it, as well as ensuring that the *Run Only*, *Startup Screen* and *Stay Open* check boxes were deselected.

Then it was a simple matter to run the script either from a Finder window or via Spotlight and my network volume mounted and was available.

