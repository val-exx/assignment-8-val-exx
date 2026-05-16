#!/bin/sh
case "$1" in
  start)
    /etc/init.d/scull_load
    /etc/init.d/module_load faulty
    modprobe hello
    ;;
  stop)
    rmmod hello
    /etc/init.d/module_unload faulty
    /etc/init.d/scull_unload
    ;;
  *)
    echo "Usage: $0 {start|stop}"
    exit 1
    ;;
esac
exit 0
