title: Improving Mac Office 2008 Startup Times
slug: improving-mac-office-2008-startup-times
date: 2009-04-03 13:50:57
tags: mac office 2008 fonts
category: articles
link: 
description: 
type: text
has_math: no
status: published

Ever since my MacBook Pro was upgraded to Mac Office 2008 I'd had appallingly slow app start up times, with hangs and delays of over 3 minutes being pretty much the order of the day.

After some determined surfing this I've managed to dramatically improve my startup times to around 15 seconds by applying a combination of hints and tips.

With the standard disclaimers of YMMV, here be dragons and so on ...

<!-- TEASER_END -->

1. In PowerPoint go to Preferences -> General and deselect "Show Project Gallery at Startup"

2. In Excel go to Preferences -> General and deselect "Open Project Gallery when application opens"

3. In Word go to Preferences -> General and deselect "Show Project Gallery at Startup" and "WYSIWYG font and style menus"

4. In Entourage go to Preferences -> General and deselect "WYSIWYG font menu"

5. Quit any running Office 2008 apps

6. Remove any folders called either "Fonts Disabled" or "Microsoft" from /Library/Fonts and from ~/Library/Fonts; either drag them to the Desktop or into Trash to verify this has no adverse effect before deleting them permanently.

7. Restart your Office apps. I found that the increase in speed was the best for Entourage and Excel, with PowerPoint occupying the mid-group and Word being the slowest. Despite this the startup time for Word is still increased by around 2 and a half minutes.





