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
You need to add some groups and users to make things work better (I think), so:
1. In console (root), type:
```bash
groupadd -g 214 avahi
useradd -u 214 -g 214 -c "Avahi User" -d /dev/null -s /bin/false avahi
groupadd -g 303 colord
useradd -d /var/lib/colord -u 303 -g colord -s /bin/false colord
groupadd -g 363 sanlock
useradd -u 363 -d /var/run/sanlock -s /bin/false -g sanlock sanlock
usermod -a -G disk sanlock
groupadd -g 319 rabbitmq
useradd -u 319 -g 319 -c "Rabbit MQ" -d /var/lib/rabbitmq -s /bin/sh rabbitmq
```
2. Avahi need to be run at boot, so edit your `/etc/rc.d/rc.local` adding these lines:
```bash
# Start avahidaemon
if [ -x /etc/rc.d/rc.avahidaemon ]; then
 /etc/rc.d/rc.avahidaemon start
fi
# Start avahidnsconfd
if [ -x /etc/rc.d/rc.avahidnsconfd ]; then
  /etc/rc.d/rc.avahidnsconfd start
fi
```
3. Also stop Avahi at shutdown, so edit your `/etc/rc.d/rc.local_shutdown` adding these lines:
```bash
# Stop avahidnsconfd
if [ -x /etc/rc.d/rc.avahidnsconfd ]; then
  /etc/rc.d/rc.avahidnsconfd stop
fi
# Stop avahidaemon
if [ -x /etc/rc.d/rc.avahidaemon ]; then
  /etc/rc.d/rc.avahidaemon stop
fi
```
4. Edit your /etc/inittab to go 4 runlevel ( id:3:initdefault: -> id:4:initdefault: )
5. Make sure gdm is the first one to run in the /etc/rc.d/rc.4
6. Reboot your system.
7. Use `xwmconfig` to choose GNOME (or Flashback)
8. Start using `startx`

### How to compile and use GNOME 40
 1. In console (root), type:
```bash
git clone https://github.com/slackport/gfs
cd gfs
sh gfs
```
 2. After compile and install everything, edit your /etc/inittab to go 4 runlevel ( id:3:initdefault: -> id:4:initdefault: )
 3. Make sure gdm is the first one to run in the /etc/rc.d/rc.4 
 4. Reboot your system.
 5. Use `xwmconfig` to choose GNOME (or Flashback)
 6. Start using `startx`

### If you want do make a slackport-gfs package
In console (root), type:
```bash
git clone https://github.com/slackport/gfs
cd gfs
sh gfs autopkg
cd .. && rm -rf gfs
upgradepkg --install-new --reinstall /tmp/slackport-gfs-0.2.9-x86_64-1_gfs.txz
gfs help
```

### Things you should know
- GDM is a big problem since 2016, and I'm not going to try harder to make it work, BUT
on GNOME 40 we will need it for some functions to work correctly (blank screen, lock screen), so
with this configuration I used gdm will run like a deamon.
- The slackport-gfs-0.2.9-x86_64-1_gfs.txz will be installed on /opt directory;
a symlink will be created on /usr/sbin/gfs to make things easier (for me at least).

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
