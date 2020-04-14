# Inherit common Legion stuff
$(call inherit-product, vendor/legion/config/common.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
