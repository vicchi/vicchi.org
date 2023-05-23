title: Windows RDP and the Network Swiss Army Knife
slug: windows-rdp-and-the-network-swiss-army-knife
date: 2006-02-07 22:04:56
tags: 
category: articles
link: 
description: 
type: text
has_math: no
status: published

Consider the following scenario for a moment; you have a home network, hooked up to a broadband connection. You've done your homework and have a firewall with little or no inbound access. You're like thousands of other people and have a Windows PC running XP Home or XP Professional. You'd like to be able to get at your Windows PC when you're at work but you don't want to let all of those script kiddies at your network, and besides you've heard bad things about letting a Windows PC loose on the internet.

Enter the swiss army knife of the network; SSH. That's the Secure SHell, not a polite request to shut up. Here's what to do ...

<!-- TEASER_END -->

Check that Remote Desktop is enabled on your XP machine at home. To do this right click on *My Computer* and select *Properties.*
![Windows XP Properties Page; General Tab](/wp-content/uploads/2006/02/General.jpg "Windows XP Properties Page; General Tab")

Then select the *Remote* tab and check *Allow users to connect remotely to this computer*.

![Windows XP Properties Page; Remote Tab](/wp-content/uploads/2006/02/Remote.jpg)

If you're not an Administrator on your machine you may have to add your user account to the list of users permitted to access your machine remotely; you can do this by clicking on the *Select Remote Users* button.

Copy the Remote Desktop exe and dll to another directory and enable Windows 98 compatibility mode on the binary; you need to do this so that you can connect to localhost. This is normally banned on XP Pro - but the compatibility mode opens it up again. Hmm, that's secure. The files are in your System32 directory and are `mstsc.exe` and `mstscax.dll`.

![mstsc.exe; Compatibility Tab](/wp-content/uploads/2006/02/Compatibility.jpg)

Finally, you'll need to allow incoming SSH connections from the internet through your firewall; to do this you should open port 22.

Now on your XP machine at work, install [Cygwin](https://www.cygwin.com "Cygwin Home Page") with SSH and fire up a bash shell and do the following:-



```
ssh host -C -T -N -o "UsePrivilegedPort no" -l user -L3390:ip:3389
```

Replacing *host* with the fully qualified domain name of your home network on the internet, *user* with your user name and *ip* with the private IP address of your Windows machine at home.

Fire up the Remote Desktop by double clicking on `mstsc.exe` on your work XP machine and connect to `localhost:3390` (that's port 3390 on localhost), wait a few seconds and voila - one home remote desktop whilst at work - fully encrypted and without exposing a single bit of Windows networking to the public net.

SSH. It's the Swiss Army knife of the network.

