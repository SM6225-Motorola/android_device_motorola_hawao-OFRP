# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Inherit virtual_ab_ota product
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Dynamic partitions
PRODUCT_SHIPPING_API_LEVEL := 31
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Boot control hal for A/B
PRODUCT_PACKAGES += android.hardware.boot@1.1-impl-qti android.hardware.boot@1.1-impl-qti.recovery android.hardware.boot@1.1-service

# Bootctrl Bin
PRODUCT_PACKAGES += \
        bootctl
RECOVERY_BINARY_SOURCE_FILES += $(TARGET_OUT_EXECUTABLES)/bootctl

# Blacklist
PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.bootimage.build.date.utc ro.build.date.utc

# Copy modules for depmod
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*.ko,$(DEVICE_PATH)/recovery/root/vendor/lib/modules/1.1,$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1.1)

# Crypto
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe