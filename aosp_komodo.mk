#
# SPDX-FileCopyrightText: 2021 The Android Open-Source Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/google/zumapro/aosp_common.mk)
$(call inherit-product, device/google/caimito/device-komodo.mk)

PRODUCT_NAME := aosp_komodo
PRODUCT_DEVICE := komodo
PRODUCT_MODEL := AOSP on komodo
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Google
