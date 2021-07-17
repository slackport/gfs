# GFS Project - GNOME 40
###### GNOME from Scratch/GNOME for Slackware

### Introduction

 The first question you should ask yourself is: 'if I don't like the GNOME, what am I doing here?'
 I'm talking about clarity, simplicity... I'm talking about tranquility and comfort... of course, everything have a price...
 And if you don't understand this, you're wasting your time reading me!
 This is GNOME 40... from Scratch (for Slackware)!

### Compatibilty
 
100% Compatible with slackware64-current.

### Download and Install Compiled Packages
1. Use a web browser to download:
[slackport-gfs-pkg64.tar.xz](https://drive.google.com/u/1/uc?id=15-VyFtpMbp8Xl36YKjzGtgIydOrzFJkw&export=download)
2. Open a console, login root, and type:
```bash
tar xf slackport-gfs-pkg64.tar.xz
upgradepkg --install-new --reinstall slackport-gfs-pkg64/*.txz
```

### Configuring


### How to compile and use GNOME 40
 In console (root), type:
 1. git clone https://github.com/slackport/gfs
 2. cd gfs
 3. sh gfs
 4. After compile and install everything, edit your /etc/inittab to go 4 runlevel ( id:3:initdefault: -> id:4:initdefault: )
 5. Make sure gdm is the first one to run in the /etc/rc.d/rc.4 
 6. Reboot your system.
 7. Use 'startx' to choose GNOME (or Flashback).

### If you want do make a slackport-gfs package
 In console (root), type:
 1. git clone https://github.com/slackport/gfs
 2. cd gfs
 3. sh gfs autopkg
 3. cd .. && rm -rf gfs
 5. upgradepkg --install-new --reinstall /tmp/slackport-gfs-0.2.9-x86_64-1_gfs.txz
 6. gfs -help

### Things you should know
- The slackport-gfs-0.2.9-x86_64-1_gfs.txz will be installed on /opt directory;
a symlink will be created on /usr/sbin/gfs to make things easier (for me at least).
- GDM is a big problem since 2016, and I'm not going to try harder to make it work, BUT
on GNOME 40 we will need it for some functions to work correctly (blank screen, lock screen), so
with this configuration I used gdm will run like a deamon.

### About gfs script
gfs is my tool for editing, compiling and installing packages. 
It also serves as a creator of new files using a template; /var/log/packages log viewer. 
It's simple, but it saves me a lot of time and energy. 
If you are interested in improving this GNOME release, maybe gfs will be useful for you too.

### Thanks
- [Linux From Scratch](http://www.linuxfromscratch.org/)
- [Raphael Fabeni](https://github.com/raphaelfabeni)
- [Cristina Mansur](mailto:cristinatmansur@gmail.com)
- [Willy Sudiarto Raharjo](https://github.com/willysr)
- [Arch Linux Team](https://www.archlinux.org/)
- [Gentoo Linux Team](https://www.gentoo.org/)
- [SlackBuilds Team](https://slackbuilds.org/)

### Contact.
 If you can help me to improve this project, please:
  - mdrafaeltavares@gmail.com

I hope you enjoy it,

[Rafael Tavares](https://instagram.com/rafaeltlacerda)

(2021, Bahia-Brazil)
