#
# Copyright (C) 2012 The Android Open-Source Project
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
TARGET_BOARD_PLATFORM := wmt
TARGET_BOOTLOADER_BOARD_NAME := wmid

USE_CAMERA_STUB := false
HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_GPS_TYPE := simulator

#TARGET_NO_BOOTLOADER := true
#TARGET_NO_RADIOIMAGE := true

#CPU stuff
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/WonderMedia/WM8850/vibrator.c

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 1000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 1000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 200000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1bc000000
BOARD_FLASH_BLOCK_SIZE := 4096

#EGL stuff
BOARD_EGL_CFG := device/WonderMedia/WM8850/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USE_SKIA_LCDTEXT := true
ENABLE_WEBGL := true

#Recovery Stuff
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/WonderMedia/WM8850/recovery_keys.c
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
#TARGET_RECOVERY_INITRC := device/WonderMedia/WM8850/recovery_init.rc

#twrp recovery
#BOARD_HAS_SDCARD_INTERNAL := true
#TARGET_RECOVERY_INITRC := device/WonderMedia/WM8850/recovery_init.rc
#TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
#DEVICE_RESOLUTION := 1024x600
#TW_FLASH_FROM_STORAGE := true
#TW_NO_REBOOT_BOOTLOADER := true
#TWRP_EVENT_LOGGING := true 
#TW_INTERNAL_STORAGE_PATH := "/emmc"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
#TW_EXTERNAL_STORAGE_PATH := "/sdcard"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file

#Misc stuff
BOARD_USE_LEGACY_TOUCHSCREEN := true
TARGET_PROVIDES_INIT_RC := true
TARGET_BOOTANIMATION_PRELOAD := true

BOARD_WLAN_DEVICE := mt6620

WIFI_DRIVER_MODULE_NAME   := mt6620
WIFI_DRIVER_MODULE_PATH   := "/system/lib/modules/wlan_mt6620.ko"


# Beware: set only prebuilt OR source+config
TARGET_PREBUILT_KERNEL := device/WonderMedia/WM8850/kernel
BOARD_KERNEL_BASE := 0x40000000

SW_BOARD_USES_GSENSOR_TYPE := "gsensor_kxte9_md"
SW_BOARD_GSENSOR_DIRECT_X := "true"
SW_BOARD_GSENSOR_DIRECT_Y := "true"
SW_BOARD_GSENSOR_DIRECT_Z := "true"
SW_BOARD_GSENSOR_XY_REVERT := "true"

COMMON_GLOBAL_CFLAGS += "-DICS_CAMERA_BLOB -DICS_AUDIO_BLOB"
