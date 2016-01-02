# Copyright (C) 2014 The CyanogenMod Project
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

# Resolution
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Kernel properties
TARGET_KERNEL_SOURCE := kernel/sony/msm
TARGET_KERNEL_CONFIG := cm_wukong_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := D2533,wukong,tianchi

# TWRP Recovery
DEVICE_RESOLUTION := 720x1280
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/wukong/recovery/root/etc/bootrec-device:recovery/root/etc/bootrec-device \
    device/sony/wukong/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab

# Recovery
#TARGET_RECOVERY_FSTAB := device/sony/wukong/rootdir/fstab.yukon
# Recovery
TARGET_RECOVERY_FSTAB := device/sony/wukong/rootdir/fstab.yukon

# Inherit from wukong device
$(call inherit-product, device/sony/wukong/aosp_d2533.mk)

# Inherit from common resources
$(call inherit-product, device/sony/common/resources.mk)

# Inherit CM common stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

SOMC_CFG_SENSORS_ACCEL_BMA250 := yes
SOMC_CFG_SENSORS_COMPASS_AK8963 := yes
SOMC_CFG_SENSORS_LIGHT_LIBALS := yes

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2533 \
    BUILD_FINGERPRINT=Sony/D2533/D2533:5.1.1/19.4.A.0.182/26220503:user/release-keys \
    PRIVATE_BUILD_DESC="D2533-user 5.1.1 19.4.A.0.182 26220503 release-keys"


PRODUCT_NAME := cm_wukong
PRODUCT_DEVICE := wukong
