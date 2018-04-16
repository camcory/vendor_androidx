# Inherit common product files.
$(call inherit-product, vendor/androidx/config/common.mk)

# Inherit AOSP device configuration for berkeley.
$(call inherit-product, device/huawei/berkeley/aosp_berkeley.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_NAME := androidx_berkeley
PRODUCT_DEVICE := berkeley
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Honor View 10
