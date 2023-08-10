#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_HARDWARE := lime

# include sm6115-common
include device/xiaomi/sm6115-common/common.mk

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/lime/lime-vendor.mk)
