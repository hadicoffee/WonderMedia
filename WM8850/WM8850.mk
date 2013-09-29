#
# Copyright (C) 2011 The Android Open-Source Project
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

PRODUCT_COPY_FILES := \
	device/WonderMedia/WM8850/kernel:kernel \
    device/WonderMedia/WM8850/modules:system/lib/modules \
    device/WonderMedia/WM8850/modules/s_wmt_ts_ft5x0x.ko.ko:root/lib/modules/s_wmt_ts_ft5x0x.ko.ko \
	device/WonderMedia/WM8850/init.rc:root/init.rc \
	device/WonderMedia/WM8850/init.goldfish.rc:root/init.goldfish.rc \
	device/WonderMedia/WM8850/init.usb.rc:root/init.usb.rc \
	device/WonderMedia/WM8850/init.mtk5931.rc:root/init.mtk5931.rc \
	device/WonderMedia/WM8850/init.trace.rc:root/init.trace.rc \
	device/WonderMedia/WM8850/init.mtk6620.rc:root/init.mtk6620.rc \
	device/WonderMedia/WM8850/ueventd.goldfish.rc:root/ueventd.goldfish.rc

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version = 131072 \
    ro.opengles.surface.rgb565=true \
	debug.egl.hw=1 \
	ro.display.switch=1 \
	ro.sf.lcd_density=160 \
	wifi.firmware.path.ap="dummy" \
	hwui.render_dirty_regions=false \
	wifi.interface = wlan0 \
	wifi.supplicant_scan_interval = 90 \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1 \
	persist.wifi.driver.name=wlan_mt6620 \
	persist.wifi.driver.path=/system/lib/modules/wlan_mt6620.ko \
	ro.wmt.ui.gps=ttyUSB5 \
	wmt.gps.so.path=/system/lib/hw/gps.mtk_6620.so \
	ril.libargs=-d /dev/tty* \
	ro.debuggable=0 \
	ro.wmt.pkgver=3.20.00 \
	ro.wmt.tpdrv=s_wmt_ts_ft5x0x \
	ro.display.landscape=1 \
	ril.modem.enable=1 \
	ro.wmt.call.volume=EARP=[0,6],HS=[0,12],HF=[0,18] \
	ro.wmt.disable.phoneui=1 \
	ro.wmt.lightsensor=1 \
	ro.wmt.drv.add=s_wmt_bq27x00batt,s_wmt_lsensor_isl29023,via_option \
	ro.wmt.ui.settings_remove=3g,ethernet,pppoe \
	ro.wmt.ui.ets_modem=1 \
	wifi.interface=wlan0 \
	ro.wmt.touchpannel=1 \
	persist.sys.wmt.maxfb0video=1x1 \
	persist.sys.hdmi.res=1280x720 \
	ro.wmt.drv.common=gsensor_kxte9_md,wmt_battery_md,cdc-acm,usb_wwan,option,cdc_ether \
	dalvik.vm.verify-bytecode=false \
	dalvik.vm.dexopt-flags=v=n,o=v \
	dalvik.vm.execution-mode=int:jit \
	persist.sys.timezone=Asia/Makassar \
	persist.sys.language=in \
	persist.sys.country=ID \
	ro.com.google.locationfeatures=1 \
	dalvik.vm.lockprof.threshold=500 \
	ro.kernel.android.checkjni=0 \
	dalvik.vm.checkjni=false \
	dalvik.vm.dexopt-data-only=1 \
	ro.vold.umsdirtyratio=20 \
	persist.sys.use_dithering=0 \
	persist.sys.purgeable_assets=0 \
	windowsmgr.max_events_per_sec=240 \
	view.touch_slop=2 \
	ril.libpath=/system/lib/libreference-ril.so 


# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Publish that we support the live wallpaper feature.
PRODUCT_PACKAGES += \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	HoloSpiralWallpaper 

PRODUCT_PACKAGES += \
	VisualizationWallpapers \
	librs_jni

# Hardware libs
PRODUCT_PACKAGES += \
	gralloc.default \
	gralloc.android \
	lights.wmt \
	lights.goldfish \
	local_time.default \
	power.default \
	sensorcontrol.default \
	sensors.goldfish \
	audio.primary.default \
	audio.primary.wm8994 \
	audio.primary.wmt \
	audio.a2dp.default \
	audio_policy.default \
	audio.usb.default \
	camera.default \
	camera.goldfish \
	gps.dongle \
	gps.goldfish \
	gps.mtk_6620 \
	keystore.default 
	

# CM9 apps
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# EXT4 Support
PRODUCT_PACKAGES += \
	make_ext4fs \
	e2fsck

$(call inherit-product, build/target/product/full_base.mk)

# Should be after the full_base include, which loads languages_full
PRODUCT_AAPT_CONFIG := large xlarge mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_NAME := full_WM8850
PRODUCT_DEVICE := 8850

TARGET_SCREEN_HEIGHT := 600
TARGET_SCREEN_WIDTH := 1024
