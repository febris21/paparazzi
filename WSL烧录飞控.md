提示：在WSL中烧写经常出现不稳定情况，状况是，烧写一半就卡死。可拔掉飞控重新执行如下步骤。

【第一步】
1、以管理员身份进入powershell
2、运行usbipd list查看是否有存在：Lisa/M (Upgrade) V1.1
3、运行usbipd bind --busid 4-2，这步不是每次都需要做。
4、打开ubuntu 20.02虚拟机
5、继续在powershell中运行：usbipd attach --wsl --busid 4-2

【第二步】
1、后面步骤都在ubuntu 20.02虚拟机中操作
2、运行sudo lsusb，查看是否存在：Paparazzi Lisa/M (DFU)
3、烧录正式命令（注意paparazzi目录地址按照实际情况改写）：dfu-util -a 0 -s 0x08002000:leave -D ~/paparazzi/var/aircrafts/Quadrotor_Febris21/ap/ap.bin