# GFS Project (dry version)
[![gfs one](https://github.com/slackport/gfs/blob/master/img/gfs.01.tn.png)]
(https://github.com/slackport/gfs/blob/master/img/gfs.01.png?raw=true)
[![gfs two](https://github.com/slackport/gfs/blob/master/img/gfs.02.tn.png)]
(https://github.com/slackport/gfs/blob/master/img/gfs.02.png?raw=true)
###### GNOME from Scratch/GNOME for Slackware

- Packages64: https://drive.google.com/open?id=0B9xw_sgBVHQ3SGJabjl2VEJHaWc
- SlackBuilds: https://github.com/slackport/gfs/tree/master/dry

### Introduction

 GFS is a personal project that makes possible to use GNOME on Slackware GNU/Linux operating system without systemd or wayland programs.

### Why "from Scracth"?

 I had been trying to compile GNOME in different ways, but only got something of real value after following the steps outlined in the Beyond Linux From Scratch (BLFS) ebook, so...

# WARNING
 Version 3.20 is only fully functional updating the following Slackware official packages:
- adwaita-icon-themes
- dconf
- dconf-editor
- gdk-pixbuf2
- glib-networking
- glib2 
- gnome-keyring
- gnome-themes-standard
- gsettings-desktop-schemas
- gst-plugins-base
- gst-plugins-good
- gstreamer
- gtk+3
- libgnome-keyring
- libsoup
- pango
- upower

### Tips to install (x86_64 only).
1. Logged into a Google account, open the link:
  - https://drive.google.com/open?id=0B9xw_sgBVHQ3SGJabjl2VEJHaWc
2. Add 'dry' to you Drive, so open your Drive.
3. Download dry directory.
4. Unzip the downloaded zip file typing in a console:
  - 'unzip dry-*.zip'
4. Enter in dry directory and type:
  - 'upgradepkg --install-new --reinstall dep64/*.t?z' 
  - 'upgradepkg --install-new --reinstall pkg64/*.t?z'
5. Reboot
6. After logging, type 'xwmconfig' and select xinitrc.gnome3.
7. Run startx.

### Tips to compile:
1. Sources links can be found in dry.sources file. 
2. First compile and upgrade the Slackware official ("WARNING") packages for the GFS packages.
3. Follow the Build Order of BLFS (of course you dont need to install systemd):
  - http://www.linuxfromscratch.org/blfs/view/7.6-systemd/gnome/buildorder.html
4. If you do not find some dependence here, look in SlackBuilds.org cgit (use the sbopkg (easier way)): 
  - https://slackbuilds.org/cgit/slackbuilds/tree/
5. If something is not found here, either in SlackBuild cgit, make sure the Slackware already contains this package typing:
'slackpkg search PRGNAM'

 * Comments:
  - You can compile or install only part of the project if you want, look at the slack-deps file and satisfies the dependencies of what you want to build.
  - In this version (dry), you dont need to compile the evolution-data-server, but you need it's source to compile the libcamel, libebook, libecal, libedataserver and libedataserverui. Evolution-data-server is a very heavy program, with daemons and ends up consuming a lot of computer memory. So I decided to compile their libraries separately. This saved approximately 100mb of memory.

### Thanks
- [Raphael Fabeni](https://github.com/raphaelfabeni)
- [Cristina Mansur](mailto:cristinatmansur@gmail.com)
- [Willy Sudiarto Raharjo](https://github.com/willysr)
- [Sasa Ostrouska](mailto:casaxa@gmail.com)
- [PhantomX](https://github.com/PhantomX)
- [Eric Hameleers](http://alien.slackbook.org/)
- [Edinaldo P. Silva](mailto:edps.mundognu@gmail.com)
- [Dantrell B.](https://github.com/dantrell)
- [Arch Linux Team](https://www.archlinux.org/)
- [Gentoo Linux Team](https://www.gentoo.org/)
- [SlackBuilds Team](https://slackbuilds.org/)

### Contact.
 If you can help me to improve this project, mailme:
  - thelastwhisperofhope@gmail.com
  - mdrafaeltavares@gmail.com

I hope you enjoy it,

[Rafael Tavares](https://plus.google.com/u/0/112846121820802265999)

(2016, Bahia-Brazil)
