#
# Copyright (C) NusantaraProject
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common Octavi stuff
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

# Inherit from rosy device
$(call inherit-product, device/xiaomi/rosy/device.mk)

USE_PIXEL_CHARGING := true

# Device identifier. This must come after all inclusions
PRODUCT_NAME := octavi_rosy
PRODUCT_DEVICE := rosy
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5
PRODUCT_MANUFACTURER := Xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720
TARGET_BOOTANIMATION_HALF_RES := true

# GApps
TARGET_GAPPS_ARCH := arm64

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

OCTAVI_DEVICE_MAINTAINER := Wahid Nursidik
