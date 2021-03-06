#
# Copyright (C) 2020 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineagePlus stuff
$(call inherit-product, vendor/lineage/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true

# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_bitra
PRODUCT_DEVICE := bitra
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3370
PRODUCT_MANUFACTURER := realme

# LineagePlus flags
BUILD_TYPE := OFFICIAL-BETA
TARGET_INCLUDE_GAPPS := true
TARGET_INCLUDE_LAWNCHAIR = true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
PLUS_MAINTAINER := cristianvaz

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RE879AL1 \
    TARGET_PRODUCT=RMX3370 \
    PRIVATE_BUILD_DESC="redfin-user-12-SQ3A.220705.003.A1-8672226-release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:12/SQ3A.220705.003.A1/8672226:user/release-keys
