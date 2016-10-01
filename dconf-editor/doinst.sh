if [ -x /etc/rc.d/rc.messagebus ]; then
 sh /etc/rc.d/rc.messagebus reload
fi

chroot . /usr/bin/glib-compile-schemas /usr/share/glib-2.0/schemas/ 1> /dev/null 2> /dev/null
chroot . /usr/bin/gio-querymodules @LIBDIR@/gio/modules/ 1> /dev/null 2> /dev/null

