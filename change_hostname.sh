#!/bin/bash
read -p "Enter the new hostname and press [Enter] to continue or [Ctrl+C] to abort: "
HOSTNAME=`hostname`
sudo hostname $REPLY
sudo su -c "echo \"$REPLY\" > /etc/hostname"
sudo sed -i 's/'"$HOSTNAME"'/'"$REPLY"'/g' /etc/hosts
echo "Hostname successfully changed. Do you want to reboot the SandyBox to apply the changes?"
read -p "Press [Enter] to continue or [Ctrl+C] to abort"
echo "Powering off the Sandy-Box..."
echo "Please wait until the green light goes out before disconnecting the power supply."
sudo reboot
