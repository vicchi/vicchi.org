title: SSH Bits & Pieces
slug: ssh-bits-pieces
date: 2006-03-14 13:41:39
tags: 
category: articles
link: 
description: 
type: text
has_math: no
status: published

### RTFM. Really.


Although this is free advertising, before you use SSH for anything other than a drop in replacement for telnet buy a copy of O'Reilly's [SSH: The Definitive Guide](https://www.oreilly.com/catalog/sshtdg2/index.html "https://www.oreilly.com/catalog/sshtdg2/index.html"), and then *read* it. It's a rare O'Reilly book which doesn't make you realise just how little you actually know about a subject and this one is no exception. To be honest, it was only after reading this book that I realised just why I shouldn't use SSH as a drop in replacement for telnet, which in turn proved how little I knew about SSH. Which kind of proves my point I guess.


<!-- TEASER_END -->

### Neat Hacks


To populate a remote accounts's **authorized\_keys** with a public key from your local machine, in a single command try:


```

$ cat ~/.ssh/id_rsa.pub | ssh \
user@remote.host 'cat - >> ~/.ssh/authorized_keys'

```


One gotcha is that you *do* need to have password authentication enabled (**PasswordAuthentication yes**) in your **/etc/ssh/sshd\_config** for this to work.


### Windows Agents


As for most UNIX agents, Cygwin comes with an implementation of ssh-agent, which is fine if you'll be working entirely within a Cygwin environment but like the UNIX versions it means that all apps which you want to inherit the agent's environment need to have Cygwin at their process root. Unless you do some fairly fundamental changes to the way in which Windows starts apps which you start from Task Manager or the Start Menu won't be aware of the agent's environment.

You could use PuTTY, which provides its own agent implementation, called Pagent or Pageant (the spelling varies) but this suffers from the safe drawbacks as Cygwin's agent unless you're happy to use on PuTTY's suite of apps.

There is another way though, the criminally underrated and underused
[win-ssh-askpass](https://www.ganaware.jp/S/win-ssh-askpass/ "https://www.ganaware.jp/S/win-ssh-askpass/"); although you have to have Cygwin, make and g++ installed to build this, as it's provided in source only form.

[I came across](https://aegisknight.livejournal.com/111357.html "https://aegisknight.livejournal.com/111357.html") this app when Googling for a way of integrating Cygwin's SSH implementation of SSH Agent into Windows as a wholeand it seems to bridge the gap, from what I've seen so far. While the main site is in Japanese there's an English language readme online [here](https://www.ganaware.jp/viewcvs.cgi/win-ssh-askpass/README.txt?rev=1.5 "https://www.ganaware.jp/viewcvs.cgi/win-ssh-askpass/README.txt?rev=1.5").

This app really deserves better publicity and better exposure.
### Mac Agents


As OS X is built on top of a variant of BSD UNIX called [Darwin](https://developer.apple.com/opensource/index.html "https://developer.apple.com/opensource/index.html") it comes with the open source version of SSH, [OpenSSH](https://www.openssh.org/ "https://www.openssh.org/"), built in. Which is fine and good is you'll only need SSH access from within Terminal.app. Otherwise you'll find yourself in the same situation as for Cygwin. You can start up an instance of ssh-agent in a variety of methods, including those mentioned [here](https://www.cygwin.com/ml/cygwin/2001-06/msg00537.html "https://www.cygwin.com/ml/cygwin/2001-06/msg00537.html") and [here](https://www.webweavertech.com/ovidiu/weblog/archives/000326.html "https://www.webweavertech.com/ovidiu/weblog/archives/000326.html").

[SSHKeyChain](https://www.sshkeychain.org/ "https://www.sshkeychain.org/"); works fine integrating the OS X keychain with SSH keys but only if other apps are keychain-aware. Which [SSH Tunnel Manager isn't](https://projects.tynsoe.org/en/stm/ "https://projects.tynsoe.org/en/stm/"). Ho hum. On the plus side though, the source for SSH Tunnel Manager is available and this could be just the impetus I need to get to grips with Objective C, Cocoa and OS X development in general. Maybe.

