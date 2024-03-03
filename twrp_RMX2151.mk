##************************************************************************##
# Copyright (C) 2024 Team Win Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
##************************************************************************##
##** Device Information **##
PRODUCT_DEVICE := RMX2151
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := oplus
PRODUCT_MODEL := RMX2151
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_RELEASE_NAME := RMX2151

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=RMX2151 \
    BUILD_PRODUCT=RMX2151 \
    TARGET_DEVICE=RMX2151L1 

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

##** Configure gsi_keys.mk **##
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

##** Enable updating of APEXes **##
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

##** Inherit from PBRP-common stuff, if building PBRP.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

##** Inherit from TWRP-common stuff, if building TWRP.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

##** Inherit from RMX2151 device **##
$(call inherit-product, device/oplus/RMX2151/device.mk)

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_MANUFCATURER)
##************************************************************************##
