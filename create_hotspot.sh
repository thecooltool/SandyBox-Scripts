#!/usr/bin/env bash
set -e
sudo systemctl stop wicd.service
sudo ap-hotspot configure
sudo ap-hotspot start
sudo ap-hotspot enable
