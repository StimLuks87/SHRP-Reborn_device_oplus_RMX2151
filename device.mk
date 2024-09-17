##*************************************************##
#
# Copyright (C) 2024 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#
##*************************************************##

LOCAL_PATH := device/oplus/RMX2155L1

##** Soong namespaces **##
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

##** Shipping API level **##
PRODUCT_SHIPPING_API_LEVEL := 29
BOARD_SHIPPING_API_LEVEL := 29
BOARD_API_LEVEL := 29
SHIPPING_API_LEVEL := 29

##** HACK: Set vendor patch level **##
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \
    ro.bootimage.build.date.utc=0 \
    ro.build.date.utc=0

##** Configure gsi_keys.mk **##
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

##** Property **##
PRODUCT_PROPERTY_OVERRIDES += persist.sys.fuse.passthrough.enable=true
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*.rc,$(LOCAL_PATH)/recovery/root,recovery/root)

##** Partitions && Property **##
PRODUCT_USE_DYNAMIC_PARTITIONS := true

##** Health **##
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

##** fastbootd **##
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

##** Recovery **##
PRODUCT_PACKAGES += \
    init.recovery.mt6785.rc \
    init.recovery.service.rc \
    init.trustonic.rc \
    init.recovery.usb.rc \
    ueventd.rc \
    tee.rc \
    init.aging.rc

##** Keymaster **##
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0.vendor \
    android.hardware.keymaster@4.1.vendor \
    libkeymaster4.vendor:64 \
    libkeymaster4support.vendor:64 \
    libsoft_attestation_cert.vendor:64 

##** Gatekeeper **##
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.gatekeeper@1.0-impl 

##************************************************************************##
