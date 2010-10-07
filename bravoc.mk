#
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

#
# This is the product configuration for a generic GSM bravoc,
# not specialized for any geography.
#

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

PRODUCT_COPY_FILES += \
    device/htc/bravoc/init.bravoc.rc:root/init.bravoc.rc

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    rild.libpath=/system/lib/libhtc_ril.so \
    ro.com.android.dataroaming=true \
    ro.com.google.locationfeatures=1 \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=15

# Default network type.
# 0 => WCDMA preferred.
PRODUCT_PROPERTY_OVERRIDES += \
   ro.ril.def.preferred.network=4 \
   ro.telephony.default_network=4

# AGPS otpions
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.def.agps.mode=2

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# This is a high density device with more memory, so larger vm heaps for it.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=32m

# Bravo have huge 250Mb unwritable system and small 50Mb cache .
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/bravoc/bravoc-vendor.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.media.dec.jpeg.memcap=20000000

DEVICE_PACKAGE_OVERLAYS += device/htc/bravoc/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

# media config xml file
PRODUCT_COPY_FILES += \
    device/htc/bravoc/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += \
    sensors.bravoc \
    lights.bravoc \
    librs_jni

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Bravo uses high-density artwork where available
PRODUCT_LOCALES := hdpi

PRODUCT_COPY_FILES += \
    device/htc/bravoc/bravoc-keypad.kl:system/usr/keylayout/bravoc-keypad.kl \
    device/htc/bravoc/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/bravoc/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/drivers/net/wireless/bcm4329/bcm4329.ko:system/lib/modules/bcm4329.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.seriomap:system/lib/modules/2.6.35.6-cyanogenmod/modules.seriomap \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.alias:system/lib/modules/2.6.35.6-cyanogenmod/modules.alias \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/drivers/net/wireless/bcm4329/bcm4329.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/drivers/net/wireless/bcm4329/bcm4329.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/sunrpc/auth_gss/rpcsec_gss_krb5.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/sunrpc/auth_gss/rpcsec_gss_krb5.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/sunrpc/auth_gss/auth_rpcgss.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/sunrpc/auth_gss/auth_rpcgss.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/sunrpc/sunrpc.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/sunrpc/sunrpc.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/ipv6/xfrm6_mode_beet.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/ipv6/xfrm6_mode_beet.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/ipv6/ipcomp6.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/ipv6/ipcomp6.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/ipv6/xfrm6_mode_tunnel.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/ipv6/xfrm6_mode_tunnel.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/ipv6/xfrm6_tunnel.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/ipv6/xfrm6_tunnel.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/ipv6/sit.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/ipv6/sit.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/ipv6/xfrm6_mode_transport.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/ipv6/xfrm6_mode_transport.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/ipv6/esp6.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/ipv6/esp6.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/ipv6/tunnel6.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/ipv6/tunnel6.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/ipv6/ip6_tunnel.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/ipv6/ip6_tunnel.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/ipv6/mip6.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/ipv6/mip6.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/ipv6/ipv6.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/ipv6/ipv6.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/net/ipv6/ah6.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/net/ipv6/ah6.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/fs/nfs/nfs.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/fs/nfs/nfs.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/fs/exportfs/exportfs.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/fs/exportfs/exportfs.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/fs/nfsd/nfsd.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/fs/nfsd/nfsd.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/fs/nls/nls_utf8.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/fs/nls/nls_utf8.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/fs/fuse/fuse.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/fs/fuse/fuse.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/fs/cifs/cifs.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/fs/cifs/cifs.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/fs/nfs_common/nfs_acl.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/fs/nfs_common/nfs_acl.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/kernel/fs/lockd/lockd.ko:system/lib/modules/2.6.35.6-cyanogenmod/kernel/fs/lockd/lockd.ko \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.ieee1394map:system/lib/modules/2.6.35.6-cyanogenmod/modules.ieee1394map \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.order:system/lib/modules/2.6.35.6-cyanogenmod/modules.order \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.ofmap:system/lib/modules/2.6.35.6-cyanogenmod/modules.ofmap \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.alias.bin:system/lib/modules/2.6.35.6-cyanogenmod/modules.alias.bin \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.ccwmap:system/lib/modules/2.6.35.6-cyanogenmod/modules.ccwmap \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.usbmap:system/lib/modules/2.6.35.6-cyanogenmod/modules.usbmap \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.isapnpmap:system/lib/modules/2.6.35.6-cyanogenmod/modules.isapnpmap \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.symbols:system/lib/modules/2.6.35.6-cyanogenmod/modules.symbols \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.dep.bin:system/lib/modules/2.6.35.6-cyanogenmod/modules.dep.bin \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.dep:system/lib/modules/2.6.35.6-cyanogenmod/modules.dep \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.symbols.bin:system/lib/modules/2.6.35.6-cyanogenmod/modules.symbols.bin \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.pcimap:system/lib/modules/2.6.35.6-cyanogenmod/modules.pcimap \
    device/htc/bravoc/kernel/2.6.35.6-cyanogenmod/modules.inputmap:system/lib/modules/2.6.35.6-cyanogenmod/modules.inputmap

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/bravoc/kernel/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)
