# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2021 The LineageOS Project
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

DEVICE_PATH := device/samsung/klteactivexx
COMMON_PATH := device/samsung/msm8974-common

# inherit from common klte
include device/samsung/msm8974-common/BoardConfigCommon.mk

# Bluetooth
BOARD_CUSTOM_BT_CONFIG := $(COMMON_PATH)/bluetooth/vnd_klte.txt
BOARD_HAVE_SAMSUNG_BLUETOOTH := true

# Build Fingerprint
BUILD_FINGERPRINT := samsung/klteactivexx/klteactive:5.0/LRX21T/G870FXXU1BQE1:user/release-keys

# Kernel
TARGET_KERNEL_CONFIG := lineage_klteactivexx_defconfig

# OTA
TARGET_OTA_ASSERT_DEVICE := klteactivexx,klteattactive,klte

# Partition
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2411724800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2411724800

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../$(COMMON_PATH)/recovery/recovery_keys.c

# Include
TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/klte-include

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_klteactivexx

# NFC
include $(COMMON_PATH)/nfc/pn547/board.mk

# Radio/RIL
include $(COMMON_PATH)/radio/single/board.mk

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/klteactivexx/releasetools

# inherit from the proprietary version
include vendor/samsung/klteactivexx/BoardConfigVendor.mk
include vendor/samsung/klte-common/BoardConfigVendor.mk
