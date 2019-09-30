# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    ims-ext-common

PRODUCT_BOOT_JARS += \
    telephony-ext \
    ims-ext-common

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ims/ims_ext_common.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/ims_ext_common.xml \
    $(LOCAL_PATH)/telephony_product_privapp-permissions-qti.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/telephony_product_privapp-permissions-qti.xml

