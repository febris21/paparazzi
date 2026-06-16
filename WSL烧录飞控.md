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




make: 进入目录“/home/zhanghao/workspace/vscode/paparazzi”
-----------------------------------------------------------------------
Paparazzi version v6.4_unstable-33-g9bdc50935
-----------------------------------------------------------------------
#######################################
# BUILD AIRCRAFT=Quadrotor_Febris21, TARGET ap
#######################################
Aircraft generator: 'Quadrotor_Febris21' for target 'ap'
Parsing airframe
'/home/zhanghao/workspace/vscode/paparazzi/conf/airframes/examples/quadrotor_febris21.xml', sorting by target
, extracting and parsing autopilot... done.
Parsing flight plan
'/home/zhanghao/workspace/vscode/paparazzi/conf/flight_plans/rotorcraft_basic.xml', extracting modules... done
Parsing radio
'/home/zhanghao/workspace/vscode/paparazzi/conf/radios/dummy.xml'... done
Parsing telemetry
'/home/zhanghao/workspace/vscode/paparazzi/conf/telemetry/default_rotorcraft.xml'... done
Parsing settings...
done
Loading modules:
- (D) stabilization_rotorcraft (stabilization) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/stabilization_rotorcraft.xml]
- (D) settings (core) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/settings.xml]
- (D) radio_control_common (radio_control) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/radio_control_common.xml]
- (D) nav_rotorcraft (nav) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/nav_rotorcraft.xml]
- (D) mcu (mcu_periph) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/mcu.xml]
- (D) math () [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/math.xml]
- (D) i2c (mcu_periph) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/i2c.xml]
- (D) gps (gps) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/gps.xml]
- (U) geo_mag (geo_mag) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/geo_mag.xml]
- (D) datalink_common (datalink) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/datalink_common.xml]
- (D) baro_board_common (sensors) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/baro_board_common.xml]
- (U) air_data () [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/air_data.xml]
- (D) ahrs_common (ahrs) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/ahrs_common.xml]
- (D) actuators (actuators) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/actuators.xml]
- (U) actuators_pwm (actuators) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/actuators_pwm.xml]
- (D) adc (mcu_periph) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/adc.xml]
- (D) baro_board (sensors) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/baro_board.xml]
- (D) electrical (energy) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/electrical.xml]
- (D) imu_common (imu) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/imu_common.xml]
- (S) nav_basic_rotorcraft (nav) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/nav_basic_rotorcraft.xml]
- (D) spi_master (mcu_periph) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/spi_master.xml]
- (D) state_interface (core) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/state_interface.xml]
- (D) uart (mcu_periph) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/uart.xml]
- (U) telemetry_transparent (datalink) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/telemetry_transparent.xml]
- (D) system_core (core) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/system_core.xml]
- (U) radio_control_spektrum (radio_control) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/radio_control_spektrum.xml]
- (U) lisa_m_2.0 (boards) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/boards/lisa_m_2.0.xml]
- (D) imu_aspirin_v2_common (imu) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/imu_aspirin_v2_common.xml]
- (U) imu_aspirin_v2.2 (imu) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/imu_aspirin_v2.2.xml]
- (D) guidance_rotorcraft (guidance) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/guidance_rotorcraft.xml]
- (S) guidance_pid_rotorcraft (guidance) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/guidance_pid_rotorcraft.xml]
- (D) gps_ublox (gps) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/gps_ublox.xml]
- (D) autopilot_guided () [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/autopilot_guided.xml]
- (U) ahrs_int_cmpl_quat (ahrs) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/ahrs_int_cmpl_quat.xml]
- (U) gps_ubx_ucenter (gps) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/gps_ubx_ucenter.xml]
- (U) ins (ins) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/ins.xml]
- (U) stabilization_int_quat (stabilization) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/stabilization_int_quat.xml]
- (U) motor_mixing (actuators) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/motor_mixing.xml]
- (D) autopilot_gnc () [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/autopilot_gnc.xml]
- (U) ap (targets) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/targets/ap.xml]
- (U) rotorcraft (firmwares) [/home/zhanghao/workspace/vscode/paparazzi/conf/modules/firmwares/rotorcraft.xml]
Dumping flight plan XML and header...
(unchanged) done
Dumping airframe header...(unchanged) done
Dumping autopilot header...(skip) done
Dumping radio header...(unchanged) done
Dumping telemetry header...(unchanged) done
Dumping modules header...(unchanged) done
Dumping settings XML and header...(unchanged) done
Dumping makefile...
(skip copying) done
/usr/bin/make TARGET=ap -f Makefile.ac all_ac_h
make[1]: 进入目录“/home/zhanghao/workspace/vscode/paparazzi”
Using "arch/stm32/lisa-m.ld" as ldscript for target "ap".
make[1]: 对“all_ac_h”无需做任何事。
make[1]: 离开目录“/home/zhanghao/workspace/vscode/paparazzi”
cd sw/airborne; /usr/bin/make -j4 TARGET=ap all
make[1]: 进入目录“/home/zhanghao/workspace/vscode/paparazzi/sw/airborne”
Using "arch/stm32/lisa-m.ld" as ldscript for target "ap".

