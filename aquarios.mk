#
# Copyright 2019 AquariOS
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common AquariOS stuff.
$(call inherit-product, vendor/aquarios/configs/aquarios_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
#    PRIVATE_BUILD_DESC="bullhead-user 8.1.0 OPM7.181105.004 5038062 release-keys"

#BUILD_FINGERPRINT := google/bullhead/bullhead:8.1.0/OPM7.181105.004/5038062:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

# Google property overides
#PRODUCT_PROPERTY_OVERRIDES += \
    #ro.control_privapp_permissions=permissive \
    #ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    #ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    #ro.com.google.clientidbase=android-google \
    #ro.error.receiver.system.apps=com.google.android.gms \
    #ro.setupwizard.enterprise_mode=1 \
    #ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    #ro.setupwizard.rotation_locked=true \
    #ro.opa.eligible_device=true
