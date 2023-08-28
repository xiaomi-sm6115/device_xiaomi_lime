#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_HARDWARE := lime

# include sm6115-common
include device/xiaomi/sm6115-common/common.mk

# Inherit custom packages configuration
$(call inherit-product, device/xiaomi/lime/custom.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service.st \
    com.android.nfc_extras \
    libchrome.vendor \
    nfc_nci.st21nfc.default \
    NfcNci \
    SecureElement \
    Tag

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.ese.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_lemon/android.hardware.nfc.ese.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_lemon/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_lemon/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_lemon/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_lemon/android.hardware.nfc.xml

# Overlays
PRODUCT_PACKAGES += \
    CarrierConfigOverlay \
    FrameworksCustomLime \
    FrameworksResLime \
    SettingsResLime \
    SystemUIResLime \
    TelephonyResLime
    
# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/lime/lime-vendor.mk)
