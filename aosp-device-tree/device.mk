#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    qca6234-service.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.efs.sync.sh \
    wifitest_close.sh \
    init.qcom.sh \
    wifitest.sh \
    init.qti.dcvs.sh \
    init.mi.usb.sh \
    install-recovery.sh \
    record.sh \
    loopback.sh \
    bt_close.sh \
    playback.sh \
    record_playback.sh \
    init.crda.sh \
    init.qcom.sensors.sh \
    init.mdm.sh \
    init.qti.chg_policy.sh \
    init.qti.qcv.sh \
    bluedut.sh \
    init.class_main.sh \
    init.qcom.coex.sh \
    myftm.agent.sh \
    init.qcom.post_boot.sh \
    init.qcom.usb.sh \

PRODUCT_PACKAGES += \
    fstab.default \
    init.qti.ufs.rc \
    init.target.rc \
    init.qcom.rc \
    init.qcom.factory.rc \
    init.qcom.usb.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.default:$(TARGET_COPY_OUT_RAMDISK)/fstab.default

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/curtana/curtana-vendor.mk)
