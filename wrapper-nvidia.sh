#!/bin/bash

cd /usr/local/bin

echo "options i915 enable_fbc=1 enable_guc=3 disable_power_well=0 fastboot=1" > /etc/modprobe.d/i915.conf
echo "options dell-smm-hwmon restricted=0 force=1" > /etc/modprobe.d/dell-smm-hwmon.conf
echo "dell-smm-hwmon" >> /etc/modules
update-initramfs -u

# Let Ubuntu autoinstall nvidia drivers
sudo ubuntu-drivers autoinstall

sudo rm -f /usr/local/bin/wrapper-nvidia.sh
