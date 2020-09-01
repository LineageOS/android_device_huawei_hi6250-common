#
# Copyright (C) 2018 The LineageOS Project
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

$(call inherit-product, vendor/huawei/hi6250-common/hi6250-common-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Properties
-include $(LOCAL_PATH)/system_prop.mk

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml

# bfm
PRODUCT_PACKAGES += \
    bfm-ctl

# Camera
PRODUCT_PACKAGES += \
    Snap

# Device init scripts
PRODUCT_PACKAGES += \
    init.hi6250.rc

# Display
PRODUCT_PACKAGES += \
    libion

# Gps
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/fingerprint.kl:system/usr/keylayout/fingerprint.kl

# LineageHw
PRODUCT_PACKAGES += \
    lineage.touch@1.0-service.hi6250

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    Tag \
    com.android.nfc_extras \
    nfc_nci.pn54x.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc_brcm_pra_L31.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/libnfc-nci.conf:system/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/nfc/libnfc_nxp_pra_L31.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/nfc/nfcscc_access.xml:system/etc/nfcscc_access.xml \
    $(LOCAL_PATH)/nfc/nfcse_access.xml:system/etc/nfcse_access.xml \

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# Radio
PRODUCT_PACKAGES += \
    qti-telephony-common

PRODUCT_BOOT_JARS += \
    telephony-ext

# Recovery
PRODUCT_PACKAGES += \
    resize2fs_static

# Trust HAL
PRODUCT_PACKAGES += \
    lineage.trust@1.0-service
