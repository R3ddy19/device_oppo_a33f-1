# Copyright (C) 2015-2017 The CyanogenMod Project
# Copyright (C) 2017, The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/oppo/a33f/device.mk)
$(call inherit-product, vendor/lineage/config/common_mini_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Assert
TARGET_OTA_ASSERT_DEVICE := a33f,A33F,A33f,msm8916

TARGET_VENDOR := Oppo
PRODUCT_DEVICE := a33f
PRODUCT_NAME := lineage_a33f
BOARD_VENDOR := Oppo
PRODUCT_BRAND := Oppo
PRODUCT_MODEL := A33F
PRODUCT_MANUFACTURER := Oppo

# Device Identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
     PRODUCT_MODEL="OPPO A33F" \
     PRODUCT_NAME="A33F" \
     PRODUCT_DEVICE="A33F"

PRODUCT_PROPERTY_OVERRIDES += \
     ro.build.product=A33F

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="A33F-user 5.1.1 LMY47V eng.xvae.20201021 release-keys"

BUILD_FINGERPRINT := Oppo/A33F/A33F:5.1.1 LMY47V eng.xvae.20201021 release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Trust
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# APN(s)
PRODUCT_COPY_FILES += device/oppo/a33f/apns-conf.xml:system/etc/apns-conf.xml
