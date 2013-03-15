$(call inherit-product, device/motorola/smi/full_smi.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/smi/overlay/cm

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=XT890_rtcoreeu TARGET_DEVICE=smi BUILD_FINGERPRINT="motorola/XT890_motorola/smi:4.2.1/9.8.2I-50_SMI-26:user/release-keys" PRIVATE_BUILD_DESC="XT890_emara-user 4.1.2 9.8.2I-50_SMI-26 1358465787 release-keys"

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

PRODUCT_NAME := XT890_rtcoreeu
PRODUCT_DEVICE := smi

