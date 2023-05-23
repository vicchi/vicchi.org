title: Essential Windows Apps
slug: essential-windows-apps
date: 2006-02-16 13:42:57
tags: 
category: articles
link: 
description: 
type: text
has_math: no
status: published

I've already written about my choice of [essential apps on the Mac](/2006/02/10/essential-mac-apps/ "/2006/02/10/essential-mac-apps/") and so, in the spirit of cross platform-ness, I thought I'd do the same for Windows. It's proved a bit of an education. With one exception; the list of apps seems to fall into two distinct categories.

Firstly, there's those apps which are available on both Mac and Windows, so there's no surprise that both Firefox and iTunes make an appearance.

Secondly though, the remaining apps seem to be provide features which I'm used to on the Mac or on UNIX in general but which are missing from a stock Windows install.

It's probably due to my too many years of UNIX experience that I seem to automatically install apps which make Windows more UNIX like or maybe it's making Windows less Windows like?

<!-- TEASER_END -->

### Cygwin


![Cygwin](/wp-content/uploads/2006/02/cygwin-icon.gif "Cygwin")Imagine UNIX on your Windows machine. You've just imagined [Cygwin](https://www.cygwin.com "https://www.cygwin.com"). There's a Bash shell of course, with all your favourite shell tools; **less**, **sed**, **awk**, **grep** and all the rest. But there's also a full POSIX subsystem to link your apps against and there's more. There's a full X Window system; you can even run KDE under Cygwin under Windows and there's more. There's all of your Windows drives, both physical and network, mounted under **/cygdrive** and there's more. There's full UNC path support and there's more. You can even have all of your domain or Active Directory permissions in your Bash shell. What's there not to like?


### PuTTY


![PuTTY](/wp-content/uploads/2006/02/putty.jpg "PuTTY")After just extolling the virtues of Cygwin, there's one thing I don't like and that's the terminal emulation offered via Telnet and SSH. So in the spirit of choice I don't use Cygwin's I use [PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/ "https://www.chiark.greenend.org.uk/~sgtatham/putty/") and it works just fine. That's all.
### Araxis Merge


![Araxis Merge](/wp-content/uploads/2006/02/Merge.jpg "Araxis Merge")The only app in this list which isn't freely available, [Araxis Merge](https://www.araxis.com/merge/index.html "https://www.araxis.com/merge/index.html") costs money, not a massive amount of money, but money nonetheless. But for someone like myself who spends a lot of time doing file comparisons and merging, mainly as part of a revision control process, a good compare and merge app is like gold dust and Araxis is the best I've yet to come across. Shame it's Windows only but you can't have everything I guess and there's always mapped drives via Samba which allows you to use this app on Linux and the like.
### iTunes


![iTunes](/wp-content/uploads/2006/02/iTunes1.jpeg "iTunes")For the same reasons [I wrote about earlier](/2006/02/10/essential-mac-apps/ "/2006/02/10/essential-mac-apps/") I still like [iTunes](https://www.apple.com/uk/itunes/ "https://www.apple.com/uk/itunes/") but what I especially like is that iTunes enables me to easily share the contents of my music libraries all over the house. As I write this on my [iBook](/2006/02/08/my-desk/ "/2006/02/08/my-desk/") I can see iTunes running and showing the contents of a music library on a [Windows XP desktop machine upstairs](/2006/02/13/my-desk-part-2/ "/2006/02/13/my-desk-part-2/") and another on my Windows XP laptop. It all fits in nice and neatly with the Mac ethic of [*it just works*](https://www.apple.com/uk/switch/reasons/reason01.html "https://www.apple.com/uk/switch/reasons/reason01.html").

Admittedly Apple's attempt to duplicate the Aqua user interface under XP's Luna user interface doesn't always work quite as the designers probably intended but full marks for trying anyway.
### Firefox


![Firefox Icon](/wp-content/uploads/2006/02/Firefox2.jpeg "Firefox Icon")One of the complaints I hear about [Firefox](https://www.mozilla.com/firefox/ "https://www.mozilla.com/firefox/") is that it doesn't integrate natively with the operating system; this is a whinge I hear often from fellow Mac users. But personally I don't really see what the problem is. I make the Firefox installation on my iBook the master one for my browsing needs and use .Mac to backup my browser preferences including my bookmarks. Then I can use the [iDisk Utility for Windows](https://www.mac.com "https://www.mac.com"), which available to .Mac subscribers, to sync my preferences onto my Windows machines and, admittedly with a bit of effort, onto my other machines.

The end result is that I have a constent browsing experience across *all* platforms and that's got to be a good thing.
### Daemon Tools


![DAEMONTools](/wp-content/uploads/2006/02/DAEMONTools.gif "DAEMONTools")I write code for a living and one of the products of that code writing is frequently a CD image, oft referred to as an ISO, due to that being a common file extension for CD images. Before taking the time to burn the aforementioned ISO to CD I like to check that it's valid and contains exactly what I want it to contain.

On a Mac I just double-click on a CD image in the Finder or use Disk Utility to open and mount it. On Linux and other UNIX machines that support the **iso9660** file system I can mount the CD image like a hard disk or CD drive. On Windows I can ... ah. Windows doesn't recognise this file format unless I buy some rather expensive software to do this.

Unless I've installed [Daemon Tools](https://www.daemon-tools.cc "https://www.daemon-tools.cc") in which case it's rather easy.

