#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=bravoc
MANUFACTURER=htc

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/akmd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/akmd
chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/akmd
adb pull /system/bin/parse_radio_log ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/parse_radio_log
chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/parse_radio_log
adb pull /system/etc/AudioBTID.csv ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/AudioBTID.csv
adb pull /system/etc/firmware/bcm4329.hcd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bcm4329.hcd
adb pull /system/etc/firmware/default.acdb ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/default.acdb
adb pull /system/etc/firmware/default_mos.acdb ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/default_mos.acdb
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/yamato_pfp.fw
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/yamato_pm4.fw
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libEGL_adreno200.so
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv1_CM_adreno200.so
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv2_adreno200.so
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libq3dtools_adreno200.so
adb pull /system/lib/hw/gps.bravoc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps.bravoc.so
adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libcamera.so
adb pull /system/lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libgsl.so
adb pull /system/lib/libhtc_acoustic.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libhtc_acoustic.so
adb pull /system/lib/libhtc_ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libhtc_ril.so
adb pull /system/lib/liboemcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/liboemcamera.so
adb pull /system/lib/libOmxVdec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libOmxVdec.so
adb pull /system/lib/libwebkitaccel.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libwebkitaccel.so

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libwebkitaccel.so:obj/lib/libwebkitaccel.so

# All the blobs necessary for bravoc
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/akmd:system/bin/akmd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/parse_radio_log:system/bin/parse_radio_log \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/AudioBTID.csv:system/etc/AudioBTID.csv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bcm4329.hcd:system/etc/firmware/bcm4329.hcd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/default.acdb:system/etc/firmware/default.acdb \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/default_mos.acdb:system/etc/firmware/default_mos.acdb \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps.bravoc.so:system/lib/hw/gps.bravoc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libhtc_ril.so:system/lib/libhtc_ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxVdec.so:system/lib/libOmxVdec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libwebkitaccel.so:/system/lib/libwebkitaccel.so
EOF

./setup-makefiles.sh
