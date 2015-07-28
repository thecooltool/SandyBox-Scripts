#!/bin/bash
UUID=`cat /proc/sys/kernel/random/uuid`
sudo sed -i 's/^MKUUID=.*/MKUUID='"$UUID"'/' /etc/linuxcnc/machinekit.ini
