config() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  # If there's no config file by that name, mv it over:
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "$(cat $OLD | md5sum)" = "$(cat $NEW | md5sum)" ]; then # toss the redundant copy
    rm $NEW
  fi
  # Otherwise, we leave the .new copy for the admin to consider...
}

# The GTK+3 theme no longer works, so if gtkrc uses that, back up the old
# file and install the new one:
if grep -q GTK etc/gtk-3.0/gtkrc 2> /dev/null ; then
  mv etc/gtk-3.0/gtkrc etc/gtk-3.0/gtkrc.bak
fi
config etc/gtk-3.0/gtkrc.new
config etc/gtk-3.0/im-multipress.conf.new
rm -f etc/gtk-3.0/gtkrc.new

chroot . rm -f /usr/share/icons/*/icon-theme.cache 1> /dev/null 2> /dev/null

# Run these if we are on an installed system.  Otherwise they will be
# handled on first boot.
if [ -x /usr/bin/update-gtk-immodules-3.0 ]; then
  /usr/bin/update-gtk-immodules-3.0
fi
if [ -e /usr/share/glib-2.0/schemas ]; then
  if [ -x /usr/bin/glib-compile-schemas ]; then
    /usr/bin/glib-compile-schemas /usr/share/glib-2.0/schemas >/dev/null 2>&1
  fi
fi

# In case this is the first run installing the standalone gdk-pixbuf,
# we will run this a second time to fix machines that will not reboot.
chroot . /usr/bin/update-gdk-pixbuf-loaders 1> /dev/null 2> /dev/null

