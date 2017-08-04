# Inherit common androidx stuff
$(call inherit-product, vendor/androidx/config/common.mk)

# Required packages
PRODUCT_PACKAGES += \
    Launcher3
