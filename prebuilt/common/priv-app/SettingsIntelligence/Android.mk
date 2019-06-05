LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := SettingsIntelligence
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_SRC_FILES := SettingsIntelligence.apk
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)
