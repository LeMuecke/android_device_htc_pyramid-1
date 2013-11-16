# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := pyramid

# Kernel [Settings]
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=pyramid no_console_suspend=1 androidboot.selinux=permissive

# Kernel [Build]
TARGET_KERNEL_CONFIG := pyramid_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := linaro-arm-cortex-a8
TARGET_KERNEL_CUSTOM_TOOLCHAIN_SUFFIX := arm-cortex_a8-linux-gnueabi
BUILD_KERNEL := true

# Bluetooth/Wifi
-include device/htc/msm8660-common/bcmdhd.mk

# Qcom GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pyramid

# RIL
BOARD_USES_LEGACY_RIL := true

# Recovery
TARGET_RECOVERY_FSTAB = device/htc/pyramid/ramdisk/fstab.pyramid
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
RECOVERY_FSTAB_VERSION := 2

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838859776
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1252770816
BOARD_FLASH_BLOCK_SIZE := 262144

#twrp
DEVICE_RESOLUTION := 540x960
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := false
TW_INCLUDE_DUMLOCK := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_NO_BATT_PERCENT := false
TW_CUSTOM_POWER_BUTTON := 116
TW_NO_REBOOT_BOOTLOADER := false
TW_NO_REBOOT_RECOVERY := false
TW_NO_USB_STORAGE := false
RECOVERY_TOUCHSCREEN_SWAP_XY := false
RECOVERY_TOUCHSCREEN_FLIP_Y := false
RECOVERY_TOUCHSCREEN_FLIP_X := false
TW_ALWAYS_RMRF := false
TW_NEVER_UNMOUNT_SYSTEM := true
TW_INCLUDE_INJECTTWRP := true
TW_DEFAULT_EXTERNAL_STORAGE := true
HAVE_SELINUX := true
TWRP_EVENT_LOGGING := false

