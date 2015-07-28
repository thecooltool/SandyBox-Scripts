#!/usr/bin/env bash
set -e
sudo ap-hotspot stop
#sudo ap-hotspot disable
sudo systemctl start wicd.service
