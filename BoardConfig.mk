#
# Copyright (C) 2018-2023 The LineageOS Project
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

# Inherit from sony sm8150-common
-include device/sony/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/sony/griffin
PREBUILT_PATH := device/sony/griffin-prebuilt

# Display
TARGET_SCREEN_DENSITY := 420

BOARD_KERNEL_CMDLINE += buildproduct=griffin
TARGET_KERNEL_CONFIG := vendor/griffin_defconfig
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_OTA_ASSERT_DEVICE := 802SO,SOV40,SO-03L

BUILD_WITHOUT_VENDOR := true
BOARD_PREBUILT_VENDORIMAGE := $(PREBUILT_PATH)/vendor.img

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4395630592
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 50569601024

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/rootdir/odm.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/rootdir/product.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/rootdir/system.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/rootdir/system_ext.prop

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# inherit from the proprietary version
-include vendor/sony/griffin/BoardConfigVendor.mk
