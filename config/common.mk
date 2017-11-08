PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable ADB authentication
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/androidx/build/tools/backuptool.sh:install/bin/backuptool.sh \
    vendor/androidx/build/tools/backuptool.functions:install/bin/backuptool.functions \
    vendor/androidx/build/tools/50-custom.sh:system/addon.d/50-custom.sh

PRODUCT_PACKAGES += \
    AndroidDarkThemeOverlay \
    SettingsDarkThemeOverlay

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/androidx/overlay/common

# Google sounds
include vendor/androidx/google/GoogleAudio.mk
