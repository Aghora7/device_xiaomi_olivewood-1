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

# Inherit from the common Open Source configuration.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from the common LineageOS configuration.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from device.mk
$(call inherit-product, device/xiaomi/olivewood/device.mk)

PRODUCT_DEVICE := olivewood
PRODUCT_NAME := aosp_olivewood
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8A Dual
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="olivewood-user 10 QKQ1.191014.001 V11.0.5.0.QCMMIXM release-keys" \
    PRODUCT_NAME="olivewood" \
    TARGET_DEVICE="olivewood"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_GAPPS_ARCH := arm64
