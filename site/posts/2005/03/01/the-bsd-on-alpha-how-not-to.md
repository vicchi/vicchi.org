title: The BSD on Alpha HOW-NOT-TO
slug: the-bsd-on-alpha-how-not-to
date: 2005-03-01 21:57:00
tags: 
category: articles
link: 
description: 
type: text
has_math: no
status: published

New hardware, new operating system. I'd managed to get hold of a DEC Personal Workstation 433a, which housed a 433 MHz Alpha processor and decided that this was an ideal machine to test out the various flavours of BSD.

Both FreeBSD, OpenBSD and NetBSD support the Alpha chip in a variety of hardware configurations so I figured this would be a good learning opportunity.

The machine in question hails from the time when DEC were in a very tenous partnership with Microsoft and DEC produced 2 variants of the Personal Workstation (aka the PWS or the Miata). Each PWS was named according to the speed of the Alpha chip it contained and whether it was targeted at running Microsoft's 64-bit port of Windows NT on Alpha, or running DEC's own OpenVMS and Tru64 UNIX operating systems.

For example, the PWS 500au was a 500 MHz box designed for OpenVMS and Tru64, whilst the PWS 433a was a 433 MHz box destined for Windows NT.

One important thing to remember is that the PWS is most definately *not* a PC, however the external look may decieve you.

<!-- TEASER_END -->

On a slight side note, I can't help but feel it's rather ironic with Microsoft currently trumpeting the release of Windows 2003 64-bit edition for Intel's Itanium chipset. To read the publicity you'd be forgiven for thinking that this was the Beast of Redmond's first foray into the world of 64-bit architectures. Strange how the Alpha version of Windows NT has been quietly forgotten about.

So, we have a 433 MHz Alpha box, with 128 Mb of memory and a 4 Gb SCSI hard drive, just waiting for a UNIX based operating system. Let's get to work.

The first difference that strikes you is that the PWS has not one but two flavours of BIOS firmware. AlphaBIOS, also known as ARC, is a BIOS which will be quite familiar to anyone who's played with PC hardware and is heavily biased towards Windows NT and a PC-centric architecture. SRM, on the other hand, is a console based BIOS which will be very familiar to anyone who's worked on, or played with, any of the various Alpha platforms that DEC produced.

Everything you could want to know about both BIOS's can be found in AlphaLinux's [SRM Firmware HOWTO](https://www.alphalinux.org/faq/srm.html "https://www.alphalinux.org/faq/srm.html") and [AlphaBIOS HOWTO](https://www.alphalinux.org/faq/alphabios-howto.html "https://www.alphalinux.org/faq/alphabios-howto.html").

The default BIOS is AlphaBIOS and as I come from a DEC hardware background the first thing I did was swap the firmware over to default to the SRM, by selecting SRM from the Console Selection menu in Advanced CMOS Setup.

Sure enough, the graphical AlphaBIOS vanished to be replaced by the blue screen and 3 chevron prompt of the SRM. I made the change to the SRM permanent by issuing the `set os_type unix` command and power cycling the machine.

This was my first mistake.

The machine rebooted and went through it's power up tests but rather than getting the SRM prompt, I got this message



```
Illegal device detected on primary bus in physical slot 5

Power down the system and remove the unsupported device
from slot 5
```


Not good. No SRM prompt. Nothing. In fact the machine was locked up solid. A bit of Googling turned up the fact that there's 3 32-bit PCI slots in a PWS and 2 64-bit PCI slots and the graphics card was in slot 5. The SRM probes any PCI cards found in slots 4 and 5 and if they don't match it's internal list of supported cards spits out this message (via a card it says is unsupported note!) and hangs.

All of which meant that I couldn't type `set os_type nt` at the SRM prompt to get back to the AlphaBIOS ... not good again.

So I tried swapping the graphics card into each one of the 3 32-bit PCI slots. But this time I didn't even get any diagnostics at all. In fact, I didn't even get a signal to the monitor. So, I've got a graphics card which will only work in PCI slots 4 or 5 and which the SRM refuses to accept, although it's able to tell me this via an *illegal device*.

More frantic Googling later and it looked like the only way I could get around this was to use a serial cable, hook it up to a terminal emulator on a PC, and initially boot the box into console only mode; which allegedly would give me an SRM prompt and allow me to reset the firmware back to AlphaBIOS. I say allegedly 'cos much as I searched high and low in my miscellaneous cabling stash I didn't manage to come up with a serial cable; in fact I can't recall the last time I needed one. So I decided to beg, borrow, but not steal one from my companys' IS department.

Then I remembered that the original graphics card for the PWS had been swapped out during an ill fated attempt to turn the PWS into a Debian based X station. Some frantic rummaging in the far reaches of my desk draw turned up the original card, in an anti-static bag no less.

I yanked out the graphics card which was causing the SRM no end of grief and replaced it with the original card. Powered the box back up, crossed my fingers, and watched in a state of happiness as the SRM powered up just fine and presented me with the prompt. Never had I been so happy to see a *blue screen* ... !

Next up, let's see what the SRM thinks of this box's hardware. One quick `show device` later and I wasn't smiling. At all. So, network device? Check. Floppy device? Check. CD-ROM? Nope. Disk drive? Nope again. Any sort of mass storage at all? Nope. Niente. De nada.

Not good. Not good at all.

OK - so let's go back to the AlphaBIOS and see what's what. I did a `set os_type nt` and power cycled the box.

The Adaptec SCSI adaptor powered up and showed me that I did indeed have devices. A DEC RZ1CB 4Gb hard drive and a Toshiba OEM CD-ROM with a ridiculously long serial number which I couldn't be bothered to even start writing down.

Time to fire up Google again and see what's going on here. About half an hour later the truth is revealed. The SRM, which is at the latest firmware revision (7.2-1) doesn't support the Adaptec AHA-2940 SCSI adaptor, which of course, is the one which the 433a contains.

So, time to check whether any of the BSD's can boot from the AlphaBIOS. More bad news. FreeBSD, OpenBSD and NetBSD all require the SRM to boot.

And so, for this machine at least, BSD is not an option. All is not doom and gloom though. RedHat may have dropped support for the Alpha chip but Debian is another matter entirely as it's still fully supported. The Debian installation guide does advise you to use the SRM but a combination of AlphaBIOS and MILO should do the trick. Of course, that's exactly what I thought about BSD as well ...

