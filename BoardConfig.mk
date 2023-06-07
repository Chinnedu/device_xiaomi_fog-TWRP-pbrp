#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/fog

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    system \
    system_ext \
    vendor \
    product
 BOARD_USES_RECOVERY_AS_BOOT := true
               
# Architecture
 TARGET_ARCH := arm64
 TARGET_ARCH_VARIANT := armv8-a
 TARGET_CPU_ABI := arm64-v8a
 TARGET_CPU_ABI2 := 
 TARGET_CPU_VARIANT := generic
 TARGET_CPU_VARIANT_RUNTIME := generic
 TARGET_COPY_OUT_SYSTEM_EXTARGET_2ND_ARCH := arm

 TARGET_2ND_ARCH_VARIANT := armv7-a-neon
 TARGET_2ND_CPU_ABI := armeabi-v7a
 TARGET_2ND_CPU_ABI2 := armeabi
 TARGET_2ND_CPU_VARIANT := generic
 TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a9
               
# APEX
 DEXPREOPT_GENERATE_APEX_IMAGE := true
                
# Bootloader
 TARGET_BOOTLOADER_BOARD_NAME := fog
 TARGET_NO_BOOTLOADER := true
               
# Kernel
 BOARD_BOOTIMG_HEADER_VERSION := 3
 BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
 BOARD_KERNEL_IMAGE_NAME := Image
 TARGET_NO_KERNEL_SOURCE := true
        
# Kernel - prebuilt
 TARGET_FORCE_PREBUILT_KERNEL := true
 ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
 TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
 endif
               
# Partitions
 BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
 BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663296
 BOARD_HAS_LARGE_FILESYSTEM := true
 BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
 BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
 BOARD_SYSTEMIMAGE_PARTITION_SIZE :=9126805504
 BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
 TARGET_COPY_OUT_VENDOR := vendor
 BOARD_SUPER_PARTITION_SIZE := 9126805504 # TODO: Fix hardcoded value
 BOARD_SUPER_PARTITION_GROUPS := xiaomi_dynamic_partitions
 BOARD_XIAOMI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product
 BOARD_XIAOMI_DYNAMIC_PARTITIONS_SIZE := 9122611200 # TODO: Fix hardcoded value
                
# Platform
 TARGET_BOARD_PLATFORM := bengal
                
# Recovery
 TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
 TARGET_USERIMAGES_USE_EXT4 := true
 TARGET_USERIMAGES_USE_F2FS := true
               
# Security patch level
 VENDOR_SECURITY_PATCH := 2021-08-01
               
# Verified Boot
 BOARD_AVB_ENABLE := true
 BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
               
# Hack: prevent anti rollback
 PLATFORM_SECURITY_PATCH := 2099-12-31
 VENDOR_SECURITY_PATCH := 2099-12-31
 PLATFORM_VERSION := 16.1.0

# Bluetooth
 TARGET_FWK_SUPPORTS_FULL_VALUEADDS := true
 TARGET_USE_QTI_BT_STACK := true
                
# Bootloader
 TARGET_BOOTLOADER_BOARD_NAME := bengal
 TARGET_NO_BOOTLOADER := true
                
# Build Hack
 BUILD_BROKEN_DUP_RULES := true
 BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
                
# Display
 TARGET_SCREEN_DENSITY := 320
                
# DRM
 TARGET_ENABLE_MEDIADRM_64 := true