# 针对Batocera树莓派的Overlay，提供Dolphin/Jaguar/Philips CD-i核心
这个Overlay提供了Batocera树莓派版本没有提供的Dolphin (支持gamecube/wii), Jaguar (支持Jaguar)以及Philips CD-i核心

同时，解决了Batocera各种菜单的中文显示问题。

## 使用方法:
在将Batocera 32镜像写到TF卡以后，将'overlay'文件拷贝到TF卡第一个分区的boot目录，文件名为'overlay'。

如果你使用Batocera 33 dev版本，请使用'overlay-for-ver33-dev'，并将其重命名为'overlay'。

然后，你需要手动：

*   在roms目录创建gamecube和wii目录，dolphin核心需要从这里读取游戏。

*   在roms目录创建atarijaguar目录，virtualjaguar核心需要从这里读取游戏。

*   在roms目录创建cdi目录，cdi2015核心需要从这里读取Philips CD-i的游戏，注意，必须是chd格式。

*   **将'cdimono1.zip'放到bios目录或者roms/cdi目录**


# 针对LCL PiBoy
LCL PiBoy使用RPI CM4作为计算模块，Batocera需要进行一些配置才能支持。

**将Image写入TF卡以后**

针对Batocera 32版本:

*   复制'config.txt'到tf卡第一个分区, 覆盖掉原来的'config.txt'和'config64.txt'
*   复制'bcm2711-rpi-cm4.dtb'到tf卡第一个分区, 因为Batocera 32默认缺少CM4固件

针对Batocera 33 开发版:

*   复制'config.txt'到tf卡第一个分区，覆盖原来的'config.txt'

# Overlay文件
Batocera使用squashfs作为根文件系统，所以默认只读且不能也不建议直接修改。所有对根文件系统的修改重启后都会丢失。

但Batocera提供了overlay机制来保存修改，可以将修改写到/boot/boot/overlay文件（第一个分区挂载在/boot）。

overlay文件是一个ext4文件系统，可以直接被挂载修改。

你可以通过dd/mkfs.ext4来创建，也可以ssh登录进batocera (默认用户名密码是root/linux)，使用命令'batocera-save-overlay <多少M>'来创建。

# Philips CD-i libretro core
cdi2015 核心是基于lr-mame2015修改而来的更好支持Philips CD-i的核心，尺寸较小且比新版本的mame更快。
补丁在patches目录。同时，也有一个基于mame220版本的cdi核心，补丁也在patches目录。

之所以选择mame220而不是最新版本是因为最新版本的一个regression不再支持'the apprentice'游戏 (CD-i平台排名第一的游戏)。


