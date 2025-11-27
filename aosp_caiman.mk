#
# SPDX-FileCopyrightText: 2021 The Android Open-Source Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/zumapro/aosp_common.mk)
$(call inherit-product, device/google/caimito/device-caiman.mk)

PRODUCT_NAME := aosp_caiman
PRODUCT_DEVICE := caiman
PRODUCT_MODEL := AOSP on caiman
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Google
