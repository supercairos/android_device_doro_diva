LOCAL_PATH := device/doro/diva

# Release name
PRODUCT_RELEASE_NAME := Diva

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := diva
PRODUCT_NAME := cm_diva
PRODUCT_BRAND := doro
PRODUCT_MODEL := diva
PRODUCT_MANUFACTURER := doro
