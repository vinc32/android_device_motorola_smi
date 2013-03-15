PRODUCT_COPY_FILES := \
    device/motorola/smi/apns-conf.xml:system/etc/apns-conf.xml

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit from smi device
$(call inherit-product, device/motorola/smi/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_XT890_rtcoreeu
PRODUCT_DEVICE := smi
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_MODEL := XT890
