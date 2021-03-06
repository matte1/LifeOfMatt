#!/bin/bash

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

echo "Setting up udev rule for garmin..."
# sudo cp backup.py /usr/local/bin/
# ACTION=="add", SUBSYSTEM=="usb", ENV{PRODUCT}=="91e/2a2c/509", RUN+="/usr/bin/python3 /usr/local/bin/backup.py"

# sudo echo "ACTION==\"add\", SUBSYSTEM==\"usb\", ATTR{idVendor}==\"091e\", ATTR{idProduct}==\"2a2c\", RUN+=\"/usr/local/bin/backup.py\"" > "/etc/udev/rules.d/85-garmin.rules"
sudo udevadm control -R
echo "If garmin doesn't sync the vendor and product id might need to be changed. They can be found using lsusb"
