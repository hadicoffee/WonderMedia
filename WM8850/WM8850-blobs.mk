# Copyright (C) 2012 The Android Open Source Project
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


# /system/bin
PRODUCT_COPY_FILES += \
	device/WonderMedia/WM8850/prebuilt/bin/fsck.exfat:system/bin/fsck.exfat \
	device/WonderMedia/WM8850/prebuilt/bin/mkfs.exfat:system/bin/mkfs.exfat \
	device/WonderMedia/WM8850/prebuilt/bin/mount.exfat:system/bin/mount.exfat \
	device/WonderMedia/WM8850/prebuilt/bin/ntfs-3g:system/bin/ntfs-3g \
	device/WonderMedia/WM8850/prebuilt/bin/mount.exfat-fuse:system/bin/mount.exfat-fuse \
	device/WonderMedia/WM8850/prebuilt/bin/bootanimation:system/bin/bootanimation \
	device/WonderMedia/WM8850/prebuilt/bin/ntfs-3g.probe:system/bin/ntfs-3g.probe \
	device/WonderMedia/WM8850/prebuilt/bin/mkntfs:system/bin/mkntfs \
	device/WonderMedia/WM8850/prebuilt/bin/usb_modeswitch:system/bin/usb_modeswitch \
	device/WonderMedia/WM8850/prebuilt/bin/rild:system/bin/rild \
	device/WonderMedia/WM8850/prebuilt/bin/bootanimation:system/bin/bootanimation \
	device/WonderMedia/WM8850/prebuilt/bin/6620_launcher:system/bin/6620_launcher \
	device/WonderMedia/WM8850/prebuilt/bin/6620_wmt_lpbk:system/bin/6620_wmt_lpbk \
	device/WonderMedia/WM8850/prebuilt/bin/fb0tofb1:system/bin/fb0tofb1 \
	device/WonderMedia/WM8850/prebuilt/bin/applypatch:system/bin/applypatch

# /system/etc
PRODUCT_COPY_FILES += \
	device/WonderMedia/WM8850/prebuilt/etc/ppp/ip-up-vpn:system/etc/ppp/ip-up-vpn \
	device/WonderMedia/WM8850/prebuilt/etc/ppp/ril.modem.type:system/etc/ppp/ril.modem.type \
	device/WonderMedia/WM8850/prebuilt/etc/ppp/init.gprs-pppd:system/etc/ppp/init.gprs-pppd \
	device/WonderMedia/WM8850/prebuilt/etc/firmware/+MID7_8226_FT5406-mMax.fwc:system/etc/firmware/+MID7_8226_FT5406-mMax.fwc \
	device/WonderMedia/WM8850/prebuilt/etc/firmware/+MID7_8226_FT5406-mMax.fwc:system/vendor/firmware/+MID7_8226_FT5406-mMax.fwc \
	device/WonderMedia/WM8850/prebuilt/etc/3g_dongle.cfg:system/etc/3g_dongle.cfg \
	device/WonderMedia/WM8850/prebuilt/etc/camera.cfg:system/etc/camera.cfg \
	device/WonderMedia/WM8850/prebuilt/etc/gps.conf:system/etc/gps.conf \
	device/WonderMedia/WM8850/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
	device/WonderMedia/WM8850/prebuilt/etc/usb_modeswitch.sh:system/etc/usb_modeswitch.sh \
	device/WonderMedia/WM8850/prebuilt/etc/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/WonderMedia/WM8850/prebuilt/etc/init.d,system/etc/init.d)

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/WonderMedia/WM8850/prebuilt/etc/usb_modeswitch.d,system/etc/usb_modeswitch.d)

# /system/lib
PRODUCT_COPY_FILES += \
	device/WonderMedia/WM8850/prebuilt/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
	device/WonderMedia/WM8850/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
	device/WonderMedia/WM8850/prebuilt/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
	device/WonderMedia/WM8850/prebuilt/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
	device/WonderMedia/WM8850/prebuilt/lib/ibreference-ril.so:system/lib/ibreference-ril.so \
	device/WonderMedia/WM8850/prebuilt/lib/hw/camera.goldfish.so:system/lib/hw/camera.goldfish.so \
	device/WonderMedia/WM8850/prebuilt/lib/hw/sensors.wmt.so:system/lib/hw/sensors.wmt.so \
	device/WonderMedia/WM8850/prebuilt/lib/libMali.so:system/lib/libMali.so \
	device/WonderMedia/WM8850/prebuilt/lib/libUMP.so:system/lib/libUMP.so \
	device/WonderMedia/WM8850/prebuilt/lib/libMali.so:obj/lib/libMali.so \
	device/WonderMedia/WM8850/prebuilt/lib/libUMP.so:obj/lib/libUMP.so

# /system/usr
PRODUCT_COPY_FILES += \
	device/WonderMedia/WM8850/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
	device/WonderMedia/WM8850/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
	device/WonderMedia/WM8850/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	device/WonderMedia/WM8850/prebuilt/usr/keylayout/Generic:system/usr/keylayout/Generic.kl \
	device/WonderMedia/WM8850/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/WonderMedia/WM8850/prebuilt/usr/icu/icudt48l.dat:system/usr/icu/icudt48l.dat

# temporary prebuilt wpa_supplicant
PRODUCT_COPY_FILES += \
	device/WonderMedia/WM8850/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# prebuilt kernel modules
#PRODUCT_COPY_FILES += \
#	$(call find-copy-subdir-files,*,device/WonderMedia/WM8850/prebuilt/vendor/modules,system/vendor/modules)

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/WonderMedia/WM8850/prebuilt/lib/modules,system/lib/modules)

# HACK by turl: Create some intermediate files to link with libMali/libUMP
$(shell mkdir -p out/target/product/WM8850/obj/SHARED_LIBRARIES/libMali_intermediates)
$(shell mkdir -p out/target/product/WM8850/obj/SHARED_LIBRARIES/libUMP_intermediates)
$(shell touch out/target/product/WM8850/obj/SHARED_LIBRARIES/libMali_intermediates/export_includes)
$(shell touch out/target/product/WM8850/obj/SHARED_LIBRARIES/libUMP_intermediates/export_includes)

# OMX codec support
PRODUCT_COPY_FILES += device/WonderMedia/WM8850/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml

# Audio policy
PRODUCT_COPY_FILES += device/WonderMedia/WM8850/libraries/audio/audio_policy.conf:system/etc/audio_policy.conf

