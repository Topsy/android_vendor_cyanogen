#
# Copyright (C) 2009 The Android Open Source Project
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

# This is the top-level configuration for a US-configured CyanogenMod build
$(call inherit-product, vendor/cyanogen/products/cyanogen_hdpi.mk)
    
PRODUCT_NAME := cyanogen_sholes
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sholes-open
PRODUCT_MODEL := Droid
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES := BUILD_ID=ESE81 BUILD_DISPLAY_ID=Alldroid-1.1 BUILD_VERSION_INCREMENTAL=eng.ADCTeam.00006 BUILD_USER=ADCTeam PRODUCT_NAME=voles TARGET_DEVICE=sholes BUILD_FINGERPRINT=verizon/voles/sholes/sholes:2.1-update1/ESE81/29593:user/release-keys PRODUCT_BRAND=verizon

PRODUCT_COPY_FILES +=  \
       vendor/cyanogen/prebuilt/sholes-open/media/bootanimation.zip:system/media/bootanimation.zip \
	vendor/cyanogen/prebuilt/sholes-open/bin/recboot:system/bin/recboot \
	vendor/cyanogen/prebuilt/sholes-open/bin/rosystem:system/bin/rosystem \
	vendor/cyanogen/prebuilt/sholes-open/bin/rwsystem:system/bin/rwsystem

PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Built_with_Cyanogen_Build_Setup


include vendor/motorola/sholes-open/device_sholes.mk
