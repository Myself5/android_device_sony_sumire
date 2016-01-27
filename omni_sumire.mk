# Copyright 2014 The Android Open Source Project
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

# Kernel
TARGET_KERNEL_SOURCE := kernel/sony/msm

# Screen Resolution for the Bootanimation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

TW_THEME := portrait_hdpi

# Inherit AOSP Shinano common device parts
$(call inherit-product, device/sony/sumire/aosp_e6653.mk)

# Inherit Carbon Shinano common device parts
$(call inherit-product, device/sony/kitakami-common/device_omni.mk)

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/sumire/recovery/root/etc/bootrec-device:recovery/root/etc/bootrec-device

# Override Product Name for CarbonROM
PRODUCT_NAME := omni_sumire
PRODUCT_MODEL := Xperia Z5

# Assert
TARGET_OTA_ASSERT_DEVICE := E6603,E6653,sumire
