#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sakura_india device
$(call inherit-product, device/xiaomi/sakura_india/device.mk)

PRODUCT_DEVICE := sakura_india
PRODUCT_NAME := omni_sakura_india
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi 6 Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sakura_india-user 8.1.0 OPM1.171019.019 V10.2.4.0.ODMMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/sakura_india/sakura_india:8.1.0/OPM1.171019.019/V10.2.4.0.ODMMIXM:user/release-keys
