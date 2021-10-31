#
# Copyright (C) 2018-2020 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from common.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Sony
PRODUCT_DEVICE := griffin
PRODUCT_MANUFACTURER := Sony
PRODUCT_NAME := arrow_griffin
PRODUCT_MODEL := Xperia 1

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

TARGET_VENDOR_PRODUCT_NAME := griffin

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="J9110_CN-user 11 55.2.A.4.154 055002A004015404257406098 release-keys"

BUILD_FINGERPRINT := Sony/J9110_CN/J9110:11/55.2.A.4.154/055002A004015404257406098:user/release-keys
