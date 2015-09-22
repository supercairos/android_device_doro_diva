LOCAL_PATH := device/doro/diva

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/recovery/fstab.qcom:root/fstab.qcom

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES 	+= BUILD_UTC_DATE=0
PRODUCT_NAME 			:= Liberto 825
PRODUCT_DEVICE 			:= diva
PRODUCT_BRAND 			:= Doro
PRODUCT_MODEL 			:= Diva
PRODUCT_MANUFACTURER 		:= Doro
