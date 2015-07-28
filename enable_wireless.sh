#!/usr/bin/env bash
set -e
sudo systemctl start wicd.service
sleep 1
wicd-cli --wireless -c
