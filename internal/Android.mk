ifeq ($(TARGET_PROVIDES_TELEPHONY_EXT),)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_AIDL_INCLUDES := $(LOCAL_PATH)/src/org
LOCAL_SRC_FILES := $(call all-java-files-under, src/org) \
    $(call all-Iaidl-files-under, src/org) \
    $(call all-logtags-files-under, src/org)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := telephony-ext
LOCAL_PRIVATE_PLATFORM_APIS := true
#LOCAL_SDK_VERSION := system_current

include $(BUILD_JAVA_LIBRARY)

# Include subdirectory makefiles
# ============================================================
include $(call all-makefiles-under,$(LOCAL_PATH))

endif
