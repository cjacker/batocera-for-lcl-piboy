# Resources to enable batocera on LCL piboy.

Batocera (Up to version 32) is not support RPI CM4 by default, Here is some resource to enable it.

copy 'config.txt' to first partition, replace 'config.txt' and 'config64.txt'. 

copy 'bcm2711-rpi-cm4.dtb' to first partition.

copy 'overlay' to 'boot' dir of first partition.


## overlay file
Batocera use squashfs as its root filesystem, so it's readonly and can not be modified directly. Any changes to root file system will be discarded after reboot. 

But it support store changes in a 'overlay' file in '/boot/boot/overlay'.

This file is a image with ext4 filesystem and can be mounted and modified directly via 'mount -o loop'.

You can create it via dd/mkfs.ext4 or just modify batocera runtime and save it use 'batocera-save-overlay <size>'.

'overlay' provided in this repos add wqy-microhei.ttf Chinese fonts and pre-configuration to support Chinese display.
