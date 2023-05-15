title: Running Shell Scripts With AppleScript
slug: running-shell-scripts-with-applescript
date: 2006-07-19 10:01:10
tags: 
category: articles
link: 
description: 
type: text
has_math: no
status: published

While I was [playing with AppleScript earlier this week](/2006/07/13/mounting-network-volumes-with-applescript/ "/2006/07/13/mounting-network-volumes-with-applescript/") I wanted to run a shell script I'd written from within Finder rather than from a shell prompt in **Terminal.app**.


On Windows I tend to write scripts to run under [Cygwin](http://www.cygwin.com "http://www.cygwin.com") and then write a wrapper batch file to run the script under the control of Cygwin's **bash** executable.

Turns out the AppleScript solution is identical in principal and is as simple as



```
do shell script "/full/path/to/shell/script"
```

You may need to adjust the path to the script dependent upon whether the directory where your script resides is in your **$PATH** or not.

