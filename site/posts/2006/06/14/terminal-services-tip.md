title: Windows Terminal Services Tip
slug: terminal-services-tip
date: 2006-06-14 13:51:55
tags: 
category: blog
link: 
description: 
type: text
has_math: no
status: published

On Windows, if you use this command line to start a Terminal Services session

<!-- TEASER_END -->


```
mstsc -v:<server name> -f -console
```

you'll end up connected to the console session on the target machine regardless of which Windows version it's running.

Very useful if you're wanting to connect to a Windows 2xxx Server which normally *always* connects you to a known session.

With the obligatory thumbs up to Rich for educating me on this topic.

