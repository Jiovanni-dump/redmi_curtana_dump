#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from curtana device
$(call inherit-product, device/xiaomi/curtana/device.mk)

PRODUCT_DEVICE := curtana
PRODUCT_NAME := lineage_curtana
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Lite
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="curtana_in1-user 12 RKQ1.211019.001 V14.0.5.0.SJWINRF release-keys"

BUILD_FINGERPRINT := Redmi/curtana_in1/curtana:12/RKQ1.211019.001/V14.0.5.0.SJWINRF:user/release-keys
