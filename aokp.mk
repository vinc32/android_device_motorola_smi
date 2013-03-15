# Inherit device configuration for VZW Droid RAZR.
$(call inherit-product, device/motorola/smi/full_smi.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/smi/overlay/aokp

# Setup device specific product configuration.
PRODUCT_NAME := aokp_smi
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := smi
PRODUCT_DEVICE_PREFIX := cdma
PRODUCT_MODEL := XT890
PRODUCT_MANUFACTURER := motorola
PRODUCT_RELEASE_NAME := DROID RAZR I
PRODUCT_SFX := vzw

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}:${PLATFORM_VERSION}/${BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE}-user ${PLATFORM_VERSION} ${BUILD_ID} ${DATE} release-keys" \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE= \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_540_960.zip:system/media/bootanimation.zip

