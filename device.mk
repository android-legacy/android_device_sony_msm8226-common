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
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

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
    libaudioalsa \
    libdiag

# for audio.primary.msm8226
PRODUCT_PACKAGES += \
    libtinyalsa \
    libtinycompress \
    libaudioroute


#Time
PRODUCT_PACKAGES += \
   libtime_genoff

#GFX
PRODUCT_PACKAGES += \
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    memtrack.msm8226 \
    copybit.msm8226 \
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
    power.yukon

#GPS
PRODUCT_PACKAGES += \
    libloc_api_v02 \
    libloc_adapter \
    libloc_eng \
    libgps.utils \
    gps.msm8226

#Wifi
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg \
    libqsap_sdk \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PROPERTY_OVERRIDES += \
    wlan.driver.ath=0

PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf

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

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    make_ext4fs \
    mkfs.f2fs \
    resize2fs \
    setup_fs

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Extract recovery ramdisks
PRODUCT_PACKAGES += \
    extract_elf_ramdisk

# Platform specific properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

# msm8226 common
$(call inherit-product, vendor/sony/msm8226-common/msm8226-common-vendor.mk)
