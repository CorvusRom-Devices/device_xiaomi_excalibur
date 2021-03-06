#
# Copyright (C) 2021 The Android Open-Source Project
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

DEVICE_PATH := device/xiaomi/excalibur

# Inherit from sm7125-common
include device/xiaomi/sm7125-common/BoardConfigCommon.mk

# Inherit proprietary blobs
-include vendor/xiaomi/excalibur/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := excalibur

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_atoll
TARGET_RECOVERY_DEVICE_MODULES := libinit_atoll

# OTA assert
TARGET_OTA_ASSERT_DEVICE := excalibur