GCC version: arm-none-eabi-gcc (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599] 


Previous size:
/home/zhanghao/workspace/vscode/paparazzi/var/aircrafts/Quadrotor_Febris21/ap/ap.elf :
section size addr
.text 0x25de0 0x8002000
.preinit_array 0x0 0x8027de0
.init_array 0x0 0x8027de0
.fini_array 0x0 0x8027de0
.ARM.exidx 0x8 0x8027de0
.data 0x3cc0 0x20000000
.bss 0x2ae4 0x20003cc0
.debug_info 0x12fbea 0x0
.debug_abbrev 0x22794 0x0
.debug_loc 0x40aad 0x0
.debug_aranges 0x38c8 0x0
.debug_ranges 0x7870 0x0
.debug_macro 0x45d1a 0x0
.debug_line 0x9856b 0x0
.debug_str 0xa48fc 0x0
.comment 0xa7 0x0
.ARM.attributes 0x31 0x0
.debug_frame 0x95e8 0x0
Total 0x356730



Current size:
/home/zhanghao/workspace/vscode/paparazzi/var/aircrafts/Quadrotor_Febris21/ap/ap.elf :
section size addr
.text 0x25de0 0x8002000
.preinit_array 0x0 0x8027de0
.init_array 0x0 0x8027de0
.fini_array 0x0 0x8027de0
.ARM.exidx 0x8 0x8027de0
.data 0x3cc0 0x20000000
.bss 0x2ae4 0x20003cc0
.debug_info 0x12fbea 0x0
.debug_abbrev 0x22794 0x0
.debug_loc 0x40aad 0x0
.debug_aranges 0x38c8 0x0
.debug_ranges 0x7870 0x0
.debug_macro 0x45d1a 0x0
.debug_line 0x9856b 0x0
.debug_str 0xa48fc 0x0
.comment 0xa7 0x0
.ARM.attributes 0x31 0x0
.debug_frame 0x95e8 0x0
Total 0x356730


make[1]: 离开目录“/home/zhanghao/workspace/vscode/paparazzi/sw/airborne”
cd sw/airborne; /usr/bin/make TARGET=ap upload
make[1]: 进入目录“/home/zhanghao/workspace/vscode/paparazzi/sw/airborne”
Using "arch/stm32/lisa-m.ld" as ldscript for target "ap".
Using dfu-util at 0x08002000
dfu-util 0.9

Copyright 2005-2009 Weston Schmidt, Harald Welte and OpenMoko Inc.
Copyright 2010-2016 Tormod Volden and Stefan Schmidt
This program is Free Software and has ABSOLUTELY NO WARRANTY
Please report bugs to http://sourceforge.net/p/dfu-util/tickets/

