## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := WM8850

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/WonderMedia/WM8850/device_WM8850.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := WM8850
PRODUCT_NAME := cm_WM8850
PRODUCT_BRAND := WonderMedia
PRODUCT_MODEL := WM8850
PRODUCT_MANUFACTURER := WonderMedia
