config() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "$(cat $OLD | md5sum)" = "$(cat $NEW | md5sum)" ]; then
    rm $NEW
  fi
}

config etc/highlight/lsp.conf.new
config etc/highlight/filetypes.conf.new
config usr/share/highlight/gui_files/ext/fileopenfilter.conf.new
