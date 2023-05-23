title: iPod and Windows - Eventually
slug: ipod-and-windows-eventually
date: 2005-02-25 18:40:00
tags: 
category: articles
link: 
description: 
type: text
has_math: no
status: published

I recently got my hands on a 3rd generation 15 Gb iPod, thanks to my wife buying me one as a birthday present. Not having access to a Mac (*at the time; this has all changed since I wrote this post originally*) meant it would have to be connected to a Windows box, which hasn't been an easy path to follow.

I wanted to try out the iTunes Music Store (iTMS), which meant installing and managing the iPod through iTunes, which is only available for the Mac or for Windows, which meant I was restricted on my choice of hardware, most of which runs some form of Linux or BSD distribution.

As far as Windows machines were concerned I had a choice of either a desktop machine, a Dell Dimension 8200, running Windows XP Professional SP1, with a 2.2 GHz Intel Pentium 4 processor and 512 Mb of RAM or a laptop, a Dell Latitude D600, running Windows XP Professional SP1, with a 1.6 Mhz Intel Pentium processor and 512 Mb of RAM.

<!-- TEASER_END -->

Neither of these machines have a FireWire card installed and of the two, only the laptop has USB 2.0 support, which struck me as odd since both machines are roughly the same age.


Slightly Off Topic Meandering
-----------------------------


I've often wondered at Apple's choice of supported OS for iTunes; seeing as the original version of iTunes was developed on OS X, which underneath the Aqua GUI is a BSD system, surely it would have been just as easy to port iTunes to Linux as it would have been to port to Windows?
Standard Caveat
---------------


I'm no Windows expert; indeed I spend almost all of my time using some version of UNIX. With this in mind, what I've documented here worked for me, and I came out of it reasonably unscathed, both mentally, in hardware and in software.  [YMMV.](https://www.catb.org/%7Eesr/jargon/html/Y/YMMV.html "https://www.catb.org/%7Eesr/jargon/html/Y/YMMV.html")
Installing iTunes and the iPod
------------------------------


Following the iPod instructions I installed iTunes and the iPod System Software from CD which came with the iPod; this contained iTunes version 4.1 and iPod System Software version 2.1. One reboot later and I was ready to hook the iPod up to the laptop for the first time.

I'd been charging the iPod through the Apple iPod Dock Connector cable which contained both FireWire and USB 2.0 adaptors, so I plugged the USB cable into the laptop and waited.

The installer recognised the iPod and I went through the process of registering the iPod and configuring it for Windows, which seemed to be reformatting the iPod's hard drive as a FAT32 drive rather than the default OS X HFS drive. After the installation/reformat iTunes started and my iPod was visible in the iTunes source list.

I dragged one album's worth of MP3 tracks onto the iPod source and watched as the files were copied across. So far so good. The update completed, I ejected the iPod and, once it told me that it was "safe" to disconnect, unplugged the iPod.

After a quick test of the iPod's controls, *Reverence* by *Faithless*, appeared through the headphones in all of it's glory. Now to fill up the rest of the capacity of the iPod.
Reconnection Woes
-----------------


So I reconnected the iPod and this was where my problems started. The first time, the iPod wasn't recognised at all, either in iTunes or as a Windows drive. The next time, it was but I couldn't access the contents of the iPod through iTunes.

Again following the troubleshooting section of the manual, I reformatted the iPod and tried again; this time with even less luck as the iPod wasn't recognised by Windows or by iTunes.

Checking on Apple's [web site](https://www.apple.com/uk/ipod/download/ "https://www.apple.com/uk/ipod/download/") I found there were updated versions of iTunes, version 4.6, and the iPod system software, Update 2004-04-28. I downloaded these and installed them. I also checked, both via Windows Udpdate and via Device Manager that I had the latest USB drivers.

As it turns out, I would have needed the update to iTunes anyway as the version supplied with the iPod wasn't compatible with the current version of iTMS.

The updates sort of worked, sometimes, but by no means all the time. I've lost track of the number of times I reformatted the iPod, reinstalled iTunes and reinstalled the iPod system software.

There didn't appear to be a consistent pattern to the problems. Sometimes it worked fine, sometimes it didn't, sometimes the iPod was recognised in iTunes, sometimes the iPod was recognised by Windows. Most of the time it wasn't.

I googled for a solution, searched Apple's [support site](https://www.apple.com/uk/support/itunes/windows/ "https://www.apple.com/uk/support/itunes/windows/") and the forums at [ipodlounge](https://www.ipodlounge.com/ "https://www.ipodlounge.com/"). People had definately had problems with the iPod under Windows but there was nothing that I could see that described the exact, erratic, symptoms that I was experiencing.

Frustrated, I decided to take a break. With the iPod still connected I fired up my VPN connection to work and started up OutLook and suddenly the penny started to drop.
A Moment of Clarity
-------------------


OutLook started fine and connected to my company's Exchange server but then complained that it couldn't find my Personal Folders, which are stored in **F:\Outlook**.

On my laptop, the Windows drive mappings are pretty much bog standard; drives **C:** and **D:** are the two partitions on the hard drive and drive **E:** is the CD ROM. My network drive mappings start at **F:** and go upwards. I've got a total of 16 network drives mapped to various Windows and UNIX servers, both at home and at work.

I fired up Windows Explorer to see what was happening and found that drive **F:** was there but it most definately didn't contain the folders I was expecting to see. Instead it was the contents of my iPod as a USB drive.

I ejected and disconnected the iPod and attempted to remove the network **F:** drive, which of course, Windows wouldn't allow me to do. With the iPod still disconnected, I rebooted and disconnected drive **F:** and then reattached the iPod, which appeared in Explorer as drive **F:** and in iTunes.

Using Windows device manager, I changed the drive letter mapping for the iPod to an unused drive, in this case **Z:**, disconnected the iPod, remapped drive **F:** to its' original setting, crossed my fingers, rebooted and reconnected the iPod.

Everything worked as it should. My conclusion to all of this is that either the iPod or the Windows USB drivers take the first available, physical drive letter, and assign that to the iPod, regardless of whether the drive is in use as a network drive or not and that it was the contention between the iPod/USB drivers and my mapped network drive that was giving me all the problems I'd been experiencing.

All of this was just under a week ago and since then I've had no problems at all. Not having seen an iPod connected via FireWire I can't comment on the transfer speed over FireWire but over a USB 2.0 link it's more than acceptable for my use.

