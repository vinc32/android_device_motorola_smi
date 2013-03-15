PRODUCT_MAKEFILES := $(LOCAL_DIR)/full_smi.mk
ifeq ($(TARGET_PRODUCT),aokp_smi)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/aokp.mk
endif
ifeq ($(TARGET_PRODUCT),cna_smi)
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/cna.mk
endif
