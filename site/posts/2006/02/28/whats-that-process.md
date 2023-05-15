title: What’s That Process?
slug: whats-that-process
date: 2006-02-28 09:43:00
tags: 
category: articles
link: 
description: 
type: text
has_math: no
status: published

When I'm working on a Windows machine I like to keep *Task Manager* running minimised in my task bar so I've got immediate visual feedback on how hard my system's working. That way, when I think my system's not running as fast as it should be I can immediately see if the system's maxed out at 100% CPU usage.

<!-- TEASER_END -->

When this happens, which is a fairly common occurence, Task Manager's *Processes tab* will normally point a finger at the culprit process, which is all well and good if I see a process like **firefox.exe** soaking up all the resources it can but if the process name isn't as intuitive how can you tell if this process needs to be killed or restarted?

Whilst a Google search is always worthwhile, a combination of [What Process?](http://www.what-process.com/ "What Process?") and Greatis' [Startup Programs Database](http://greatis.com/appdata/ "Application Database") have proved indispensible in the past. Whilst What Process? can be as apocryphal as the Wikipedia the combination of the two sites have yet to fail me.

As a nice side effect, checking all of your running processes against the Startup Programs Database can dramatically increase the startup speed of your Windows machine. For example, if you've got a version of Java installed, then you've probably got a copy of [**jusched.exe**](http://www.greatis.com/appdata/a/j/jusched.exe.htm "http://www.greatis.com/appdata/a/j/jusched.exe.htm") running to check for updates; if you'd prefer to check manually then this process can be prevented from starting at boot time without any problem.



