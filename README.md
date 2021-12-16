# Overlays with dolphin/jaguar/philips CD-i for batocera RPI 4b/CM4
This is 'overlay' for Batocera RPI 4 series with dolphin, virtualjaguar and philips CD-i cores.

And provide default configurations for Chinese display.

## Usage:
After dd batocera 32 image to TF card, copy 'overlay' file to 'boot' dir as 'boot/overlay' of first partition.

If you use batocera 33 dev version, please use 'overlay-for-ver33-dev' and rename it to 'overlay'.

And you need manually:

*   Create 'gamecube' and 'wii' dir in 'roms' dir for dolphin core.

*   Create 'atarijaguar' dir in 'roms' dir for virtualjaguar core.

*   Create 'cdi' dir in 'roms' dir for cdi2015 core.

*   *Put 'cdimono1.zip' from this repos or mame romsets, and put it to 'bios' or 'roms/cdi' dir.*


# For LCL PiBoy
LCL PiBoy use RPI CM4 as it's computing module and batocera need some customizations.

*After dd image to TF card:*

For batocera 32 version:

*   copy 'config.txt' to first partition, replace 'config.txt' and 'config64.txt'.
*   copy 'bcm2711-rpi-cm4.dtb' to first partition, since batocera 32 lack support of CM4.

For batocera 33 dev version:

*   copy 'config.txt' to first partition, replace original 'config.txt'.

# Overlay file
Batocera use squashfs as its root filesystem, it's readonly and can not be modified directly. Any changes to root file system will be discarded after reboot. 

But it support to store root filesystem changes into a 'overlay' file in '/boot/boot/overlay'.

'overlay' file is a image with ext4 filesystem and can be mounted and modified directly.

You can create it via dd/mkfs.ext4 or just modify batocera runtime and save it use 'batocera-save-overlay <size>'.

# Philips CD-i libretro core
cdi2015 core is based on lr-mame2015 with some patches. it's light weight and faster than mame newer version.
