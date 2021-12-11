# Resources to enable batocera 32 on LCL piboy.

Batocera (Up to version 32) is not support RPI CM4 by default, Here is some resource to enable it.

copy 'config.txt' to first partition, replace 'config.txt' and 'config64.txt'. 

copy 'bcm2711-rpi-cm4.dtb' to first partition.

copy 'overlay' to 'boot' dir as 'boot/overlay' of first partition.

# For batocera 33 dev

Batocera 33 dev version added CM4 support, but config.txt still need to be modified for piboy.

copy 'config-for-33-dev.txt' to first partition, replace 'config.txt' from 33 dev.

copy 'overlay' to 'boot' dir as 'boot/overlay' of first partition.

## overlay file
Batocera use squashfs as its root filesystem, so it's readonly and can not be modified directly. Any changes to root file system will be discarded after reboot. 

But it support store changes in a 'overlay' file in '/boot/boot/overlay'.

This file is a image with ext4 filesystem and can be mounted and modified directly via 'mount -o loop'.

You can create it via dd/mkfs.ext4 or just modify batocera runtime and save it use 'batocera-save-overlay <size>'.

'overlay' provided in this repos add wqy-microhei.ttf Chinese fonts and pre-configuration to support Chinese display.
