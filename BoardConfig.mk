#
# Copyright (C) 2013 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

-include device/motorola/msm8226-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/msm8226-common/BoardConfigVendor.mk

LOCAL_PATH := device/motorola/peregrine

#platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOOTLOADER_BOARD_NAME := MSM8226
TARGET_CPU_VARIANT := krait 

#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

#fm radio
BOARD_HAVE_QCOM_FM := true

#TWRP
DEVICE_RESOLUTION := 720x1280

BOARD_CUSTOM_BOOTIMG_MK := device/motorola/peregrine/mkbootimg.mk
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_FSTAB := device/motorola/peregrine/rootdir/etc/fstab.qcom


# userdata 8GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 8589934592

#TWRP
DEVICE_RESOLUTION := 720x1280
TW_IGNORE_MAJOR_AXIS_0 := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_CUSTOM_POWER_BUTTON := 107

