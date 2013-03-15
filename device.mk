DEVICE_FOLDER := device/motorola/smi

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/motorola/smi/smi-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/motorola/smi/overlay/aosp

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# IDC
PRODUCT_COPY_FILES += $(DEVICE_FOLDER)/idc/atmxt-i2c.idc:system/usr/idc/atmxt-i2c.idc

# Media config
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/media_profiles.xml:system/etc/media_profiles.xml

# Radio and Telephony
PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_PROVISIONED=1 \
    ro.config.svlte1x=true \
    ro.cdma.subscribe_on_ruim_ready=true \
    persist.radio.no_wait_for_card=1

# copy all kernel modules under the "modules" directory to system/lib/modules
#PRODUCT_COPY_FILES += $(shell \
#    find device/motorola/scorpion_mini/modules -name '*.ko' \
#    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
#    | tr '\n' ' ')

#ifeq ($(TARGET_PREBUILT_KERNEL),)
#LOCAL_KERNEL := device/motorola/scorpion_mini/kernel
#else
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

# Inherit from msm8960-common
$(call inherit-product, device/motorola/smi-common/smi-common.mk)
# Inherit cdma specific stuff
$(call inherit-product-if-exists, vendor/motorola/smi-common/smi-common-vendor.mk)
# Camera and GPS blobs
$(call inherit-product-if-exists, vendor/motorola/scorpion_mini/smi_jb_camera.mk)
$(call inherit-product-if-exists, vendor/motorola/scorpion_mini/smi_42_gps.mk)
