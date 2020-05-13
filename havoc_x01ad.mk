# Copyright (C) 2019 The Lineage Project
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

$(call inherit-product, device/asus/x01ad/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/havoc/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := havoc_x01ad
PRODUCT_DEVICE := x01ad
PRODUCT_BRAND := Asus
PRODUCT_MODEL := Zenfone Max M2
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8953_64-user 9 WW_Phone-201905221734 44 release-keys"
# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "asus/WW_X01AD/ASUS_X01A_1:9/WW_Phone-201905221734/16.2018.1905.44-20190522:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-asus
#TARGET_PREBUILT_KERNEL := kernel/asus/x01ad/zImage
#PRODUCT_COPY_FILES += \
	#$(TARGET_PREBUILT_KERNEL):kernel/asus/x01ad/zImage
