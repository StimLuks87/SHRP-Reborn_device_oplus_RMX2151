##*************************************************##
#
# Copyright (C) 2024 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#
##*************************************************##

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

##** Inherit from PBRP-common stuff, if building PBRP.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

##** Inherit from TWRP-common stuff, if building TWRP.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

##** Inherit from RMX2155L1 device **##
$(call inherit-product, device/oplus/RMX2155L1/device.mk)

##** Device Information **##
PRODUCT_DEVICE := RMX2155L1
PRODUCT_NAME := pb_$(PRODUCT_DEVICE)
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 7
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_RELEASE_NAME := RMX2155

PRODUCT_SYSTEM_NAME := RMX2155
PRODUCT_SYSTEM_DEVICE := RMX2155L1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    PRODUCT_NAME=$(PRODUCT_SYSTEM_NAME) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME) \

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_MANUFCATURER)
##************************************************************************##