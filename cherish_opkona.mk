#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonades device
$(call inherit-product, device/oneplus/lemonades/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# FOD animations
EXTRA_UDFPS_ANIMATIONS := true

PRODUCT_NAME := cherish_opkona
PRODUCT_DEVICE := opkona
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := kona

# Rom Specific Flags
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true
WITH_GAPPS := true
TARGET_USES_BLUR := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGER_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_EXCLUDE_MATLOG := true
PRODUCT_SYSTEM_NAME := OnePlus9R
PRODUCT_SYSTEM_DEVICE := OnePlus9R

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus9R_IND-user 13 RKQ1.211119.001 R.eea0db-2-1 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus9R_IND/OnePlus9R:13/RKQ1.211119.001/R.eea0db-2-1:user/release-keys
