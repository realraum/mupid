### Introduction

The [mupid](https://en.wikipedia.org/wiki/MUPID) was an early home computer and terminal for the Austrian Post's BTX [(Bildschirmtext) ](https://en.wikipedia.org/wiki/Bildschirmtext)service, a variant of [Videotex](https://en.wikipedia.org/wiki/Videotex).

The BTX system has been switched off, so the hardware is only usable with a floppy disk station or something that emulates the "BTX-Zentrale" (server).

The motivation behind this project is to demonstrate the awesome technology developed at TU Graz in the early 1980s.

mupid has a [Z80A ](https://en.wikipedia.org/wiki/Zilog_Z80)CPU (8 bit, 4 MHz), 128kB RAM, and multiple I/O ports. It can run [CP/M](https://en.wikipedia.org/wiki/CP/M) on a dedicated floppy disk subsystem with a dedicated Z80A CPU, where the actual MUPID only acts as a terminal.

### Prior art and references

* This [thread ](https://forum.classic-computing.de/forum/index.php?thread/15166-mupid-%C3%B6sterreichischer-btx-computer/)has a ton of very useful information. [VzEkC e. V.](https://forum.classic-computing.de/forum/) is dedicated to classical computing.
* The idea by RobertK in the abovementioned forum to run an emulator and to extend [z88dk ](https://www.z88dk.org/)with a mupid target
* The idea by RobertK to write a [MAME ](https://www.mamedev.org/)driver for mupid
* [Client and server](https://github.com/bildschirmtext/bildschirmtext) implementation for the German BTX system
* Lots of documentation still available at [ISDS](https://much.isds.tugraz.at/projects/mupid_7/index.htm/)

### What do we have at r3?

* Floppy disk images: ftp://ftp.informatik.uni-stuttgart.de/pub/cm/mupid/
* A few original mupid C2A2, floppy drives, floppy disks, and tons of documentation on paper

### What else did we find online?

* There is [preliminary](http://adb.arcadeitalia.net/dettaglio_mame.php?game_name=mupid2&lang=en) mupid support in MAME
* There is a dockerized version of MAME called [DAME](https://github.com/Praqma/DAME) which could be useful
* There are Debian/Ubuntu packages of mame, and even a [PPA](https://launchpad.net/~c.falco/+archive/ubuntu/mame) with the current stable version

### What do we need?

* digital copies of manuals, schematics, all the floppy disk images we can rip using [GreaseWeazle](https://github.com/keirf/greaseweazle)
* images of the EPROMs on the mupid

### What do we want?

* ideally, emulate an entire mupid accessible via WWW, either using something like noVNC, RustDesk or even running entirely in JavaScript on the client
* a "BTX server" that can serve CEPT encoded BTX pages to a mupid. This could be a standalone Raspberry Pi, or a serial-to-https adapter requesting CEPT pages from a webserver.
* eventually, an IP/SSL stack like [WolfSSL] (https://www.wolfssl.com/)
