title: Clearing Your Outlook Forms Cache
slug: clearing-your-outlook-forms-cache
date: 2006-03-27 16:00:01
tags: 
category: articles
link: 
description: 
type: text
has_math: no
status: published

You're working in Outlook, minding your own business and someone sends you a meeting request; you check your schedule, you're free at the given date and time so you click on *Accept* only to see this:

![The form required to view this message cannot be displayed. Contact your administrator.](/wp-content/uploads/2006/03/MicrosoftOfficeOutlook.png)

Restarting Outlook doesn't help, nor does rebooting your machine; you've fallen victim to a *corrupted forms cache*. But don't fret, there's a straightforward, if not entirely intuitive, way of clearing the cache.

Standard disclaimer: YYMV, this worked for me, using Outlook 2003 on XP Professional Service Pack 2, it might work for you, it might not.

<!-- TEASER_END -->

From the *Tools* menu, select *Options* and click on the *Other* tab.

![Outlook Options Dialog](/wp-content/uploads/2006/03/OptionsOther.png)

Click on *Advanced Options*, which is in the *General* section of the dialog.

![Advanced Options Dialog](/wp-content/uploads/2006/03/AdvancedOptions1.png)
Now click on *Custom Forms*.

![Options Dialog](/wp-content/uploads/2006/03/Options.png)

Keep going, we're getting somewhere with all of this so click on *Manage Forms*.

![Forms Manager Dialog](/wp-content/uploads/2006/03/FormsManager.png)

And finally, click on *Clear Cache*. There's no visual feedback, no indication that Outlook has done anything at all. Click on *Close*, *OK*, *OK* and *OK* to close all of the dialogs. Now if you now try to reopen your original meeting request you might glance a dialog flashing on your monitor which informed you that the form was being reloaded, but then again, you might have blinked and missed it. But either way, all should be well again.



