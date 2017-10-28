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

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/androidx/overlay/common

# Google sounds
include vendor/androidx/google/GoogleAudio.mk