dfu-util: Invalid DFU suffix signature
dfu-util: A valid DFU suffix will be required in a future dfu-util release!!!
Opening DFU capable USB device...
ID 1d50:600f
Run-time device DFU version 011a
Claiming USB DFU Interface...
Setting Alternate Setting #0 ...
Determining device status: state = dfuIDLE, status = 0
dfuIDLE, continuing
DFU mode device DFU version 011a
Device returned transfer size 2048
DfuSe interface name: "Internal Flash "
Downloading to address = 0x08002000, size = 170664
Download [ ] 0% 0 bytes
Download [ ] 1% 2048 bytes
Download [= ] 4% 8192 bytes
Download [== ] 8% 14336 bytes
Download [=== ] 12% 20480 bytes
Download [=== ] 13% 22528 bytes
Download [==== ] 16% 28672 bytes
Download [===== ] 20% 34816 bytes
Download [====== ] 24% 40960 bytes
Download [======= ] 28% 49152 bytes
Download [======== ] 32% 55296 bytes
Download [========= ] 36% 61440 bytes
Download [========= ] 39% 67584 bytes
Download [========== ] 40% 69632 bytes
Download [========== ] 43% 73728 bytes
Download [=========== ] 44% 75776 bytes
Download [============ ] 48% 81920 bytes
Download [============ ] 51% 88064 bytes
Download [============= ] 52% 90112 bytes
Download [============= ] 55% 94208 bytes
Download [============== ] 56% 96256 bytes
Download [============== ] 58% 100352 bytes
Download [=============== ] 60% 102400 bytes
Download [=============== ] 63% 108544 bytes
Download [================ ] 64% 110592 bytes
Download [================ ] 67% 114688 bytes
Download [================= ] 68% 116736 bytes
Download [================= ] 70% 120832 bytes
Download [================== ] 72% 122880 bytes
Download [================== ] 74% 126976 bytes
Download [=================== ] 76% 131072 bytes
Download [=================== ] 78% 133120 bytes
Download [==================== ] 80% 137216 bytes
Download [==================== ] 82% 141312 bytes
Download [===================== ] 84% 143360 bytes
Download [===================== ] 86% 147456 bytes
Download [====================== ] 88% 151552 bytes
Download [====================== ] 90% 153600 bytes
Download [======================= ] 92% 157696 bytes
Download [======================= ] 93% 159744 bytes
Download [======================== ] 96% 163840 bytes
Download [======================== ] 98% 167936 bytes
Download [=========================] 100% 170664 bytes
Download done.
File downloaded successfully
Reading flashed bin file of size 170664 for verification
dfu-util 0.9

Copyright 2005-2009 Weston Schmidt, Harald Welte and OpenMoko Inc.
Copyright 2010-2016 Tormod Volden and Stefan Schmidt
This program is Free Software and has ABSOLUTELY NO WARRANTY
Please report bugs to http://sourceforge.net/p/dfu-util/tickets/

Opening DFU capable USB device...
ID 1d50:600f
Run-time device DFU version 011a
Claiming USB DFU Interface...
Setting Alternate Setting #0 ...
Determining device status: state = dfuIDLE, status = 0
dfuIDLE, continuing
DFU mode device DFU version 011a
Device returned transfer size 2048
DfuSe interface name: "Internal Flash "
Upload [ ] 0% 0 bytes
make[1]: 离开目录“/home/zhanghao/workspace/vscode/paparazzi/sw/airborne”
make: 离开目录“/home/zhanghao/workspace/vscode/paparazzi”
dfu-util: dfuse_upload: libusb_control_msg returned -9
make[1]: *** [/home/zhanghao/workspace/vscode/paparazzi/conf/Makefile.stm32-upload:81：upload] 错误 74
make: *** [Makefile.ac:221：ap.upload] 错误 2
Flash Quadrotor_Febris21 terminated with code 2