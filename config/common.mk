PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.substratum.verified=true \
    ro.build.selinux=1

# Disable ADB authentication
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/androidx/build/tools/backuptool.sh:install/bin/backuptool.sh \
    vendor/androidx/build/tools/backuptool.functions:install/bin/backuptool.functions \
    vendor/androidx/build/tools/50-custom.sh:system/addon.d/50-custom.sh

# Latin IME lib
ifneq ($(filter shamu,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/androidx/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so
else
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so \
    vendor/androidx/prebuilt/common/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinimegoogle.so
endif

# Enable SIP and VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/androidx/overlay/common

# Google sounds
include vendor/androidx/google/GoogleAudio.mk

# Packages
include vendor/androidx/config/products.mk
