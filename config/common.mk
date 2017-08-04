PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/androidx/overlay/common
