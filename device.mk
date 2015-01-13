# Copyright 2014 The Android Open Source Project
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

# qcom common
$(call inherit-product, device/sony/qcom-common/qcom-common.mk)

SOMC_PLATFORM := yukon

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/msm8226-common/overlay

SONY_ROOT:=device/sony/msm8226-common/rootdir

PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/ueventd.yukon.rc:root/ueventd.yukon.rc \
    $(SONY_ROOT)/init.yukon.rc:root/init.yukon.rc \
    $(SONY_ROOT)/init.yukon.usb.rc:root/init.yukon.usb.rc \
    $(SONY_ROOT)/init.yukon.pwr.rc:root/init.yukon.pwr.rc \
    $(SONY_ROOT)/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(SONY_ROOT)/system/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(SONY_ROOT)/system/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(SONY_ROOT)/system/etc/init.yukon.bt.sh:system/etc/init.yukon.bt.sh \
    $(SONY_ROOT)/system/etc/init.yukon.wifi.sh:system/etc/init.yukon.wifi.sh \
    $(SONY_ROOT)/system/etc/gps.conf:system/etc/gps.conf \
    $(SONY_ROOT)/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(SONY_ROOT)/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(SONY_ROOT)/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/sony/msm8226-common/boot/bootrec-device:recovery/bootrec-device

# Copy extra files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# NFC
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(SONY_ROOT)/system/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

#Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8226 \
    audio.primary.msm8226 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libacdbloader \
    libacdbmapper \
    libaudcal \
    libdiag

# for audio.primary.msm8226
PRODUCT_PACKAGES += \
    libtinyalsa \
    libtinycompress \
    libaudioroute \
    audiod \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing

# Time
PRODUCT_PACKAGES += \
    libtime_genoff

#GFX
PRODUCT_PACKAGES += \
    copybit.msm8226 \
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    memtrack.msm8226 \
    libgenlock \
    libqdutils \
    libqdMetaData

#lights
PRODUCT_PACKAGES += \
    lights.yukon

# NFC packages
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    Tag \
    nfc_nci.pn54x.default


# Power
PRODUCT_PACKAGES += \
    power.qcom

#GPS
PRODUCT_PACKAGES += \
    libloc_api_v02 \
    libloc_adapter \
    libloc_eng \
    libgps.utils \
    gps.msm8226

#Wifi
PRODUCT_PACKAGES += \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

#Misc
PRODUCT_PACKAGES += \
    libmiscta \
    libta \
    tad_static \
    rmt_storage \
    ta_qmi_service \
    ta2bin

#OSS
PRODUCT_PACKAGES += \
    thermanager \
    wcnss_addr \
    bt_addr

#Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck

# Extract recovery ramdisks
PRODUCT_PACKAGES += \
    extract_elf_ramdisk

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Platform specific properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqc-opt.so

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.audio.fluence.voicecall=true \
    af.resampler.quality=4 \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=true \
    use.voice.path.for.pcm.voip=true \
    av.offload.enable=true \
    av.streaming.offload.enable=true \
    audio.offload.pcm.enable=true \
    persist.sys.media.use-awesome=true

# msm8226 common
$(call inherit-product, vendor/sony/msm8226-common/msm8226-common-vendor.mk)