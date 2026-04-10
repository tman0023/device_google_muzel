#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Whether the device supports Fingerprint On Display
TARGET_CUSTOM_UDFPS := true

# Whether Including Google Apps
WITH_GMS := true

PRODUCT_CHECK_PREBUILT_MAX_PAGE_SIZE := false

# Inherit device configuration
DEVICE_CODENAME := frankel
DEVICE_PATH := device/google/muzel
VENDOR_PATH := vendor/google/frankel
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 10
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 2424
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="frankel-user 16 BP4A.260205.001 14624666 release-keys" \
    BuildFingerprint=google/frankel/frankel:16/BP4A.260205.001/14624666:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)

# Artifact path requirements
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/media/bootanimation.zip \
    system/etc/permissions/privapp-permissions-google-system.xml \
    system/etc/sysconfig/google-hiddenapi-package-allowlist.xml
BUILD_BROKEN_PREBUILT_ELF_FILES := true

TARGET_PIXEL_BOOT_ANIMATION_RES := 1080

