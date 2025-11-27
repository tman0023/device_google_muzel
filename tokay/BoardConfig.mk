#
# SPDX-FileCopyrightText: 2020 The Android Open-Source Project
# SPDX-License-Identifier: Apache-2.0
#

TARGET_BOARD_INFO_FILE := device/google/caimito/board-info.txt
TARGET_BOOTLOADER_BOARD_NAME := tokay
TARGET_SCREEN_DENSITY := 420

include device/google/zumapro/BoardConfig-common.mk
include device/google/caimito/sepolicy/tokay-sepolicy.mk
include device/google/caimito/wifi/BoardConfig-wifi.mk

DEVICE_PATH := device/google/caimito
VENDOR_PATH := vendor/google/tokay
include $(DEVICE_PATH)/$(TARGET_BOOTLOADER_BOARD_NAME)/BoardConfigLineage.mk
