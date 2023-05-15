title: iPass Connect on the Mac; great service, appallingly designed app
slug: ipass-connect-on-the-mac-great-service-appallingly-designed-app
date: 2010-01-21 13:44:06
tags: berlin,design,fail,geotagged,ipass,mac,tegel,txl,usability
category: blog
link: 
description: 
type: text
has_math: no
status: published

I find myself travelling a lot for work these days and that means a roaming service for wifi hotspots and hotel internet connections really makes life simpler. I could maintain subscriptions to The Cloud, T-Mobile Hotspots, BT OpenZone and so on and so on, but fortunately Yahoo! provides me with an iPass subscription.
iPass is great; it allows me to connect to pretty much every hotspot and hotel internet service there is. I've been using it for over 4 years now and can only think of a single time when I haven't been able to get a connection. I'm using it right now, sitting in the departures lounge at Berlin's Tegel airport waiting for my flight back to London.
So far, so great, but the current, Snow Leopard supporting, version of the iPassConnect app, v3.1, seems to have been designed by someone with scant regard for anything approaching consistency and usability. Let me count the ways in which this app frustrates.

<!-- TEASER_END -->

**1. Quit iPassConnect? I see no Quit menu option.**
From the Mac OS X GUI you can't stop iPass running. The app lives in your menu bar and scans and rescans for wireless networks (which I'm sure reduces battery life) even when it's connected to a wireless network. If I'm connected to a wireless network why would I want to look for another network, all the time, constantly? There's a red and white animation going on in the menu bar which I'm sure someone thought was cute but which is incredibly distracting. But let's overlook that for a moment. To quit an app, you simply select the menu bar and select Quit or press Cmd-Q.
![](http://posterous.com/getfile/files.posterous.com/vicchi/M2rmMdozcjkEwkYuyZfwYzUXOPSK5taDUehuYiLlxUAAtRKuQTnpXTGG1jvn/iPass_Menu_Bar.jpg)
Not that I've ever been able to find the mythical Quit command for iPassConnect. The only way to kill the damn thing is from within Activity Monitor or by the killall command from the shell within Terminal.
**Simple resolution**: Let the user choose when they want to run your app and when they don't. Add a Quit command.
**2. Install as a Login Item? Every single time?**
It's a simple, plain fact that the more apps you have in your account's Login Items, the slower your login time will be. Like most people, I keep the number of Login Items down to a bare minimum and then start apps up as I need them. If I don't use something all day, every day, it's very unlikely that I want to make it a Login Item. Most apps are well behaved and ask your permission before inserting themselves as a Login Item but not iPassConnect. Run the app and hey presto you get a Login Item. Mildly annoying but at least you can remove it from your list of Login Items. Run the app again though and hey presto you get a Login Item. Each and every single time. It's frustrating the first time it happens and induces psychosis after the hundredth such occurrence.
[![](http://posterous.com/getfile/files.posterous.com/vicchi/3kWM6RqFHNXtbL1LokJ1iFX9TJN3GY7cqhUuxrMVlKnJXG5Arvwy0aHK1eMm/iPass_Login_Items.jpeg.scaled.500.jpg)](http://posterous.com/getfile/files.posterous.com/vicchi/x727aqjHxozK2oi53kzIBrnUq8dXJpUZphPe41DKMPvJdMBxhu3s6gK1JHcm/iPass_Login_Items.jpeg "http://posterous.com/getfile/files.posterous.com/vicchi/x727aqjHxozK2oi53kzIBrnUq8dXJpUZphPe41DKMPvJdMBxhu3s6gK1JHcm/iPass_Login_Items.jpeg")
This is uncontrollable, un-configurable, totally unacceptable and verging on downright insulting. It's an app designer's way of saying to the user "I don't care what your preferences are, I know better than you".
**Simple resolution**: Act in a well behaved manner, ask the user for their preference, act on it and remember it.
**3. Update? What update?**
Most apps these days have a way of calling home and checking for an update. For those apps that run within a window there's usually an Updates option in the application's menu. For those apps that don't run in a window there's usually an option in their preferences pane. Note the word *usually* and let's have a look at the iPassConnect preference pane.
[![](http://posterous.com/getfile/files.posterous.com/vicchi/Q6opD2FzlrHKHfI9enl3E7m9yeS0zSK0u26Udj0Xhk149sUnjkdd4aAGp0ah/iPass_Preferences_Updates.jpeg.scaled.500.jpg)](http://posterous.com/getfile/files.posterous.com/vicchi/5RJeKNt1NSHEwszaMtdlpKtd5hj6ODPOYNYEGkQ7Mvt4yXHsfAxTYSYrmMsd/iPass_Preferences_Updates.jpeg "http://posterous.com/getfile/files.posterous.com/vicchi/5RJeKNt1NSHEwszaMtdlpKtd5hj6ODPOYNYEGkQ7Mvt4yXHsfAxTYSYrmMsd/iPass_Preferences_Updates.jpeg")
There's an Updates tab which is a good start. There's an Enable automatic updates option which is also a good thing. But it only controls the hotspot dictionary that the app maintains. Want to update the app or know whether there's an update available? Not with this app (and the iPass website is remarkably update free as well).
**Simple resolution:** Add an update option and ask the user if they want to check for updates.
**4. Snow Leopard support. In 32-bits.**
Snow Leopard continues Apple's march towards a pure 64-bit operating system. A cursory glance at Activity Monitor shows that most apps running are Intel (64-bit) and this includes the System Preferences app. So let's try to set some preferences for iPassConnect.
[![](http://posterous.com/getfile/files.posterous.com/vicchi/VQRB5T7HxXXQ6owrN8R26yziLgFfXD96qkdbcOUNNROlDLUxIHBg0uqCfJoO/iPass_Preferences.jpeg.scaled.500.jpg)](http://posterous.com/getfile/files.posterous.com/vicchi/GHVwLgXt4APm1eglxRMNOr5d101L2vNOC9HJLPgyHdv3WcYzk6lC6Ow9i1lP/iPass_Preferences.jpeg "http://posterous.com/getfile/files.posterous.com/vicchi/GHVwLgXt4APm1eglxRMNOr5d101L2vNOC9HJLPgyHdv3WcYzk6lC6Ow9i1lP/iPass_Preferences.jpeg")
Ah yes, the iPassConnect preferences pane is 32-bit which means that you have to restart System Preferences in 32-bit mode and there it stays, running in 32-bit mode, until you manually restart System Preferences in the default 64-bit mode.
**Simple resolution**: If you say your app has Snow Leopard support then fully support Snow Leopard. That means 64-bitness across the board.
iPass is a great service, it deserves a great app; version 3.1 is not that app.
Written and posted from Berlin Tegel Airport (52.5545447, 13.2899969)
[Posted via email](http://posterous.com "http://posterous.com") from [Gary's Posterous](http://vicchi.posterous.com/ipass-connect-on-the-mac-great-service-appall "http://vicchi.posterous.com/ipass-connect-on-the-mac-great-service-appall")




