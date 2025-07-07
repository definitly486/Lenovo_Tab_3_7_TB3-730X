#!/bin/sh 
/usr/local/bin/adb reboot bootloader 
/usr/local/bin/fastboot oem unlock
/usr/local/bin/fastboot flash recovery twrp.img
/usr/local/bin/fastboot  reboot recovery